.class public interface abstract Landroidx/camera/core/impl/CameraFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraPresenceMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraFactory$Interrogator;,
        Landroidx/camera/core/impl/CameraFactory$Provider;
    }
.end annotation


# virtual methods
.method public abstract getAvailableCameraIds()Ljava/util/Set;
.end method

.method public abstract getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;
.end method

.method public abstract getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;
.end method

.method public abstract getCameraManager()Ljava/lang/Object;
.end method

.method public abstract getCameraPresenceSource()Landroidx/camera/core/impl/Observable;
.end method

.method public abstract shutdown()V
.end method
