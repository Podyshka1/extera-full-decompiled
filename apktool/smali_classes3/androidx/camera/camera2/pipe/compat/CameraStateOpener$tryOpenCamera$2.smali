.class final Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->tryOpenCamera-7pD7j80$camera_camera2_pipe(Ljava/lang/String;IJLandroidx/camera/camera2/pipe/compat/Camera2DeviceCloser;Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cameraId:Ljava/lang/String;

.field final synthetic $cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 275
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->label:I

    const-string v2, "CXCP"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 278
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraId:Ljava/lang/String;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {v8, v1, v6, v7, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 290
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {v8, v6, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v6

    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 312
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$timeoutJob$1;

    invoke-direct {v8, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$timeoutJob$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v6

    iput-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 316
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-direct {v8, v6, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v6

    iput-object v6, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, p1

    move-object v6, v1

    move-object v8, v5

    move-object v5, v11

    move-object v1, v12

    .line 321
    :cond_2
    invoke-static {v8}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 322
    :try_start_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraId:Ljava/lang/String;

    iget-object v9, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 54
    new-instance v10, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v11

    invoke-direct {v10, v11}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 325
    iget-object v11, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/Deferred;

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lkotlinx/coroutines/Deferred;->getOnAwait()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v11

    new-instance v12, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$1;

    invoke-direct {v12, v7, p1, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, v11, v12}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 331
    :cond_3
    iget-object v11, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/Deferred;

    if-eqz v11, :cond_4

    invoke-interface {v11}, Lkotlinx/coroutines/Deferred;->getOnAwait()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v11

    new-instance v12, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$2;

    invoke-direct {v12, v6, p1, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, v11, v12}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 337
    :cond_4
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getOnJoin()Lkotlinx/coroutines/selects/SelectClause0;

    move-result-object p1

    new-instance v11, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;

    invoke-direct {v11, v5, v7, v9, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, p1, v11}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V

    .line 351
    :cond_5
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getOnJoin()Lkotlinx/coroutines/selects/SelectClause0;

    move-result-object p1

    new-instance v9, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;

    invoke-direct {v9, v1, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, p1, v9}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V

    .line 58
    :cond_6
    iput-object v8, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$3:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->L$4:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->label:I

    invoke-virtual {v10, p0}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 324
    :cond_7
    :goto_0
    check-cast p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    if-eqz p1, :cond_2

    .line 358
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera open completed: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_8
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Deferred;

    if-eqz v0, :cond_9

    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 361
    :cond_9
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Deferred;

    if-eqz v0, :cond_a

    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 362
    :cond_a
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_b

    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 363
    :cond_b
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_c

    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    return-object p1

    .line 368
    :goto_1
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 86
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 368
    const-string v0, "Unexpected throwable during camera opening!"

    .line 86
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    :cond_d
    throw p1

    .line 375
    :cond_e
    new-instance p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_OPENER-v7Vf74A()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v0

    invoke-direct {p1, v4, v0, v3, v4}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
