.class final Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26CompatImpl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;

    invoke-direct {v0}, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;-><init>()V

    sput-object v0, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;->INSTANCE:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;Lkotlinx/atomicfu/AtomicRef;)V
    .locals 1

    const-string/jumbo v0, "session"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 177
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    :cond_0
    return-void
.end method
