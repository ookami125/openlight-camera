package openlight.co.camera.view.ancillarytoolbar;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import openlight.co.camera.enums.VideoQualityMode;
import openlight.co.camera.listener.OrientationListener;
import openlight.co.camera.managers.video.VideoManager;
import openlight.co.camera.models.AncillaryModel;
import openlight.co.lib.utils.FeatureManager;
import openlight.co.lib.utils.Utils;

public class VideoAncillaryToolbar extends AncillaryToolbar implements OrientationListener {
    private static final boolean QUALITY_PROFILES_SUPPORTED;
    private static final String TAG;

    static {
        TAG = Utils.safeTag(VideoAncillaryToolbar.class);
        QUALITY_PROFILES_SUPPORTED = FeatureManager.get().getBoolean("video.quality.selector.beta", false);
    }

    private final VideoManager mVideoMgr;

    public VideoAncillaryToolbar(Context context, int i, ViewGroup parent) {
        super(context, i, parent);
        mVideoMgr = VideoManager.get();
        mFromFirstLevel = true;
        initView();
        parent.addView(mBaseControlView);
    }

    @Override
    protected AncillaryModel[] getListItems() {
        if (QUALITY_PROFILES_SUPPORTED) {
            return new AncillaryModel[]{
                getQualityProfile(),
                getGrid(),
                getSettings()
            };
        } else {
            return new AncillaryModel[]{
                getGrid(),
                getSettings()
            };
        }
    }

    @Override
    public String getListenerName() {
        return TAG;
    }

    @Override
    protected AncillaryModel getSettings() {
        return new AncillaryModel.Builder(0x7f080102, "camera_settings")
                .enabled(!mVideoMgr.isRecording())
                .build();
    }

    @Override
    public void onClick(View v) {
        if (v.getId() == 0x7f090022) {
            AncillaryToolbarAdapter.ViewHolder holder =
                    (AncillaryToolbarAdapter.ViewHolder) v.getTag();
            if (holder != null) {
                String key = holder.getKey();
                if ("quality_profile".equals(key)) {
                    mSelectedSettingKey = key;
                    updateListAdapter(getQualityProfileOptions());
                    return;
                }
                if (VideoQualityMode.QUALITY_480P.toString().equals(key)
                        || VideoQualityMode.QUALITY_720P.toString().equals(key)
                        || VideoQualityMode.QUALITY_1080P.toString().equals(key)
                        || VideoQualityMode.QUALITY_2160P.toString().equals(key)
                        || VideoQualityMode.QUALITY_HIGH.toString().equals(key)) {
                    mAdapter.updateSelectedItemAtPosition(holder.getItemPosition());
                    mCamPref.putValue("quality_profile", key);
                    return;
                }
            }
        }
        super.onClick(v);
    }

    public void resetItemsToFirstLevel() {
        if (mSelectedSettingKey != null || mTitleView.getVisibility() == View.VISIBLE) {
            mSelectedSettingKey = null;
            mTitleView.setVisibility(View.GONE);
            mSecondLevelToolBarCloseView.setVisibility(View.GONE);
            mToolbarCloseView.setVisibility(View.VISIBLE);
        }
        mAdapter.updateListItems(getListItems());
    }

    private AncillaryModel getQualityProfile() {
        String value = mCamPref.getStringValue("quality_profile");
        return new AncillaryModel.Builder(
                VideoQualityMode.fromAnyString(value).getResId(), "quality_profile")
                .enabled(!mVideoMgr.isRecording())
                .build();
    }

    private AncillaryModel[] getQualityProfileOptions() {
        VideoQualityMode[] modes = VideoQualityMode.values();
        AncillaryModel[] result = new AncillaryModel[modes.length];
        String currentValue = mCamPref.getStringValue(mSelectedSettingKey);
        for (int i = 0; i < modes.length; i++) {
            String name = modes[i].toString();
            result[i] = new AncillaryModel.Builder(modes[i].getResId(), name)
                    .isSelected(currentValue.equals(name))
                    .build();
        }
        return result;
    }
}
