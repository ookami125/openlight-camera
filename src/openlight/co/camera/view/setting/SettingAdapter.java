package openlight.co.camera.view.setting;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import openlight.co.TheaterMode.TheaterModeSettings;
import openlight.co.camera.CameraApp;
import openlight.co.camera.enums.FtuView;
import openlight.co.camera.utils.CipherManager;
import openlight.co.camera.utils.Util;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.utils.FeatureManager;

public class SettingAdapter extends RecyclerView.Adapter<SettingAdapter.SettingHolder> {
    private static final String TAG = "SettingAdapter";
    private static final String GALLERY_PACKAGE_NAME = "light.co.lightgallery";
    private static final String MANAGE_PRESETS_ACTIVITY_CLASSNAME = "light.co.gallery.view.ManagePresetsActivity";

    private final Context mContext;
    private int mMarginValue;
    private OnSettingAdapterListener mOnSettingAdapterListener;
    private final HashMap<String, Integer> mPrefKeyToIndex = new HashMap<>();
    private final List<SettingModel> mSettingList = new ArrayList<>();
    private final TheaterModeSettings mTheaterModeSettings;

    public SettingAdapter(Context context) {
        mTheaterModeSettings = TheaterModeSettings.get();
        mContext = context;
        updateData();
    }

    static boolean isSettingDisabled(SettingsId id) {
        switch (id) {
            case IN_POCKET_DETECTION: return TheaterModeSettings.get().isPocketDetectionDisabled();
            case LENS_BLOCKED_DETECTION: return TheaterModeSettings.get().isLensBlockedAlertDisabled();
            case ENCRYPT_IMAGES: return !CipherManager.get().hasKey();
            default: return false;
        }
    }

    private void populateList() {
        for (SettingsId id : SettingsId.values()) {
            SettingModel model = createModel(id);
            if (model != null) {
                mPrefKeyToIndex.put(model.getPreferenceKey(), id.ordinal());
                mSettingList.add(model);
            }
        }
        notifyDataSetChanged();
    }

    SettingModel createModel(SettingsId id) {
        if (id.isImplemented()) {
            SettingModel model = id.getSettingModel();
            model.initValue();
            return model;
        }
        return null;
    }

    @Override
    public int getItemCount() {
        return mSettingList.size();
    }

    int getKeyPosition(String key) {
        for (int i = 0; i < mSettingList.size(); i++) {
            if (mSettingList.get(i).getPreferenceKey().equals(key)) {
                return i;
            }
        }
        return -1;
    }

    SettingsId getSettingsIdFromIndex(int index) {
        return SettingsId.values()[index];
    }

    int indexForKey(String key) {
        Integer val = mPrefKeyToIndex.get(key);
        return val != null ? val.intValue() : -1;
    }

    @Override
    public void onBindViewHolder(final SettingHolder holder, int position) {
        final SettingModel model = (SettingModel) mSettingList.get(holder.getAdapterPosition());
        if (model == null) return;

        if (mMarginValue != 0) {
            ViewGroup.MarginLayoutParams params =
                    (ViewGroup.MarginLayoutParams) holder.parentItem.getLayoutParams();
            if (mMarginValue == 48 || mMarginValue == 240) {
                params.setMargins(mMarginValue - 24, 0, mMarginValue - 24, 0);
            }
            holder.parentItem.setLayoutParams(params);
        }

        int iconId = model.getIconId();
        if (iconId != 0) {
            Glide.with(mContext).load(Integer.valueOf(iconId)).override(48, 48).into(holder.itemIcon);
        }

        holder.titleItem.setText(model.getTitle());

        String subtitle = model.getSubTitle();
        if (subtitle == null) {
            holder.subtitleItem.setVisibility(View.GONE);
        } else {
            holder.subtitleItem.setVisibility(View.VISIBLE);
            holder.subtitleItem.setText(subtitle);
        }

        final SettingsId settingsId = model.getSettingsId();
        int type = model.getType();

        if (type == 1) {
            holder.switchButton.setOnCheckedChangeListener(null);
            holder.switchButton.setVisibility(View.VISIBLE);
            holder.optionText.setVisibility(View.GONE);

            boolean disabled = isSettingDisabled(settingsId);
            boolean checked;
            if (disabled) {
                holder.parentItem.setAlpha(0.3f);
                checked = false;
            } else {
                holder.parentItem.setAlpha(1.0f);
                checked = "on".equals(model.getSettingsValue());
            }
            holder.switchButton.setChecked(checked);
            holder.switchButton.setOnCheckedChangeListener((button, isChecked) -> {
                if (mOnSettingAdapterListener == null) return;
                int pos = holder.getAdapterPosition();
                SettingModel m = (SettingModel) mSettingList.get(pos);
                boolean isDisabled = isSettingDisabled(m.getSettingsId());
                boolean finalChecked = isChecked;
                if (isDisabled) {
                    finalChecked = false;
                    button.setChecked(false);
                }
                mOnSettingAdapterListener.onSwitchTypeSelected(finalChecked, pos, m);
            });
        } else if (type == 3) {
            boolean theaterMode = (settingsId == SettingsId.HAPTIC
                            && mTheaterModeSettings.isHapticFeedbackDisabled())
                    || (settingsId == SettingsId.AUDIO
                            && mTheaterModeSettings.isAudioDisabled());
            String optionValue;
            if (theaterMode) {
                holder.parentItem.setAlpha(0.3f);
                optionValue = mContext.getString(0x7f0e002a);
            } else {
                holder.parentItem.setAlpha(1.0f);
                optionValue = model.getSettingsValue();
            }
            if (settingsId != SettingsId.FTU_RESET) {
                holder.optionText.setText(optionValue);
            }
            holder.parentItem.setOnClickListener(v -> {
                if (mOnSettingAdapterListener == null) return;
                int pos = holder.getAdapterPosition();
                mOnSettingAdapterListener.onOptionClicked(pos, (SettingModel) mSettingList.get(pos));
            });
            holder.switchButton.setVisibility(View.GONE);
            holder.optionText.setVisibility(View.VISIBLE);
            holder.switchButton.setOnCheckedChangeListener(null);
        } else {
            holder.switchButton.setOnCheckedChangeListener(null);
            final View optionParent = (View) holder.optionText.getParent();
            optionParent.setOnClickListener(null);

            final boolean hasOptions = (type == 2);
            if (hasOptions || type == 4) {
                optionParent.setOnClickListener(v -> {
                    if (mOnSettingAdapterListener == null) return;
                    if (hasOptions) {
                        int pos = holder.getAdapterPosition();
                        mOnSettingAdapterListener.onDialogOpen(
                                (SettingModel) mSettingList.get(pos));
                    } else {
                        mOnSettingAdapterListener.onStartActivity(settingsId.getIntent());
                    }
                });
            }
            holder.switchButton.setVisibility(View.GONE);
            holder.optionText.setVisibility(View.GONE);
        }
    }

