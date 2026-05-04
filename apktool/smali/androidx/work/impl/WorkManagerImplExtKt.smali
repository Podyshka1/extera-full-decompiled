.class public abstract Landroidx/work/impl/WorkManagerImplExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/work/impl/WorkManagerImplExtKt;->createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;
    .locals 8

    .line 105
    invoke-static {p0, p3, p1}, Landroidx/work/impl/Schedulers;->createBestAvailableBackgroundScheduler(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;)Landroidx/work/impl/Scheduler;

    move-result-object p3

    const-string v0, "createBestAvailableBackgroundScheduler(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroidx/work/impl/background/greedy/GreedyScheduler;

    .line 111
    new-instance v6, Landroidx/work/impl/WorkLauncherImpl;

    invoke-direct {v6, p5, p2}, Landroidx/work/impl/WorkLauncherImpl;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v4, p4

    move-object v5, p5

    .line 106
    invoke-direct/range {v1 .. v7}, Landroidx/work/impl/background/greedy/GreedyScheduler;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;Landroidx/work/impl/WorkLauncher;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    const/4 p0, 0x2

    new-array p0, p0, [Landroidx/work/impl/Scheduler;

    const/4 p1, 0x0

    aput-object p3, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    .line 104
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final createWorkManager(Landroid/content/Context;Landroidx/work/Configuration;)Landroidx/work/impl/WorkManagerImpl;
    .locals 10

    .line 0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x7c

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Landroidx/work/impl/WorkManagerImplExtKt;->createWorkManager$default(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;Lkotlin/jvm/functions/Function6;ILjava/lang/Object;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final createWorkManager(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;Lkotlin/jvm/functions/Function6;)Landroidx/work/impl/WorkManagerImpl;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workTaskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workDatabase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "trackers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "processor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersCreator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p1

    move-object p1, p0

    move-object p0, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, v8

    .line 50
    invoke-interface/range {p0 .. p6}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/List;

    .line 58
    new-instance v0, Landroidx/work/impl/WorkManagerImpl;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v6, p6

    .line 58
    invoke-direct/range {v0 .. v7}, Landroidx/work/impl/WorkManagerImpl;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;Landroidx/work/impl/constraints/trackers/Trackers;)V

    return-object v0
.end method

.method public static synthetic createWorkManager$default(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;Lkotlin/jvm/functions/Function6;ILjava/lang/Object;)Landroidx/work/impl/WorkManagerImpl;
    .locals 10

    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_0

    .line 36
    new-instance p2, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    invoke-virtual {p1}, Landroidx/work/Configuration;->getTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_0
    move-object v3, p2

    and-int/lit8 p2, p7, 0x8

    .line 31
    const-string v0, "getApplicationContext(...)"

    if-eqz p2, :cond_1

    .line 38
    sget-object p2, Landroidx/work/impl/WorkDatabase;->Companion:Landroidx/work/impl/WorkDatabase$Companion;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {v3}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v1

    const-string v2, "getSerialTaskExecutor(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v2

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/work/R$bool;->workmanager_test_configuration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 38
    invoke-virtual {p2, p3, v1, v2, v4}, Landroidx/work/impl/WorkDatabase$Companion;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/work/Clock;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p3

    :cond_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_2

    .line 44
    new-instance v1, Landroidx/work/impl/constraints/trackers/Trackers;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/work/impl/constraints/trackers/Trackers;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object v5, p4

    :goto_0
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_3

    .line 46
    new-instance p2, Landroidx/work/impl/Processor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4, p1, v3, p3}, Landroidx/work/impl/Processor;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;)V

    move-object v6, p2

    goto :goto_1

    :cond_3
    move-object v6, p5

    :goto_1
    and-int/lit8 p2, p7, 0x40

    if-eqz p2, :cond_4

    .line 47
    sget-object p2, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;->INSTANCE:Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;

    move-object v7, p2

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    goto :goto_3

    :cond_4
    move-object/from16 v7, p6

    goto :goto_2

    .line 31
    :goto_3
    invoke-static/range {v1 .. v7}, Landroidx/work/impl/WorkManagerImplExtKt;->createWorkManager(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;Lkotlin/jvm/functions/Function6;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final createWorkManagerScope(Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    const-string/jumbo v0, "taskExecutor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {p0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getTaskCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    const-string v0, "getTaskCoroutineDispatcher(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method
