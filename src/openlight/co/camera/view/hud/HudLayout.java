package openlight.co.camera.view.hud;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.EnumMap;
import openlight.co.camera.CameraApp;
import openlight.co.camera.CameraInfo;
import openlight.co.camera.CameraMode;
import openlight.co.camera.enums.OrientationConfig;
import openlight.co.camera.listener.OrientationListener;
import openlight.co.camera.managers.CameraManager;
import openlight.co.camera.managers.controls.ControlManager;
import openlight.co.camera.utils.Constants;
import openlight.co.camera.utils.Util;
import openlight.co.camera.view.rotate.OrientationsController;
import openlight.co.camera.view.rotate.RotateLayout;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.content.Prefs;
import openlight.co.lib.utils.FeatureManager;
import openlight.co.lib.utils.LogUtil;

public class HudLayout extends ControlManager implements OrientationListener {
    private static final String TAG = "HudLayout";
    private static final boolean ENABLE_VERBOSE_LOGGING;
    private static final float EV_OFFSET_TO_VALUE_FACTOR = 6.0f;
    private static final int HUD_OPEN_CLOSE_ANIMATION_DURATION = 0x64;
    private static final long MIN_EXP_FOR_FACTOR_REPRESENTATION = 0x11e1a300L;

    static {
        ENABLE_VERBOSE_LOGGING = FeatureManager.get().getBoolean("hud.logging", false);
    }

    private final Prefs mCamPref;
    private final CameraInfo mCameraInfo;
    private final Animator.AnimatorListener mCloseOutAnimationListener;
    private final Context mContext;
    private final int mDiffToolBar;
    private final String[] mExposureItems;
    private long mExposureValue;
    private final String mHighResolutionImageValue;
    private HudColor mHudColor;
    private final EnumMap<HudValue, HudData> mHudElementsMap;
    private final String mHudExposureTimeNumerator;
    private final RelativeLayout mHudLayout;
    private final View mHudLayoutView;
    private final ViewGroup mImageFragmentView;
    private boolean mIsAncillaryOpen;
    private int mIsoValue;
    private final View.OnTouchListener mOnTouchListener;

