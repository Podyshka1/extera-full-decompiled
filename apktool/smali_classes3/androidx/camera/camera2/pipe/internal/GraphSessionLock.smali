.class public final Landroidx/camera/camera2/pipe/internal/GraphSessionLock;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public static synthetic $r8$lambda$Rh7Chtw743aTwAubUmFZvrz-3kQ(Lkotlinx/coroutines/CompletableJob;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->asyncUndispatched$lambda$0(Lkotlinx/coroutines/CompletableJob;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static final synthetic access$getMutex$p(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$use(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->use(Landroidx/camera/camera2/pipe/core/Token;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final asyncUndispatched(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;
    .locals 5

    .line 79
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    .line 80
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 82
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v3, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$asyncUndispatched$result$1;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$asyncUndispatched$result$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 92
    new-instance p2, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/CompletableJob;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object p1
.end method

.method private static final asyncUndispatched$lambda$0(Lkotlinx/coroutines/CompletableJob;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 92
    invoke-interface {p0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final use(Landroidx/camera/camera2/pipe/core/Token;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 96
    iget v2, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/pipe/core/Token;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    :try_start_1
    iput-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$use$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v1, :cond_3

    return-object v1

    .line 100
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    return-object p3

    :goto_2
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    throw p2
.end method


# virtual methods
.method public final acquireToken$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 43
    iget v2, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 98
    iput-object p1, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$acquireToken$1;->label:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v3, v2}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    .line 99
    :goto_1
    new-instance p1, Landroidx/camera/camera2/pipe/core/MutexToken;

    invoke-direct {p1, v0}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Lkotlinx/coroutines/sync/Mutex;)V

    return-object p1
.end method

.method public final withTokenInAsync$camera_camera2_pipe(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock$withTokenInAsync$1;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;->asyncUndispatched(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method
