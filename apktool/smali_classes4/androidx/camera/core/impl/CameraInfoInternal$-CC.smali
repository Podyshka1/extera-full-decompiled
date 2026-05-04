.class public abstract synthetic Landroidx/camera/core/impl/CameraInfoInternal$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getCameraIdentifier(Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/CameraIdentifier;
    .locals 0

    .line 387
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/core/CameraIdentifier$Factory;->create(Ljava/lang/String;)Landroidx/camera/core/CameraIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getImplementation(Landroidx/camera/core/impl/CameraInfoInternal;)Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    .line 245
    return-object p0
.end method

.method public static $default$isResolvedFeatureGroupSupported(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)Z
    .locals 5

    .line 357
    invoke-virtual {p1}, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->getFeatures()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "CameraInfoInternal"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/featuregroup/GroupableFeature;

    .line 358
    invoke-virtual {v1, p0, p2}, Landroidx/camera/core/featuregroup/GroupableFeature;->isSupportedIndividually(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/SessionConfig;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 365
    :cond_1
    :try_start_0
    invoke-static {p0, p2, v3, p1}, Landroidx/camera/core/impl/UseCaseAdditionSimulator;->simulateAddUseCases(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/SessionConfig;ZLandroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)Landroidx/camera/core/internal/CalculatedUseCaseInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 370
    :goto_0
    const-string p1, "CameraInfoInternal.isResolvedFeatureGroupSupported failed"

    invoke-static {v2, p1, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public static $default$setCameraUseCaseAdapterProvider(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/CameraUseCaseAdapterProvider;)V
    .locals 0

    .line 382
    invoke-static {p1}, Landroidx/camera/core/impl/UseCaseAdditionSimulator;->setCameraUseCaseAdapterProvider(Landroidx/camera/core/CameraUseCaseAdapterProvider;)V

    return-void
.end method
