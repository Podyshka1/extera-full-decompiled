.class public abstract Landroidx/camera/core/impl/ForwardingCameraInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraInfoInternal;


# instance fields
.field private final mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    return-void
.end method


# virtual methods
.method public getAvailableCapabilities()Ljava/util/Set;
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getAvailableCapabilities()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCameraCharacteristics()Ljava/lang/Object;
    .locals 1

    .line 297
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraCharacteristics()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getCameraIdentifier()Landroidx/camera/core/CameraIdentifier;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInfoInternal$-CC;->$default$getCameraIdentifier(Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getCameraQuirks()Landroidx/camera/core/impl/Quirks;
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object v0

    return-object v0
.end method

.method public getCameraState()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getEncoderProfilesProvider()Landroidx/camera/core/impl/EncoderProfilesProvider;
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getEncoderProfilesProvider()Landroidx/camera/core/impl/EncoderProfilesProvider;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 1

    .line 277
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v0

    return-object v0
.end method

.method public getLensFacing()I
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result v0

    return v0
.end method

.method public getSensorRect()Landroid/graphics/Rect;
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSensorRotationDegrees()I
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees()I

    move-result v0

    return v0
.end method

.method public getSensorRotationDegrees(I)I
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    move-result p1

    return p1
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedDynamicRanges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedHighResolutions(I)Ljava/util/List;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedHighResolutions(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedHighSpeedResolutions()Ljava/util/List;
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedHighSpeedResolutions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedHighSpeedResolutionsFor(Landroid/util/Range;)Ljava/util/List;
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedHighSpeedResolutionsFor(Landroid/util/Range;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedOutputFormats()Ljava/util/Set;
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedOutputFormats()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedResolutions(I)Ljava/util/List;
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedResolutions(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTimebase()Landroidx/camera/core/impl/Timebase;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getTimebase()Landroidx/camera/core/impl/Timebase;

    move-result-object v0

    return-object v0
.end method

.method public getZoomState()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public hasFlashUnit()Z
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v0

    return v0
.end method

.method public isExternalCamera()Z
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->isExternalCamera()Z

    move-result v0

    return v0
.end method

.method public isHighSpeedSupported()Z
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->isHighSpeedSupported()Z

    move-result v0

    return v0
.end method

.method public isPreviewStabilizationSupported()Z
    .locals 1

    .line 287
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->isPreviewStabilizationSupported()Z

    move-result v0

    return v0
.end method

.method public synthetic isResolvedFeatureGroupSupported(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/CameraInfoInternal$-CC;->$default$isResolvedFeatureGroupSupported(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)Z

    move-result p1

    return p1
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .line 292
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->isVideoStabilizationSupported()Z

    move-result v0

    return v0
.end method

.method public setCameraUseCaseAdapterProvider(Landroidx/camera/core/CameraUseCaseAdapterProvider;)V
    .locals 1

    .line 319
    iget-object v0, p0, Landroidx/camera/core/impl/ForwardingCameraInfo;->mCameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CameraInfoInternal;->setCameraUseCaseAdapterProvider(Landroidx/camera/core/CameraUseCaseAdapterProvider;)V

    return-void
.end method
