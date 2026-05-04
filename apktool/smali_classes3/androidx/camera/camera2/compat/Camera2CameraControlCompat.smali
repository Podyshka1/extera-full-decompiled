.class public interface abstract Landroidx/camera/camera2/compat/Camera2CameraControlCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# virtual methods
.method public abstract addRequestOption(Landroidx/camera/camera2/interop/CaptureRequestOptions;)V
.end method

.method public abstract applyAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract cancelCurrentTask()V
.end method

.method public abstract clearRequestOption()V
.end method

.method public abstract getRequestOption()Landroidx/camera/camera2/interop/CaptureRequestOptions;
.end method
