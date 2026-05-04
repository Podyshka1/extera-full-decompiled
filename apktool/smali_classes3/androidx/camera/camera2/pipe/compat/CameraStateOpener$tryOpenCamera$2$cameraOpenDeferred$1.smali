.class final Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cameraId:Ljava/lang/String;

.field final synthetic $cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->$cameraId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->$cameraId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 278
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 280
    :try_start_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->access$getCameraOpener$p(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;)Landroidx/camera/camera2/pipe/compat/CameraOpener;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->$cameraId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    iput v3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->label:I

    invoke-interface {p1, v1, v4, p0}, Landroidx/camera/camera2/pipe/compat/CameraOpener;->openCamera-RzXb1QE(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_3

    return-object v0

    .line 282
    :goto_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->$cameraId:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "CXCP"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith$camera_camera2_pipe(Ljava/lang/Throwable;)V

    .line 284
    new-instance v0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Ljava/lang/Throwable;)I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-direct {v0, v2, p1, v3, v2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_3
    :goto_1
    return-object v2
.end method
