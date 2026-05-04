.class public interface abstract Landroidx/camera/core/impl/ImageOutputConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ReadableConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/ImageOutputConfig$Builder;
    }
.end annotation


# static fields
.field public static final OPTION_APP_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_CUSTOM_ORDERED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_DEFAULT_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_MAX_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_MIRROR_MODE:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_RESOLUTION_SELECTOR:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

.field public static final OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const-string v0, "camerax.core.imageOutput.targetAspectRatio"

    const-class v1, Landroidx/camera/core/AspectRatio;

    .line 60
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/Config$Option;

    .line 66
    const-string v0, "camerax.core.imageOutput.targetRotation"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 71
    const-string v0, "camerax.core.imageOutput.appTargetRotation"

    .line 72
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_APP_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    .line 77
    const-string v0, "camerax.core.imageOutput.mirrorMode"

    .line 78
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MIRROR_MODE:Landroidx/camera/core/impl/Config$Option;

    .line 84
    const-string v0, "camerax.core.imageOutput.targetResolution"

    const-class v1, Landroid/util/Size;

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    .line 88
    const-string v0, "camerax.core.imageOutput.defaultResolution"

    .line 89
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_DEFAULT_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    .line 93
    const-string v0, "camerax.core.imageOutput.maxResolution"

    .line 94
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MAX_RESOLUTION:Landroidx/camera/core/impl/Config$Option;

    .line 99
    const-string v0, "camerax.core.imageOutput.supportedResolutions"

    const-class v1, Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

    .line 104
    const-string v0, "camerax.core.imageOutput.resolutionSelector"

    const-class v2, Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 105
    invoke-static {v0, v2}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_RESOLUTION_SELECTOR:Landroidx/camera/core/impl/Config$Option;

    .line 110
    const-string v0, "camerax.core.imageOutput.customOrderedResolutions"

    .line 111
    invoke-static {v0, v1}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_CUSTOM_ORDERED_RESOLUTIONS:Landroidx/camera/core/impl/Config$Option;

    return-void
.end method


# virtual methods
.method public abstract getAppTargetRotation(I)I
.end method

.method public abstract getCustomOrderedResolutions(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract getDefaultResolution(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract getMaxResolution(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract getMirrorMode(I)I
.end method

.method public abstract getResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
.end method

.method public abstract getResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/resolutionselector/ResolutionSelector;
.end method

.method public abstract getSupportedResolutions(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract getTargetAspectRatio()I
.end method

.method public abstract getTargetResolution(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract getTargetRotation(I)I
.end method

.method public abstract hasTargetAspectRatio()Z
.end method
