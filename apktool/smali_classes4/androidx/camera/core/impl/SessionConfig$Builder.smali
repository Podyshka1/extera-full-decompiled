.class public Landroidx/camera/core/impl/SessionConfig$Builder;
.super Landroidx/camera/core/impl/SessionConfig$BaseBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 436
    invoke-direct {p0}, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;-><init>()V

    return-void
.end method

.method public static createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 445
    invoke-interface {p0, v0}, Landroidx/camera/core/impl/UseCaseConfig;->getSessionOptionUnpacker(Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;)Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v1, Landroidx/camera/core/impl/SessionConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;-><init>()V

    .line 455
    invoke-interface {v0, p1, p0, v1}, Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;->unpack(Landroid/util/Size;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/SessionConfig$Builder;)V

    return-object v1

    .line 447
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implementation is missing option unpacker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Landroidx/camera/core/internal/TargetConfig;->getTargetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAllCameraCaptureCallbacks(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 2

    .line 624
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 625
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 626
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addAllDeviceStateCallbacks(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 551
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 552
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAllRepeatingCameraCaptureCallbacks(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 597
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllSessionStateCallbacks(Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 575
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 576
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 609
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 610
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 539
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mDeviceStateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 542
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mDeviceStateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 785
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    return-object p0
.end method

.method public addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 729
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addNonRepeatingSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 0

    .line 738
    invoke-static {p1}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->builder(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object p1

    .line 739
    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    move-result-object p1

    .line 741
    iget-object p2, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mOutputConfigs:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRepeatingCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 587
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-object p0
.end method

.method public addSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 563
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionStateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 566
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionStateCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 673
    sget-object v0, Landroidx/camera/core/DynamicRange;->SDR:Landroidx/camera/core/DynamicRange;

    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 686
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;Ljava/lang/String;I)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;Ljava/lang/String;I)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 698
    invoke-static {p1}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->builder(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object v0

    .line 699
    invoke-virtual {v0, p3}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->setPhysicalCameraId(Ljava/lang/String;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object p3

    .line 700
    invoke-virtual {p3, p2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object p2

    .line 701
    invoke-virtual {p2, p4}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->setMirrorMode(I)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object p2

    .line 702
    invoke-virtual {p2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    move-result-object p2

    .line 703
    iget-object p3, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mOutputConfigs:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object p2, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    return-object p0
.end method

.method public addTag(Ljava/lang/String;Ljava/lang/Object;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 529
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addTag(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Landroidx/camera/core/impl/SessionConfig;
    .locals 10

    .line 794
    new-instance v0, Landroidx/camera/core/impl/SessionConfig;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mOutputConfigs:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mDeviceStateCallbacks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionStateCallbacks:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 799
    invoke-virtual {v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->build()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v5

    iget-object v6, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    iget-object v7, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    iget v8, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionType:I

    iget-object v9, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/impl/SessionConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/core/impl/CaptureConfig;Landroidx/camera/core/impl/SessionConfig$ErrorListener;Landroid/hardware/camera2/params/InputConfiguration;ILandroidx/camera/core/impl/SessionConfig$OutputConfig;)V

    return-object v0
.end method

.method public clearSurfaces()Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 772
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mOutputConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 773
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->clearSurfaces()V

    return-object p0
.end method

.method public removeCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Z
    .locals 2

    .line 643
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    .line 644
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->removeCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Z

    move-result v0

    .line 645
    iget-object v1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    .line 646
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 0

    .line 659
    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    return-object p0
.end method

.method public setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 499
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)V

    return-object p0
.end method

.method public setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 779
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)V

    return-object p0
.end method

.method public setInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 0

    .line 466
    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    return-object p0
.end method

.method public setPostviewSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 0

    .line 749
    invoke-static {p1}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->builder(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$OutputConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mPostviewOutputConfig:Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    return-object p0
.end method

.method public setPreviewStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 509
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setPreviewStabilization(I)V

    :cond_0
    return-object p0
.end method

.method public setSessionType(I)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 0

    .line 487
    iput p1, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionType:I

    return-object p0
.end method

.method public setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    return-object p0
.end method

.method public setVideoStabilization(I)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 520
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setVideoStabilization(I)V

    :cond_0
    return-object p0
.end method
