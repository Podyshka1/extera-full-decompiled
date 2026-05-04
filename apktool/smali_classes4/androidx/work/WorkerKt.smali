.class public abstract Landroidx/work/WorkerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$06LNzu7McnKR6G06fSbfQ2BCegc(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/WorkerKt;->future$lambda$2$lambda$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQfnDvynAvnSQwUWbYAmb21KapE(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/work/WorkerKt;->future$lambda$2$lambda$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$stbDiVrUcYsUSVFbJy_5-j0wuK4(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/work/WorkerKt;->future$lambda$2(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$future(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/work/WorkerKt;->future(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final future(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 94
    new-instance v0, Landroidx/work/WorkerKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string p1, "getFuture(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final future$lambda$2(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 96
    new-instance v1, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    sget-object v2, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    invoke-virtual {p2, v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 97
    new-instance v1, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p2, p1}, Landroidx/work/WorkerKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final future$lambda$2$lambda$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static final future$lambda$2$lambda$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 100
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 102
    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