    public HudLayout(Context context, View view, boolean isAncillaryOpen) {
        super();
        mIsAncillaryOpen = false;
        mCamPref = CamPrefsFactory.get();
        mCameraInfo = CameraInfo.get();
        mHudColor = HudColor.TRANSPARENT;
        mHudElementsMap = new EnumMap<>(HudValue.class);
        mIsoValue = 0;
        mExposureValue = 0L;
        mCloseOutAnimationListener = new Animator.AnimatorListener() {
            @Override public void onAnimationEnd(Animator animator) { closeAll(); }
            @Override public void onAnimationCancel(Animator animator) {}
            @Override public void onAnimationRepeat(Animator animator) {}
            @Override public void onAnimationStart(Animator animator) {}
        };
        mOnTouchListener = new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (!mIsAncillaryOpen || event.getY() <= (float) mDiffToolBar) {
                    setHudColor();
                    setBackground();
                }
                return false;
            }
        };
        mContext = context;
        mIsAncillaryOpen = isAncillaryOpen;
        mDiffToolBar = getPixelDiff(context);
        mExposureItems = context.getResources().getStringArray(0x7f030005);
        mImageFragmentView = (ViewGroup) view;
        mHudLayoutView = LayoutInflater.from(context).inflate(0x7f0b0045, mImageFragmentView, false);
        mHudLayout = (RelativeLayout) mHudLayoutView.findViewById(0x7f0900bb);
        mHudExposureTimeNumerator = context.getString(0x7f0e00d2);
        mHighResolutionImageValue = context.getString(0x7f0e00d4);
        for (HudValue hv : HudValue.values()) {
            HudData data = new HudData();
            data.setHudUnitText(context.getString(hv.getHudUnitTextResourceId()));
            mHudElementsMap.put(hv, data);
        }
    }

    private String createDofValue() {
        return mCamPref.getStringValue("dof_val");
    }

    private String createEvValue() {
        int index = mCamPref.getIntValue("ex_index");
        Constants.ExposureCompValues ev = Constants.ExposureCompValues.forIndex(index);
        float evValueNow = (float) ev.getExposureCompensationVal() / EV_OFFSET_TO_VALUE_FACTOR;
        LogUtil.d(TAG, "evValueNow: " + evValueNow);
        return Util.formatEvValue(mContext, evValueNow);
    }

    private String createIsoValue() {
        int index = mCamPref.getIntValue("iso_index");
        return Integer.toString(Constants.SensitivityValues.forIndex(index).getSensitivityVal());
    }

    private String createResolutionValue() {
        float zoom = mCamPref.getFloatValue("zoom_value");
        int res = mCameraInfo.getFinalCaptureResolution(zoom);
        if (res > 0x34) return mHighResolutionImageValue;
        return String.valueOf(res);
    }

    private String createShutterValue() {
        int index = mCamPref.getIntValue("shutter_index");
        return mExposureItems[index];
    }

    private String createZoomValue() {
        float zoom = mCamPref.getFloatValue("zoom_value");
        return String.valueOf((int) zoom);
    }

    private void disableHudElement(ArrayList<HudValue> visible, ArrayList<HudValue> dimmed,
            ArrayList<HudValue> hidden) {
        for (HudValue hv : visible) {
            RotateLayout layout = ((HudData) mHudElementsMap.get(hv)).getHudElementLayout();
            layout.setVisibility(View.VISIBLE);
            layout.setAlpha(1.0f);
        }
        for (HudValue hv : dimmed) {
            RotateLayout layout = ((HudData) mHudElementsMap.get(hv)).getHudElementLayout();
            layout.setVisibility(View.VISIBLE);
            layout.setAlpha(0.3f);
        }
        for (HudValue hv : hidden) {
            ((HudData) mHudElementsMap.get(hv)).getHudElementLayout().setVisibility(View.GONE);
        }
    }

    private String getExposureTime(long ns) {
        if (ns < MIN_EXP_FOR_FACTOR_REPRESENTATION && ns > 0) {
            return String.format(mHudExposureTimeNumerator, Math.round(1e9 / (double) ns));
        }
        return String.format("%s", round((double) ns / 1e9));
    }

    private String getHudElementCurrentValue(HudValue hudValue) {
        switch (hudValue) {
            case EV:            return createEvValue();
            case ISO:           return createIsoValue();
            case ZOOM:          return createZoomValue();
            case SHUTTER_SPEED: return createShutterValue();
            case RESOLUTION:    return createResolutionValue();
            default:            return null;
        }
    }

    private int getPixelDiff(Context context) {
        return Util.getHeightOfScreen(context) - Util.getDimen(context, 0x7f070136);
    }

    private void initSingleHudElement(HudValue hudValue) {
        HudData data = (HudData) mHudElementsMap.get(hudValue);
        RotateLayout layout = (RotateLayout) mHudLayoutView.findViewById(hudValue.getHudElementLayoutResourceId());
        data.setHudElementLayout(layout);
        LinearLayout valueContainer = (LinearLayout) mHudLayoutView.findViewById(hudValue.getHudElementValueResourceId());
        data.setHudMarker((ImageView) valueContainer.findViewById(0x7f0900bc));
        data.setHudElementValue((TextView) valueContainer.findViewById(0x7f0900c1));
        data.setHudElementUnitLeft((TextView) valueContainer.findViewById(0x7f0900dc));
        data.setHudElementUnitTop((TextView) valueContainer.findViewById(0x7f0900d8));
    }

    private double round(double value) {
        double factor = Math.pow(10, 2);
        return Math.round(value * factor) / factor;
    }

    private void setBackground() {
        int resId = (mHudColor == HudColor.COLORED) ? 0x7f080105 : 0;
        mHudLayout.setBackgroundResource(resId);
    }

    private void setHudColor() {
        mHudColor = (mHudColor == HudColor.COLORED) ? HudColor.TRANSPARENT : HudColor.COLORED;
    }

    private void setTextColor(HudValue hudValue, boolean highlighted) {
        Resources res = CameraApp.get().getResources();
        int color = highlighted
                ? res.getColor(0x7f060091, null)
                : res.getColor(0x7f06009b, null);
        int markerResId = highlighted ? 0x7f080106 : 0;
        HudData data = (HudData) mHudElementsMap.get(hudValue);
        data.getHudElementValue().setTextColor(color);
        data.getHudElementUnitLeft().setTextColor(color);
        data.getHudElementUnitTop().setTextColor(color);
        data.getHudMarker().setImageResource(markerResId);
    }

    private void setValue(HudValue hudValue, String value) {
        TextView tv = ((HudData) mHudElementsMap.get(hudValue)).getHudElementValue();
        tv.setText("");
        tv.setText(value);
        if (ENABLE_VERBOSE_LOGGING) {
            LogUtil.v(TAG, "HUD Update " + hudValue + " : " + value);
        }
    }

    private void setValues() {
        int orientation = OrientationsController.get().getConfig().getAndroidOrientationConfiguration();
        checkAndUpdateMode();
        for (HudValue hv : HudValue.values()) {
            updateHudElementLabel(hv, orientation);
            updateHudValues();
            updateRealTime(mExposureValue, mIsoValue);
        }
        setBackground();
    }

    private void updateHudElementLabel(HudValue hudValue, int orientation) {
        HudData data = (HudData) mHudElementsMap.get(hudValue);
        TextView primaryUnit;
        if (orientation == 1) {
            primaryUnit = data.getHudElementUnitTop();
            data.getHudElementUnitLeft().setVisibility(View.GONE);
        } else {
            primaryUnit = data.getHudElementUnitLeft();
            data.getHudElementUnitTop().setVisibility(View.GONE);
        }
        primaryUnit.setVisibility(View.VISIBLE);
        primaryUnit.setText(data.getHudUnitText());
    }

    private void updateHudIndividualValue(HudValue hudValue) {
        setValue(hudValue, getHudElementCurrentValue(hudValue));
    }

    @Override
    public void addViewToFragment() {
        mImageFragmentView.addView(mHudLayoutView);
        OrientationsController.get().registerOrientationListener(this);
        mHudLayout.setOnTouchListener(mOnTouchListener);
        initChildView();
    }

    public boolean checkAndUpdateMode() {
        ArrayList<HudValue> visible = new ArrayList<>();
        ArrayList<HudValue> dimmed = new ArrayList<>();
        ArrayList<HudValue> hidden = new ArrayList<>();
        switch (CameraManager.get().getCameraMode()) {
            case AUTO:
                visible.add(HudValue.EV);
                visible.add(HudValue.ISO);
                visible.add(HudValue.SHUTTER_SPEED);
                break;
            case ISO:
                visible.add(HudValue.EV);
                visible.add(HudValue.ISO);
                dimmed.add(HudValue.SHUTTER_SPEED);
                break;
            case SHUTTER:
                visible.add(HudValue.EV);
                visible.add(HudValue.SHUTTER_SPEED);
                dimmed.add(HudValue.ISO);
                break;
            case MANUAL:
                hidden.add(HudValue.EV);
                visible.add(HudValue.ISO);
                visible.add(HudValue.SHUTTER_SPEED);
                break;
        }
        disableHudElement(visible, dimmed, hidden);
        return true;
    }

    @Override
    public void closeAll() {
        removeModeSelection();
    }

    public void closeLayoutAnimation() {
        mHudLayoutView.clearAnimation();
        ObjectAnimator anim = ObjectAnimator.ofFloat(mHudLayoutView, "translationX", 0f, -200f);
        anim.setDuration(HUD_OPEN_CLOSE_ANIMATION_DURATION);
        anim.addListener(mCloseOutAnimationListener);
        anim.start();
    }

    @Override
    public String getListenerName() {
        return HudLayout.class.getSimpleName();
    }

    @Override
    public void initChildView() {
        for (HudValue hv : HudValue.values()) {
            initSingleHudElement(hv);
        }
        OrientationConfig config = OrientationsController.get().getConfig();
        onOrientationChange(config);
        checkAndUpdateMode();
    }

    @Override
    public void onOrientationChange(OrientationConfig config) {
        for (HudValue hv : HudValue.values()) {
            HudData data = (HudData) mHudElementsMap.get(hv);
            data.getHudElementLayout().setAngle(config.getViewRotationAngle());
        }
        setValues();
    }

    public void openLayoutAnimation() {
        mHudLayoutView.clearAnimation();
        ObjectAnimator anim = ObjectAnimator.ofFloat(mHudLayoutView, "translationX", -100f, 0f);
        anim.setDuration(HUD_OPEN_CLOSE_ANIMATION_DURATION);
        anim.start();
    }

    @Override
    public void removeModeSelection() {
        if (mImageFragmentView != null) {
            mImageFragmentView.removeView(mHudLayoutView);
        }
    }

    public void removeOrientationControllerInHud() {
        OrientationsController.get().unregisterOrientationListenerWithTag(getListenerName());
    }

    public void setAlpha(boolean enabled) {
        Util.setAlpha(mHudLayout, enabled, 0.25f);
    }

    @Override
    public void setVisibility(boolean visible) {
        mHudLayoutView.setVisibility(visible ? View.VISIBLE : View.GONE);
    }

    public void updateHudItems(String selectedTitle) {
        Resources res = CameraApp.get().getResources();
        for (HudValue hv : HudValue.values()) {
            boolean highlighted = selectedTitle != null
                    && res.getString(hv.getHudElementTitle()).equals(selectedTitle);
            setTextColor(hv, highlighted);
        }
    }

    public void updateHudValues() {
        switch (CameraManager.get().getCameraMode()) {
            case AUTO:
            case ISO:
            case SHUTTER:
                updateHudIndividualValue(HudValue.EV);
                // fall through
            case MANUAL:
                updateHudIndividualValue(HudValue.ZOOM);
                updateHudIndividualValue(HudValue.RESOLUTION);
        }
    }

    public void updateRealTime(long exposureNs, int iso) {
        mIsoValue = iso;
        mExposureValue = exposureNs;
        setValue(HudValue.ISO, Integer.toString(iso));
        setValue(HudValue.SHUTTER_SPEED, getExposureTime(exposureNs));
    }

    enum HudColor {
        TRANSPARENT,
        COLORED
    }

    enum HudValue {
        ISO(0x7f0e00da, 0x7f0e00da, 0x7f0900b9, 0x7f0900ba),
        EV(0x7f0e0055, 0x7f0e00d3, 0x7f0900b7, 0x7f0900b8),
        ZOOM(0x7f0e013f, 0x7f0e00d8, 0x7f0900c2, 0x7f0900c3),
        SHUTTER_SPEED(0x7f0e0124, 0x7f0e00d7, 0x7f0900c0, 0x7f0900bf),
        RESOLUTION(0x7f0e0101, 0x7f0e00d6, 0x7f0900bd, 0x7f0900be);

        private final int mHudElementTitleResourceId;
        private final int mHudUnitTextResourceId;
        private final int mHudElementValueResourceId;
        private final int mHudElementLayoutResourceId;

        HudValue(int titleResId, int unitResId, int valueResId, int layoutResId) {
            mHudElementTitleResourceId = titleResId;
            mHudUnitTextResourceId = unitResId;
            mHudElementValueResourceId = valueResId;
            mHudElementLayoutResourceId = layoutResId;
        }

        public int getHudElementLayoutResourceId() { return mHudElementLayoutResourceId; }
        public int getHudElementTitle() { return mHudElementTitleResourceId; }
        public int getHudElementValueResourceId() { return mHudElementValueResourceId; }
        public int getHudUnitTextResourceId() { return mHudUnitTextResourceId; }
    }

    private class HudData {
        private RotateLayout mHudElementLayout;
        private TextView mHudElementUnitLeft;
        private TextView mHudElementUnitTop;
        private TextView mHudElementValue;
        private ImageView mHudMarker;
        private String mHudUnitText;

        RotateLayout getHudElementLayout() { return mHudElementLayout; }
        void setHudElementLayout(RotateLayout v) { mHudElementLayout = v; }
        TextView getHudElementUnitLeft() { return mHudElementUnitLeft; }
        void setHudElementUnitLeft(TextView v) { mHudElementUnitLeft = v; }
        TextView getHudElementUnitTop() { return mHudElementUnitTop; }
        void setHudElementUnitTop(TextView v) { mHudElementUnitTop = v; }
        TextView getHudElementValue() { return mHudElementValue; }
        void setHudElementValue(TextView v) { mHudElementValue = v; }
        ImageView getHudMarker() { return mHudMarker; }
        void setHudMarker(ImageView v) { mHudMarker = v; }
        String getHudUnitText() { return mHudUnitText; }
        void setHudUnitText(String v) { mHudUnitText = v; }
    }
}