    @Override
    public SettingHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext())
                .inflate(0x7f0b0065, parent, false);
        return new SettingHolder(view);
    }

    void setMarginValue(int value) {
        mMarginValue = value;
        notifyDataSetChanged();
    }

    void setOnSettingAdapterListener(OnSettingAdapterListener listener) {
        mOnSettingAdapterListener = listener;
    }

    void updateData() {
        if (mContext == null) return;
        mSettingList.clear();
        populateList();
    }

    void updateItemSelected(String value, int position) {
        if (position == -1) return;
        ((SettingModel) mSettingList.get(position)).setSettingsValue(value);
        notifyItemChanged(position);
    }

    public interface OnSettingAdapterListener {
        void onDialogOpen(SettingModel model);
        void onOptionClicked(int position, SettingModel model);
        void onStartActivity(Intent intent);
        void onSwitchTypeSelected(boolean isChecked, int position, SettingModel model);
    }

    static class SettingHolder extends RecyclerView.ViewHolder {
        final ViewGroup parentItem;
        final ImageView itemIcon;
        final Switch switchButton;
        final TextView titleItem;
        final TextView subtitleItem;
        final TextView optionText;

        SettingHolder(View view) {
            super(view);
            parentItem = (ViewGroup) view.findViewById(0x7f090135);
            itemIcon = (ImageView) view.findViewById(0x7f090136);
            switchButton = (Switch) view.findViewById(0x7f090185);
            titleItem = (TextView) view.findViewById(0x7f0900d4);
            subtitleItem = (TextView) view.findViewById(0x7f0900d3);
            optionText = (TextView) view.findViewById(0x7f090184);
        }
    }

    public enum SettingsId {
        METERING(true, 0x7f0e011d, "metering_setting", 3, 0, 0x7f030003, true) {
            @Override
            public int getIconId() {
                return Util.getMeteringIcon(CamPrefsFactory.get().getStringValue(getPreferenceKey()));
            }
        },
        ASPECT_RATIO(false, 0x7f0e0112, "aspect_ratio_setting", 3, 0, 0, true),
        VIDEO_FORMAT(false, 0x7f0e0120, "video_format", 3, 0, 0, true),
        DEPTH_EFFECT(false, 0x7f0e0114, "dof_setting", 3, 0, true),
        EXPOSURE(true, 0x7f0e0118, "hud_setting", 1, 0x7f080140, 0, false),
        DEVICE_STATUS(true, 0x7f0e0115, "device_status_setting", 1, 0x7f08013e, false),
        WHEEL_SCROLL(true, 0x7f0e011c, "wheel_inverse_scroll_setting", 1, 0x7f080141, false),
        VIEWFINDER_TIMEOUT(false, 0x7f0e0121, "device_cam_finder_timeout_setting", 3, 0, 0, true),
        HAPTIC(true, 0x7f0e011b, "device_haptic_setting", 3, 0x7f080142, 0x7f030001, true),
        AUDIO(true, 0x7f0e0113, "device_audio_setting", 3, 0x7f08013d, 0x7f030006, false),
        TOUCHSTRIP(false, 0x7f0e011f, "device_touchstrip_setting", 1, 0x7f080149, false),
        FTU_RESET(true, 0x7f0e0119, "ftu_setting", 3, 0x7f080147, 0x7f030004, null, false) {
            @Override
            public List<Integer> getOptionList() {
                return FtuView.getFtuLabelResourceIds();
            }
        },
        ACCOUNT(false, 0x7f0e0111, "account", 0, 0, false),
        ENCRYPT_IMAGES(FeatureManager.get().getBoolean("encryption_setting_displayed", true),
                0x7f0e0117, "image_encryption_setting", 1, 0x7f08013f, false) {
            @Override
            public String getSubTitle() {
                String hash = CipherManager.get().getPublicKeyHash();
                return hash == null
                        ? CameraApp.get().getString(0x7f0e004f)
                        : CameraApp.get().getString(0x7f0e0108, hash);
            }
        },
        MICROPHONE(true, 0x7f0e011e, "device_microphone_setting", 1, 0x7f080146, false),
        DREAM_PROCESSING(true, 0x7f0e0116, "dream_processing_setting", 1, 0x7f0800fd, false),
        // TODO: This requires openlight gallery app to exist
        MANAGE_PRESETS(false, 0x7f0e001f, 4, 0x7f080125,
                new Intent().setComponent(new ComponentName(
                        "light.co.lightgallery",
                        "light.co.gallery.view.ManagePresetsActivity"))),
        IN_POCKET_DETECTION(true, 0x7f0e010b, "inpocket_detection_setting", 1, 0x7f080143, false),
        LENS_BLOCKED_DETECTION(true, 0x7f0e010c, "lens_blocked_detector_setting", 1, 0x7f080144, false),
        STACKED_CAPTURE(FeatureManager.get().getBoolean("stacked.capture.selector", false),
                0x7f0e010f, "stacked_capture_state", 1, 0x7f08013a, false);

        private final boolean mIsImplemented;
        private final int mSettingsResourceId;
        private final String mPreferenceKey;
        private final int mType;
        private final int mIconId;
        private final int mOptionalListId;
        private final List<Integer> mOptionList;
        private final boolean mIsHighlighted;
        private final String mSubTitle;
        private final SettingModel mSettingModel;
        private final Intent mIntent;

        // Full constructor
        SettingsId(boolean isImplemented, int resourceId, String prefKey, int type,
                int iconId, int optionalListId, List<Integer> optionList,
                boolean isHighlighted, Intent intent) {
            mIsImplemented = isImplemented;
            mSettingsResourceId = resourceId;
            mPreferenceKey = prefKey;
            mType = type;
            mIconId = iconId;
            mOptionalListId = optionalListId;
            mOptionList = optionList;
            mIsHighlighted = isHighlighted;
            mSubTitle = null;
            mSettingModel = SettingModel.newModel(this);
            mIntent = intent;
        }

        // With optListId, without List and Intent (METERING, ASPECT_RATIO, VIDEO_FORMAT, VIEWFINDER_TIMEOUT, EXPOSURE, HAPTIC, AUDIO)
        SettingsId(boolean isImplemented, int resourceId, String prefKey, int type,
                int iconId, int optionalListId, boolean isHighlighted) {
            this(isImplemented, resourceId, prefKey, type, iconId, optionalListId, null, isHighlighted, null);
        }

        // With optListId and List, without Intent (FTU_RESET)
        SettingsId(boolean isImplemented, int resourceId, String prefKey, int type,
                int iconId, int optionalListId, List<Integer> optionList, boolean isHighlighted) {
            this(isImplemented, resourceId, prefKey, type, iconId, optionalListId, optionList, isHighlighted, null);
        }

        // Without optListId, List, Intent (most entries)
        SettingsId(boolean isImplemented, int resourceId, String prefKey, int type,
                int iconId, boolean isHighlighted) {
            this(isImplemented, resourceId, prefKey, type, iconId, 0, null, isHighlighted, null);
        }

        // Without prefKey, with Intent (MANAGE_PRESETS)
        SettingsId(boolean isImplemented, int resourceId, int type, int iconId, Intent intent) {
            this(isImplemented, resourceId, null, type, iconId, 0, null, false, intent);
        }

        public int getIconId() { return mIconId; }
        public Intent getIntent() { return mIntent; }
        public List<Integer> getOptionList() { return mOptionList; }
        public int getOptionalListId() { return mOptionalListId; }
        public String getPreferenceKey() { return mPreferenceKey; }
        public SettingModel getSettingModel() { return mSettingModel; }
        public int getSettingsResourceId() { return mSettingsResourceId; }
        public String getSubTitle() { return mSubTitle; }
        public String getTitle() { return CameraApp.get().getResources().getString(mSettingsResourceId); }
        public int getType() { return mType; }
        public boolean isImplemented() { return mIsImplemented; }
        public boolean isSelectionHighlighted() { return mIsHighlighted; }
    }
}
