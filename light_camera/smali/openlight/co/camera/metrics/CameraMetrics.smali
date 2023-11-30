.class public Lopenlight/co/camera/metrics/CameraMetrics;
.super Ljava/lang/Object;
.source "CameraMetrics.java"


# static fields
.field public static final EVENT_AUTO_MODE_SELECTED:Ljava/lang/String; = "event_auto_mode_selected"

.field public static final EVENT_BACKGROUND_PROCESSING_TURNED_OFF:Ljava/lang/String; = "event_background_processing_turned_off"

.field public static final EVENT_BACKGROUND_PROCESSING_TURNED_ON:Ljava/lang/String; = "event_background_processing_turned_on"

.field public static final EVENT_CAMERA_DEVICE_ERROR:Ljava/lang/String; = "event_camera_device_error"

.field public static final EVENT_CAMERA_SESSION_ERROR:Ljava/lang/String; = "event_camera_session_error"

.field public static final EVENT_CAPTURE_BURST:Ljava/lang/String; = "event_capture_burst"

.field public static final EVENT_CAPTURE_HARD_KEY_HALF_PRESSED:Ljava/lang/String; = "event_capture_hard_key_half_pressed"

.field public static final EVENT_CAPTURE_HARD_KEY_PRESSED:Ljava/lang/String; = "event_capture_hard_key_pressed"

.field public static final EVENT_CAPTURE_SINGLE:Ljava/lang/String; = "event_capture_single"

.field public static final EVENT_CAPTURE_SOFT_KEY_PRESSED:Ljava/lang/String; = "event_capture_soft_key_pressed"

.field public static final EVENT_CAPTURE_TIMER_USED:Ljava/lang/String; = "event_capture_timer_used"

.field public static final EVENT_FOCUS_LOCKED_HW_KEY:Ljava/lang/String; = "event_focus_locked_hw_key"

.field public static final EVENT_FOCUS_LOCKED_SCREEN:Ljava/lang/String; = "event_focus_locked_screen"

.field public static final EVENT_IN_POCKET_MODE:Ljava/lang/String; = "event_in_pocket_mode"

.field public static final EVENT_LOW_BATTERY_WARNING:Ljava/lang/String; = "event_low_battery_warning"

.field public static final EVENT_MANUAL_MODE_SELECTED:Ljava/lang/String; = "event_manual_mode_selected"

.field public static final EVENT_MEDIA_RECORDER_ERROR:Ljava/lang/String; = "event_media_recorder_error"

.field public static final EVENT_MEDIA_RECORDER_INFO:Ljava/lang/String; = "event_media_recorder_info"

.field public static final EVENT_MEDIA_RECORDER_INVALID_SIZE:Ljava/lang/String; = "event_media_recorder_invalid_size"

.field public static final EVENT_MEDIA_RECORDER_START_FAILED:Ljava/lang/String; = "event_media_recorder_start_failed"

.field public static final EVENT_MEDIA_RECORDER_STOP_FAILED:Ljava/lang/String; = "event_media_recorder_stop_failed"

.field public static final EVENT_MODULES_TEMP_HOT:Ljava/lang/String; = "event_modules_temp_hot"

.field public static final EVENT_MODULES_TEMP_WARM:Ljava/lang/String; = "event_modules_temp_warm"

.field public static final EVENT_UI_ANCILLARY_CLOSED:Ljava/lang/String; = "event_ui_ancillary_closed"

.field public static final EVENT_UI_ANCILLARY_OPENED:Ljava/lang/String; = "event_ui_ancillary_opened"

.field public static final EVENT_UI_CAMERA_SETTINGS_OPENED:Ljava/lang/String; = "event_ui_camera_settings_opened"

.field public static final EVENT_UI_GALLERY_OPEN:Ljava/lang/String; = "event_ui_gallery_open"

.field private static final PROPERTY_AUTO_FOCUS_MODE:Ljava/lang/String; = "auto_focus_mode"

.field private static final PROPERTY_BURST_MODE_COUNT:Ljava/lang/String; = "burst_mode_count"

.field private static final PROPERTY_CAMERA_LOCKED:Ljava/lang/String; = "camera_locked"

.field private static final PROPERTY_CAMERA_MODE:Ljava/lang/String; = "camera_mode"

.field private static final PROPERTY_MEDIA_RECORDER_ERROR_EXTRA:Ljava/lang/String; = "media_recorder_error_extra"

.field private static final PROPERTY_MEDIA_RECORDER_ERROR_WHAT:Ljava/lang/String; = "media_recorder_error_what"

.field private static final PROPERTY_MEDIA_RECORDER_INFO_EXTRA:Ljava/lang/String; = "media_recorder_info_extra"

.field private static final PROPERTY_MEDIA_RECORDER_INFO_WHAT:Ljava/lang/String; = "media_recorder_info_what"

.field private static final PROPERTY_ZOOM_LEVEL:Ljava/lang/String; = "zoom_level"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPropertiesForBurstCapture(ILjava/lang/String;Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;F)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;",
            "F)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "burst_mode_count"

    .line 84
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "camera_mode"

    .line 85
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "auto_focus_mode"

    .line 86
    invoke-virtual {p2}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "zoom_level"

    .line 87
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createPropertiesForCameraLocked(Z)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "camera_locked"

    .line 116
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createPropertiesForMediaRecorderError(II)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "media_recorder_error_what"

    .line 129
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "media_recorder_error_extra"

    .line 130
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createPropertiesForMediaRecorderInfo(II)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "media_recorder_info_what"

    .line 144
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "media_recorder_info_extra"

    .line 145
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createPropertiesForSingleCapture(Ljava/lang/String;Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;F)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;",
            "F)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "camera_mode"

    .line 103
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "auto_focus_mode"

    .line 104
    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "zoom_level"

    .line 105
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
