.class final Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/StillCaptureRequestControl;->propagateResultOrEnqueueRequest(Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $currentRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field final synthetic $submittedRequest:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iput-object p2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->$currentRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->$submittedRequest:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->$currentRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->$submittedRequest:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 177
    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v5, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    iget-object v6, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 178
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v3, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 180
    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->$currentRequestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v5, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v7, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->$submittedRequest:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    .line 181
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 183
    iput-object v6, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->label:I

    invoke-static {v5, v7, p1, p0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, p1

    move-object p1, v1

    move-object v1, v5

    move-object v5, v7

    .line 177
    :goto_0
    check-cast p1, Lkotlinx/coroutines/Deferred;

    .line 184
    invoke-static {v1, p1, v5, v3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$propagateResultOrEnqueueRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 193
    :cond_4
    iget-boolean p1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_6

    .line 194
    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getMutex$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->this$0:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->$submittedRequest:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    .line 121
    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->label:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object v2, p1

    move-object v0, v3

    .line 194
    :goto_2
    :try_start_0
    invoke-static {v1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 195
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;->$submittedRequest:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StillCaptureRequestControl: failed to submit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    const-string p1, ", will be retried with a future UseCaseCamera"

    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 125
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 200
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
