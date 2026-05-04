.class public final Landroidx/camera/video/VideoCapture$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfig$Builder;
.implements Landroidx/camera/core/impl/ImageOutputConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;


# direct methods
.method private constructor <init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V
    .locals 3

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    iput-object p1, p0, Landroidx/camera/video/VideoCapture$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 1961
    sget-object v0, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_VIDEO_OUTPUT:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/OptionsBundle;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1965
    sget-object v0, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x0

    .line 1966
    invoke-virtual {p1, v0, v1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 1967
    const-class v0, Landroidx/camera/video/VideoCapture;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1968
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target class configuration for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_1
    :goto_0
    sget-object p1, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoCapture$Builder;->setCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Landroidx/camera/video/VideoCapture$Builder;

    .line 1976
    invoke-virtual {p0, v0}, Landroidx/camera/video/VideoCapture$Builder;->setTargetClass(Ljava/lang/Class;)Landroidx/camera/video/VideoCapture$Builder;

    return-void

    .line 1962
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "VideoOutput is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroidx/camera/video/VideoOutput;)V
    .locals 0

    .line 1954
    invoke-static {p1}, Landroidx/camera/video/VideoCapture$Builder;->createInitialBundle(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-void
.end method

.method private static createInitialBundle(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/MutableOptionsBundle;
    .locals 2

    .line 1998
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    .line 1999
    sget-object v1, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_VIDEO_OUTPUT:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 2000
    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT:Landroidx/camera/core/impl/Config$Option;

    .line 2001
    invoke-interface {p0}, Landroidx/camera/video/VideoOutput;->isQualitySelectorDefault()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 2000
    invoke-virtual {v0, v1, p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object v0
.end method

.method static fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/video/VideoCapture$Builder;
    .locals 1

    .line 1981
    new-instance v0, Landroidx/camera/video/VideoCapture$Builder;

    invoke-static {p0}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/video/VideoCapture$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroidx/camera/video/VideoCapture;
    .locals 2

    .line 2044
    new-instance v0, Landroidx/camera/video/VideoCapture;

    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getUseCaseConfig()Landroidx/camera/video/impl/VideoCaptureConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/video/VideoCapture;-><init>(Landroidx/camera/video/impl/VideoCaptureConfig;)V

    return-object v0
.end method

.method public getMutableConfig()Landroidx/camera/core/impl/MutableConfig;
    .locals 1

    .line 2011
    iget-object v0, p0, Landroidx/camera/video/VideoCapture$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    return-object v0
.end method

.method public bridge synthetic getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;
    .locals 1

    .line 1945
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getUseCaseConfig()Landroidx/camera/video/impl/VideoCaptureConfig;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaseConfig()Landroidx/camera/video/impl/VideoCaptureConfig;
    .locals 2

    .line 2020
    new-instance v0, Landroidx/camera/video/impl/VideoCaptureConfig;

    iget-object v1, p0, Landroidx/camera/video/VideoCapture$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    invoke-static {v1}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/video/impl/VideoCaptureConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object v0
.end method

.method public setCaptureType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Landroidx/camera/video/VideoCapture$Builder;
    .locals 2

    .line 2390
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/VideoCapture$Builder;
    .locals 2

    .line 2232
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setStreamUseCase(Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/video/VideoCapture$Builder;
    .locals 2

    .line 2397
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_STREAM_USE_CASE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setSurfaceOccupancyPriority(I)Landroidx/camera/video/VideoCapture$Builder;
    .locals 2

    .line 2289
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SURFACE_OCCUPANCY_PRIORITY:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTargetClass(Ljava/lang/Class;)Landroidx/camera/video/VideoCapture$Builder;
    .locals 3

    .line 2052
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_CLASS:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 2055
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2057
    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoCapture$Builder;->setTargetName(Ljava/lang/String;)Landroidx/camera/video/VideoCapture$Builder;

    :cond_0
    return-object p0
.end method

.method public setTargetName(Ljava/lang/String;)Landroidx/camera/video/VideoCapture$Builder;
    .locals 2

    .line 2079
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/TargetConfig;->OPTION_TARGET_NAME:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setTargetResolution(Landroid/util/Size;)Landroidx/camera/video/VideoCapture$Builder;
    .locals 1

    .line 2157
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setTargetResolution is not supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setTargetResolution(Landroid/util/Size;)Ljava/lang/Object;
    .locals 0

    .line 1945
    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoCapture$Builder;->setTargetResolution(Landroid/util/Size;)Landroidx/camera/video/VideoCapture$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTargetRotation(I)Landroidx/camera/video/VideoCapture$Builder;
    .locals 2

    .line 2124
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setTargetRotation(I)Ljava/lang/Object;
    .locals 0

    .line 1945
    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoCapture$Builder;->setTargetRotation(I)Landroidx/camera/video/VideoCapture$Builder;

    move-result-object p1

    return-object p1
.end method

.method setVideoEncoderInfoFinder(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/VideoCapture$Builder;
    .locals 2

    .line 2032
    invoke-virtual {p0}, Landroidx/camera/video/VideoCapture$Builder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    sget-object v1, Landroidx/camera/video/impl/VideoCaptureConfig;->OPTION_VIDEO_ENCODER_INFO_FINDER:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-object p0
.end method
