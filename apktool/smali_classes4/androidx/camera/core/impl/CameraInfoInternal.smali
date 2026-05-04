.class public interface abstract Landroidx/camera/core/impl/CameraInfoInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraInfo;


# virtual methods
.method public abstract getAvailableCapabilities()Ljava/util/Set;
.end method

.method public abstract getCameraCharacteristics()Ljava/lang/Object;
.end method

.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public abstract getCameraQuirks()Landroidx/camera/core/impl/Quirks;
.end method

.method public abstract getEncoderProfilesProvider()Landroidx/camera/core/impl/EncoderProfilesProvider;
.end method

.method public abstract getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
.end method

.method public abstract getSensorRect()Landroid/graphics/Rect;
.end method

.method public abstract getSupportedDynamicRanges()Ljava/util/Set;
.end method

.method public abstract getSupportedHighResolutions(I)Ljava/util/List;
.end method

.method public abstract getSupportedHighSpeedResolutions()Ljava/util/List;
.end method

.method public abstract getSupportedHighSpeedResolutionsFor(Landroid/util/Range;)Ljava/util/List;
.end method

.method public abstract getSupportedOutputFormats()Ljava/util/Set;
.end method

.method public abstract getSupportedResolutions(I)Ljava/util/List;
.end method

.method public abstract getTimebase()Landroidx/camera/core/impl/Timebase;
.end method

.method public abstract isExternalCamera()Z
.end method

.method public abstract isHighSpeedSupported()Z
.end method

.method public abstract isPreviewStabilizationSupported()Z
.end method

.method public abstract isResolvedFeatureGroupSupported(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)Z
.end method

.method public abstract isVideoStabilizationSupported()Z
.end method

.method public abstract setCameraUseCaseAdapterProvider(Landroidx/camera/core/CameraUseCaseAdapterProvider;)V
.end method
