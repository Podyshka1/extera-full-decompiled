.class public abstract Landroidx/work/OperationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$4AmAQmnwY87AwH_dAIVR-wuDub0(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/work/OperationKt;->launchOperation$lambda$2(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XKAkIiEN7OgIvwuLUZRQpJhjmyE(Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/work/OperationKt;->launchOperation$lambda$2$lambda$1(Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public static final launchOperation(Landroidx/work/Tracer;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Operation;
    .locals 7

    const-string/jumbo v0, "tracer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Landroidx/work/Operation;->IN_PROGRESS:Landroidx/work/Operation$State$IN_PROGRESS;

    invoke-direct {v6, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 46
    new-instance v1, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string p1, "getFuture(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p1, Landroidx/work/OperationImpl;

    invoke-direct {p1, v6, p0}, Landroidx/work/OperationImpl;-><init>(Landroidx/lifecycle/LiveData;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object p1
.end method

.method private static final launchOperation$lambda$2(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Lkotlin/Unit;
    .locals 7

    const-string v0, "completer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;-><init>(Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final launchOperation$lambda$2$lambda$1(Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    .line 53
    invoke-interface {p0}, Landroidx/work/Tracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/work/Tracer;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 50
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 51
    sget-object p1, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {p3, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p4, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 54
    :try_start_2
    new-instance p2, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {p2, p1}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p3, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p4, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 57
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {p0}, Landroidx/work/Tracer;->endSection()V

    :cond_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {p0}, Landroidx/work/Tracer;->endSection()V

    :cond_2
    throw p1
.end method
