.class public interface abstract Landroidx/camera/camera2/pipe/CameraBackend;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract awaitCameraIds()Ljava/util/List;
.end method

.method public abstract awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
.end method

.method public abstract awaitConcurrentCameraIds()Ljava/util/Set;
.end method

.method public abstract createCameraController(Landroidx/camera/camera2/pipe/CameraContext;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;)Landroidx/camera/camera2/pipe/CameraController;
.end method

.method public abstract getCameraIds()Lkotlinx/coroutines/flow/Flow;
.end method

.method public abstract getId-QwmhuAM()Ljava/lang/String;
.end method

.method public abstract isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract shutdownAsync()Lkotlinx/coroutines/Deferred;
.end method
