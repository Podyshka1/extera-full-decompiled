.class final Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt;->runBlockingUninterruptible(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->$block:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;

    iget-object v1, p0, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, p2}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 45
    iget v0, p0, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 49
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/coroutines/ContinuationInterceptor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 51
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1;

    iget-object v5, p0, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;->$block:Lkotlin/jvm/functions/Function2;

    invoke-direct {v4, v0, v5, v1}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, p1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 56
    :catch_0
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    :try_start_0
    new-instance v2, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2;

    invoke-direct {v2, v0, v1}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2;-><init>(Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 64
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/Deferred;->getCompleted()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
