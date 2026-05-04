.class public interface abstract Landroidx/camera/core/impl/UseCaseConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/TargetConfig;
.implements Landroidx/camera/core/impl/ImageInputConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/UseCaseConfig$Builder;
    }
.end annotation


# static fields
.field public static final OPTION_CAPTURE_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_DEFAULT_CAPTURE_CONFIG:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_DEFAULT_SESSION_CONFIG:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_HIGH_RESOLUTION_DISABLED:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_IS_STRICT_FRAME_RATE_REQUIRED:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_RESOLUTION_TO_MAX_FRAME_RATES:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_SESSION_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_SESSION_TYPE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_STREAM_USE_CASE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_SURFACE_OCCUPANCY_PRIORITY:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_TAKE_PICTURE_MANAGER_PROVIDER:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_TARGET_FRAME_RATE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    const-string v0, "camerax.core.useCase.defaultSessionConfig"

    const-class v1, Landroidx/camera/core/impl/SessionConfig;

    .line 51
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_SESSION_CONFIG:Landroidx/camera/core/impl/Config$Option;

    .line 56
    const-string v0, "camerax.core.useCase.defaultCaptureConfig"

    const-class v1, Landroidx/camera/core/impl/CaptureConfig;

    .line 57
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_CAPTURE_CONFIG:Landroidx/camera/core/impl/Config$Option;

    .line 65
    const-string v0, "camerax.core.useCase.sessionConfigUnpacker"

    const-class v1, Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;

    .line 66
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SESSION_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;

    .line 75
    const-string v0, "camerax.core.useCase.captureConfigUnpacker"

    const-class v1, Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;

    .line 76
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_CONFIG_UNPACKER:Landroidx/camera/core/impl/Config$Option;

    .line 83
    const-string v0, "camerax.core.useCase.surfaceOccupancyPriority"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SURFACE_OCCUPANCY_PRIORITY:Landroidx/camera/core/impl/Config$Option;

    .line 88
    const-string v0, "camerax.core.useCase.sessionType"

    .line 89
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SESSION_TYPE:Landroidx/camera/core/impl/Config$Option;

    .line 94
    const-string v0, "camerax.core.useCase.targetFrameRate"

    const-class v2, Landroid/util/Range;

    .line 95
    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_TARGET_FRAME_RATE:Landroidx/camera/core/impl/Config$Option;

    .line 101
    const-string v0, "camerax.core.useCase.isStrictFrameRateRequired"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_IS_STRICT_FRAME_RATE_REQUIRED:Landroidx/camera/core/impl/Config$Option;

    .line 106
    const-string v0, "camerax.core.useCase.resolutionToMaxFrameRate"

    const-class v3, Ljava/util/Map;

    .line 107
    invoke-static {v0, v3}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_RESOLUTION_TO_MAX_FRAME_RATES:Landroidx/camera/core/impl/Config$Option;

    .line 113
    const-string v0, "camerax.core.useCase.zslDisabled"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_ZSL_DISABLED:Landroidx/camera/core/impl/Config$Option;

    .line 118
    const-string v0, "camerax.core.useCase.highResolutionDisabled"

    .line 119
    invoke-static {v0, v3}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_HIGH_RESOLUTION_DISABLED:Landroidx/camera/core/impl/Config$Option;

    .line 124
    const-string v0, "camerax.core.useCase.captureType"

    const-class v3, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-static {v0, v3}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    .line 130
    const-string v0, "camerax.core.useCase.previewStabilizationMode"

    .line 131
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    .line 136
    const-string v0, "camerax.core.useCase.videoStabilizationMode"

    .line 137
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    .line 142
    const-string v0, "camerax.core.useCase.isVideoQualitySelectorDefault"

    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT:Landroidx/camera/core/impl/Config$Option;

    .line 145
    const-string v0, "camerax.core.useCase.takePictureManagerProvider"

    const-class v1, Landroidx/camera/core/imagecapture/TakePictureManager$Provider;

    .line 146
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_TAKE_PICTURE_MANAGER_PROVIDER:Landroidx/camera/core/impl/Config$Option;

    .line 152
    const-string v0, "camerax.core.useCase.streamUseCase"

    const-class v1, Landroidx/camera/core/impl/StreamUseCase;

    .line 153
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_STREAM_USE_CASE:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method


# virtual methods
.method public abstract getCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;
.end method

.method public abstract getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;
.end method

.method public abstract getCustomMaxFrameRate(Landroid/util/Size;)I
.end method

.method public abstract getDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig;
.end method

.method public abstract getDefaultSessionConfig()Landroidx/camera/core/impl/SessionConfig;
.end method

.method public abstract getDefaultSessionConfig(Landroidx/camera/core/impl/SessionConfig;)Landroidx/camera/core/impl/SessionConfig;
.end method

.method public abstract getPreviewStabilizationMode()I
.end method

.method public abstract getSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;
.end method

.method public abstract getSessionType(I)I
.end method

.method public abstract getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;
.end method

.method public abstract getSurfaceOccupancyPriority(I)I
.end method

.method public abstract getTakePictureManagerProvider()Landroidx/camera/core/imagecapture/TakePictureManager$Provider;
.end method

.method public abstract getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;
.end method

.method public abstract getVideoStabilizationMode()I
.end method

.method public abstract hasTargetFrameRate()Z
.end method

.method public abstract isHighResolutionDisabled(Z)Z
.end method

.method public abstract isStrictFrameRateRequired()Z
.end method

.method public abstract isZslDisabled(Z)Z
.end method
