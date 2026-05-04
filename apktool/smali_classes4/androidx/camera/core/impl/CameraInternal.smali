.class public interface abstract Landroidx/camera/core/impl/CameraInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/Camera;
.implements Landroidx/camera/core/UseCase$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraInternal$State;
    }
.end annotation


# virtual methods
.method public abstract attachUseCases(Ljava/util/Collection;)V
.end method

.method public abstract detachUseCases(Ljava/util/Collection;)V
.end method

.method public abstract getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
.end method

.method public abstract getCameraInfo()Landroidx/camera/core/CameraInfo;
.end method

.method public abstract getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;
.end method

.method public abstract getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
.end method

.method public abstract getHasTransform()Z
.end method

.method public abstract isFrontFacing()Z
.end method

.method public abstract isRemoved()Z
.end method

.method public abstract onRemoved()V
.end method

.method public abstract release()Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract setActiveResumingMode(Z)V
.end method

.method public abstract setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
.end method

.method public abstract setPrimary(Z)V
.end method
