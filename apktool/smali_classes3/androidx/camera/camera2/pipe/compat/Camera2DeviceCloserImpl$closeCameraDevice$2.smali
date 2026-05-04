.class final Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCameraDevice(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field final synthetic $cameraDeviceClosed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field label:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->$cameraDeviceClosed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->$cameraDeviceClosed:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0, v1, v2, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;-><init>(Landroid/hardware/camera2/CameraDevice;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 178
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapperKt;->closeWithTrace(Landroid/hardware/camera2/CameraDevice;)V

    .line 180
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl$closeCameraDevice$2;->$cameraDeviceClosed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 181
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
