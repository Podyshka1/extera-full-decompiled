.class final Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2Backend;->shutdownAsync()Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 186
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/CameraController;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->access$getLock$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    monitor-enter p1

    :try_start_0
    invoke-static {v1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->access$getActiveCameraControllers$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 188
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraController;

    .line 189
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CXCP"

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera2Backend#shutdownAsync: Awaiting closure from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_4
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->label:I

    invoke-interface {v1, p0}, Landroidx/camera/camera2/pipe/CameraController;->awaitClosed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 191
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CXCP"

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to await closure from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_6
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "CXCP"

    .line 195
    const-string v1, "Camera2Backend#shutdownAsync: Closing all cameras (if any)"

    .line 50
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_7
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->access$getCamera2DeviceManager$p(Landroidx/camera/camera2/pipe/compat/Camera2Backend;)Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;

    move-result-object p1

    invoke-interface {p1, v3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceManager;->closeAll(Z)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2Backend$shutdownAsync$2;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_2
    return-object v0

    .line 197
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    .line 187
    monitor-exit p1

    throw v0
.end method
