.class public interface abstract Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;
    }
.end annotation


# virtual methods
.method public abstract abortCaptures()Z
.end method

.method public abstract capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
.end method

.method public abstract captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
.end method

.method public abstract finalizeOutputConfigurations(Ljava/util/List;)Z
.end method

.method public abstract getDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
.end method

.method public abstract getId-159jkk4()I
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
.end method

.method public abstract setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;
.end method

.method public abstract stopRepeating()Z
.end method
