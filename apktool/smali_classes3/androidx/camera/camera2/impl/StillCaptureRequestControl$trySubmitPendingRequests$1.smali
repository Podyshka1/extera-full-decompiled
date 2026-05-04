.class final Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/StillCaptureRequestControl;->trySubmitPendingRequests()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 116
    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$5:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$4:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$3:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    iget-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlinx/coroutines/Deferred;

    .line 124
    invoke-static {v0, p1, v2, v1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$propagateResultOrEnqueueRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 118
    :cond_4
    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->label:I

    invoke-interface {v1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->awaitSurfaceSetup(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 119
    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getMutex$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    .line 121
    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;->label:I

    invoke-interface {p1, v5, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    :goto_1
    return-object v0

    :cond_6
    move-object v1, p1

    move-object v3, v2

    :goto_2
    move-object v4, v1

    .line 120
    :goto_3
    :try_start_1
    invoke-static {v3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 121
    invoke-static {v3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    goto :goto_3

    .line 131
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_5

    :goto_4
    invoke-interface {v4, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 133
    :cond_8
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
