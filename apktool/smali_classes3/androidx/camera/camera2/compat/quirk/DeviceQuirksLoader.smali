.class public final Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadQuirks(Landroidx/camera/core/impl/QuirkSettings;)Ljava/util/List;
    .locals 3

    const-string v0, "quirkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    sget-object v1, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 34
    const-class v2, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    sget-object v1, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 42
    const-class v2, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    new-instance v1, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    sget-object v1, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 50
    const-class v2, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    new-instance v1, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    sget-object v1, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 58
    const-class v2, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/ControlZoomRatioRangeAssertionErrorQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_3
    sget-object v1, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 66
    const-class v2, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    new-instance v1, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_4
    sget-object v1, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopWithSessionProcessorQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopWithSessionProcessorQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopWithSessionProcessorQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 74
    const-class v2, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopWithSessionProcessorQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    new-instance v1, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopWithSessionProcessorQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopWithSessionProcessorQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_5
    sget-object v1, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 82
    const-class v2, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    new-instance v1, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_6
    sget-object v1, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 90
    const-class v2, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/ImageCapturePixelHDRPlusQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_7
    sget-object v1, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 98
    const-class v2, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 103
    new-instance v1, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_8
    sget-object v1, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 106
    const-class v2, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 111
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_9
    sget-object v1, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 114
    const-class v2, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 119
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_a
    sget-object v1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 122
    const-class v2, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 127
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_b
    sget-object v1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 130
    const-class v2, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 135
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_c
    sget-object v1, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 138
    const-class v2, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 143
    new-instance v1, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_d
    sget-object v1, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 146
    const-class v2, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 151
    new-instance v1, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_e
    sget-object v1, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 154
    const-class v2, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 159
    new-instance v1, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/RepeatingStreamConstraintForVideoRecordingQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_f
    sget-object v1, Landroidx/camera/camera2/compat/quirk/StillCaptureFlashStopRepeatingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/StillCaptureFlashStopRepeatingQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/StillCaptureFlashStopRepeatingQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 162
    const-class v2, Landroidx/camera/camera2/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 167
    new-instance v1, Landroidx/camera/camera2/compat/quirk/StillCaptureFlashStopRepeatingQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/StillCaptureFlashStopRepeatingQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_10
    sget-object v1, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 170
    const-class v2, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 175
    new-instance v1, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/TorchIsClosedAfterImageCapturingQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_11
    sget-object v1, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 178
    const-class v2, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 183
    new-instance v1, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/SurfaceOrderQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_12
    sget-object v1, Landroidx/camera/camera2/compat/quirk/CaptureSessionOnClosedNotCalledQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CaptureSessionOnClosedNotCalledQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/CaptureSessionOnClosedNotCalledQuirk$Companion;->isEnabled()Z

    move-result v1

    .line 186
    const-class v2, Landroidx/camera/camera2/compat/quirk/CaptureSessionOnClosedNotCalledQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 191
    new-instance v1, Landroidx/camera/camera2/compat/quirk/CaptureSessionOnClosedNotCalledQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/CaptureSessionOnClosedNotCalledQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_13
    sget-object v1, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;->load()Z

    move-result v1

    const-class v2, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 196
    new-instance v1, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_14
    sget-object v1, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk$Companion;->load()Z

    move-result v1

    .line 199
    const-class v2, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    invoke-virtual {p1, v2, v1}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 204
    new-instance v1, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;

    invoke-direct {v1}, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_15
    const-class v1, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;

    .line 209
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;->load()Z

    move-result v2

    .line 207
    invoke-virtual {p1, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 212
    sget-object p1, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;->INSTANCE:Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    return-object v0
.end method
