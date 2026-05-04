.class public final Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptureSessionStateCallbacks"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;
    }
.end annotation


# instance fields
.field private callbacks:Lkotlinx/atomicfu/AtomicRef;

.field private final placeholderSession:Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->placeholderSession:Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    .line 97
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method


# virtual methods
.method public onActive-rphkYDA(Ljava/lang/String;I)V
    .locals 1

    const-string p2, "cameraId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 135
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->placeholderSession:Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCaptureQueueEmpty-rphkYDA(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "cameraId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 144
    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->placeholderSession:Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    iget-object p2, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    invoke-static {p1, p2}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;Lkotlinx/atomicfu/AtomicRef;)V

    return-void

    .line 146
    :cond_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 136
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 146
    const-string p2, "onCaptureQueueEmpty called for unsupported OS version."

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onClosed-rphkYDA(Ljava/lang/String;I)V
    .locals 1

    const-string p2, "cameraId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 155
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->placeholderSession:Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigureFailed-rphkYDA(Ljava/lang/String;I)V
    .locals 1

    const-string p2, "cameraId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 117
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->placeholderSession:Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigured-rphkYDA(Ljava/lang/String;I)V
    .locals 1

    const-string p2, "cameraId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 108
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->placeholderSession:Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReady-rphkYDA(Ljava/lang/String;I)V
    .locals 1

    const-string p2, "cameraId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 126
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->placeholderSession:Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateCallbacks$camera_camera2(Landroidx/camera/core/impl/SessionConfig;)V
    .locals 2

    const-string/jumbo v0, "sessionConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getSessionStateCallbacks()Ljava/util/List;

    move-result-object p1

    const-string v1, "getSessionStateCallbacks(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void
.end method
