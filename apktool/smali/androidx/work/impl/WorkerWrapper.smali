.class public final Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkerWrapper$Builder;,
        Landroidx/work/impl/WorkerWrapper$Resolution;
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final builderWorker:Landroidx/work/ListenableWorker;

.field private final clock:Landroidx/work/Clock;

.field private final configuration:Landroidx/work/Configuration;

.field private final dependencyDao:Landroidx/work/impl/model/DependencyDao;

.field private final foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

.field private final runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

.field private final tags:Ljava/util/List;

.field private final workDatabase:Landroidx/work/impl/WorkDatabase;

.field private final workDescription:Ljava/lang/String;

.field private final workSpec:Landroidx/work/impl/model/WorkSpec;

.field private final workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

.field private final workSpecId:Ljava/lang/String;

.field private final workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field private final workerJob:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method public static synthetic $r8$lambda$TsigP0m7_k774y6IZc6aS_uV-YA(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/work/impl/WorkerWrapper;->trySetRunning$lambda$13(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a0mi6STqFu3M5cm3Gtv6LbwfItA(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/work/impl/WorkerWrapper;->runWorker$lambda$4(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pgTj0TbLDPXkl5H_yrOVgH1dL-U(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/work/impl/WorkerWrapper;->runWorker$lambda$1(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 70
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 71
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getRuntimeExtras()Landroidx/work/WorkerParameters$RuntimeExtras;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 74
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getWorker()Landroidx/work/ListenableWorker;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->builderWorker:Landroidx/work/ListenableWorker;

    .line 75
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 77
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    .line 78
    invoke-virtual {v0}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    .line 79
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getForegroundProcessor()Landroidx/work/impl/foreground/ForegroundProcessor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 80
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 81
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 82
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 83
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->getTags()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/List;

    .line 84
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->createWorkDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 86
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static final synthetic access$getAppContext$p(Landroidx/work/impl/WorkerWrapper;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getWorkDatabase$p(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/impl/WorkDatabase;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method

.method public static final synthetic access$getWorkTaskExecutor$p(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object p0
.end method

.method public static final synthetic access$getWorkerJob$p(Landroidx/work/impl/WorkerWrapper;)Lkotlinx/coroutines/CompletableJob;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/CompletableJob;

    return-object p0
.end method

.method public static final synthetic access$onWorkFinished(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker$Result;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->onWorkFinished(Landroidx/work/ListenableWorker$Result;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetWorkerStatus(Landroidx/work/impl/WorkerWrapper;I)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->resetWorkerStatus(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$runWorker(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->runWorker(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final createWorkDescription(Ljava/util/List;)Ljava/lang/String;
    .locals 11

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Work [ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " } ]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final handleResult(Landroidx/work/ListenableWorker$Result;)Z
    .locals 4

    .line 382
    instance-of v0, p1, Landroidx/work/ListenableWorker$Result$Success;

    if-eqz v0, :cond_1

    .line 383
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker result SUCCESS for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()Z

    move-result p1

    return p1

    .line 387
    :cond_0
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->setSucceeded(Landroidx/work/ListenableWorker$Result;)Z

    move-result p1

    return p1

    .line 389
    :cond_1
    instance-of v0, p1, Landroidx/work/ListenableWorker$Result$Retry;

    if-eqz v0, :cond_2

    .line 390
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker result RETRY for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x100

    .line 391
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)Z

    move-result p1

    return p1

    .line 393
    :cond_2
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker result FAILURE for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v0, v2}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodic()Z

    move-result p1

    return p1

    :cond_3
    if-nez p1, :cond_4

    .line 398
    new-instance p1, Landroidx/work/ListenableWorker$Result$Failure;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkerWrapper;->setFailed(Landroidx/work/ListenableWorker$Result;)Z

    move-result p1

    return p1
.end method

.method private final iterativelyFailWorkAndDependents(Ljava/lang/String;)V
    .locals 3

    .line 431
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 432
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v1

    sget-object v2, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    .line 436
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-interface {v1, v2, v0}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao;

    invoke-interface {v1, v0}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final onWorkFinished(Landroidx/work/ListenableWorker$Result;)Z
    .locals 3

    .line 328
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 329
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkProgressDao;->delete(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v0, v2, :cond_1

    .line 337
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->handleResult(Landroidx/work/ListenableWorker$Result;)Z

    move-result p1

    return p1

    .line 338
    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, -0x200

    .line 340
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private final reschedule(I)Z
    .locals 4

    .line 443
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    invoke-interface {v2}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 445
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 446
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 447
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v2

    .line 445
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 449
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 450
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->setStopReason(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private final resetPeriodic()Z
    .locals 4

    .line 459
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    invoke-interface {v2}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    .line 460
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 463
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 464
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v2

    .line 462
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 466
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->incrementPeriodCount(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    const/4 v0, 0x0

    return v0
.end method

.method private final resetWorkerStatus(I)Z
    .locals 7

    .line 352
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->getBackOffOnSystemInterruptions()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Worker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was interrupted. Backing off."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v2, v0, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->reschedule(I)Z

    return v1

    .line 360
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 361
    const-string v2, " is "

    const-string v3, "Status for "

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 362
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v5

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; not doing any work and rescheduling for later execution"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v5, v4, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroidx/work/impl/model/WorkSpecDao;->setStopReason(Ljava/lang/String;I)V

    .line 372
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    return v1

    .line 375
    :cond_1
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v1, p1, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final runWorker(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    iget v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;

    invoke-direct {v2, v1, v0}, Landroidx/work/impl/WorkerWrapper$runWorker$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 130
    iget v4, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/work/WorkerParameters;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v0}, Landroidx/work/Configuration;->getTracer()Landroidx/work/Tracer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/Tracer;->isEnabled()Z

    move-result v0

    .line 132
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->getTraceTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 134
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v7}, Landroidx/work/Configuration;->getTracer()Landroidx/work/Tracer;

    move-result-object v7

    .line 139
    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    move-result v8

    .line 134
    invoke-interface {v7, v4, v8}, Landroidx/work/Tracer;->beginAsyncSection(Ljava/lang/String;I)V

    .line 145
    :cond_3
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    new-instance v8, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkerWrapper;)V

    invoke-virtual {v7, v8}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 193
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    invoke-direct {v0, v8, v5, v6}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 198
    :cond_4
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v7}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 199
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    :goto_1
    move-object v11, v7

    goto :goto_2

    .line 201
    :cond_5
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v7}, Landroidx/work/Configuration;->getInputMergerFactory()Landroidx/work/InputMergerFactory;

    move-result-object v7

    .line 202
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 204
    invoke-virtual {v7, v9}, Landroidx/work/InputMergerFactory;->createInputMergerWithDefaultFallback(Ljava/lang/String;)Landroidx/work/InputMerger;

    move-result-object v7

    if-nez v7, :cond_6

    .line 206
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create Input Merger "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v2, v0, v3}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    invoke-direct {v0, v6, v5, v6}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 210
    :cond_6
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v9, v9, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v1, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v11, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroidx/work/impl/model/WorkSpecDao;->getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 211
    invoke-virtual {v7, v9}, Landroidx/work/InputMerger;->merge(Ljava/util/List;)Landroidx/work/Data;

    move-result-object v7

    goto :goto_1

    .line 214
    :goto_2
    new-instance v9, Landroidx/work/WorkerParameters;

    .line 215
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    .line 217
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->tags:Ljava/util/List;

    move-object v12, v7

    check-cast v12, Ljava/util/Collection;

    .line 218
    iget-object v13, v1, Landroidx/work/impl/WorkerWrapper;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 219
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget v14, v7, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 220
    invoke-virtual {v7}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    move-result v15

    .line 221
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v7}, Landroidx/work/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v16

    .line 222
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v7}, Landroidx/work/Configuration;->getWorkerCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v17

    .line 223
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 224
    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v8}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v19

    .line 225
    new-instance v8, Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-direct {v8, v5, v6}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 226
    new-instance v5, Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    move-object/from16 v18, v7

    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    move-object/from16 v20, v8

    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-direct {v5, v6, v7, v8}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    move-object/from16 v21, v5

    .line 214
    invoke-direct/range {v9 .. v21}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/Data;Ljava/util/Collection;Landroidx/work/WorkerParameters$RuntimeExtras;IILjava/util/concurrent/Executor;Lkotlin/coroutines/CoroutineContext;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/WorkerFactory;Landroidx/work/ProgressUpdater;Landroidx/work/ForegroundUpdater;)V

    .line 232
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->builderWorker:Landroidx/work/ListenableWorker;

    if-nez v5, :cond_8

    .line 234
    :try_start_1
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v5}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v5

    .line 235
    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->appContext:Landroid/content/Context;

    .line 236
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 234
    invoke-virtual {v5, v6, v7, v9}, Landroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 240
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create Worker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v3, v2, v4}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v2}, Landroidx/work/Configuration;->getWorkerInitializationExceptionHandler()Landroidx/core/util/Consumer;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 243
    new-instance v3, Landroidx/work/WorkerExceptionInfo;

    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-direct {v3, v4, v9, v0}, Landroidx/work/WorkerExceptionInfo;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V

    .line 244
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v2, v3, v0}, Landroidx/work/impl/utils/WorkerExceptionUtilsKt;->safeAccept(Landroidx/core/util/Consumer;Landroidx/work/WorkerExceptionInfo;Ljava/lang/String;)V

    .line 246
    :cond_7
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 248
    :cond_8
    :goto_3
    invoke-virtual {v5}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 254
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    sget-object v7, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v6, v7}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lkotlinx/coroutines/Job;

    .line 275
    new-instance v7, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v7, v5, v0, v4, v1}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;-><init>(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;)V

    invoke-interface {v6, v7}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 286
    invoke-direct {v1}, Landroidx/work/impl/WorkerWrapper;->trySetRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 287
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v4, v7, v8}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_9
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 290
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 292
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;

    invoke-direct {v0, v4, v7, v8}, Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 295
    :cond_a
    invoke-virtual {v9}, Landroidx/work/WorkerParameters;->getForegroundUpdater()Landroidx/work/ForegroundUpdater;

    move-result-object v0

    const-string v4, "getForegroundUpdater(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v4}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    const-string v6, "getMainThreadExecutor(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    .line 299
    :try_start_2
    new-instance v6, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    const/4 v8, 0x0

    invoke-direct {v6, v1, v5, v0, v8}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Lkotlin/coroutines/Continuation;)V

    iput-object v9, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v2, Landroidx/work/impl/WorkerWrapper$runWorker$1;->label:I

    invoke-static {v4, v6, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v3, :cond_b

    return-object v3

    :cond_b
    move-object v2, v9

    .line 130
    :goto_4
    :try_start_3
    check-cast v0, Landroidx/work/ListenableWorker$Result;

    .line 313
    new-instance v3, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v0}, Landroidx/work/impl/WorkerWrapper$Resolution$Finished;-><init>(Landroidx/work/ListenableWorker$Result;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    :catchall_2
    move-exception v0

    move-object v2, v9

    .line 318
    :goto_5
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed because it threw an exception/error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-virtual {v4, v3, v5, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {v3}, Landroidx/work/Configuration;->getWorkerExecutionExceptionHandler()Landroidx/core/util/Consumer;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 320
    new-instance v4, Landroidx/work/WorkerExceptionInfo;

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v0}, Landroidx/work/WorkerExceptionInfo;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V

    .line 321
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v3, v4, v0}, Landroidx/work/impl/utils/WorkerExceptionUtilsKt;->safeAccept(Landroidx/core/util/Consumer;Landroidx/work/WorkerExceptionInfo;Ljava/lang/String;)V

    .line 323
    :cond_c
    new-instance v0, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v8, v7, v8}, Landroidx/work/impl/WorkerWrapper$Resolution$Failed;-><init>(Landroidx/work/ListenableWorker$Result;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 315
    :goto_6
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->workDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v3, v2, v4, v0}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    throw v0
.end method

.method private static final runWorker$lambda$1(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 4

    .line 150
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    .line 151
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-virtual {v1, v0, p0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    invoke-interface {v0}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 174
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    .line 176
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying execution for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because it is being executed before schedule."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-virtual {v0, v1, p0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 189
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static final runWorker$lambda$4(Landroidx/work/ListenableWorker;ZLjava/lang/String;Landroidx/work/impl/WorkerWrapper;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    .line 276
    instance-of v0, p4, Landroidx/work/impl/WorkerStoppedException;

    if-eqz v0, :cond_0

    .line 277
    check-cast p4, Landroidx/work/impl/WorkerStoppedException;

    invoke-virtual {p4}, Landroidx/work/impl/WorkerStoppedException;->getReason()I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/work/ListenableWorker;->stop(I)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 280
    iget-object p0, p3, Landroidx/work/impl/WorkerWrapper;->configuration:Landroidx/work/Configuration;

    invoke-virtual {p0}, Landroidx/work/Configuration;->getTracer()Landroidx/work/Tracer;

    move-result-object p0

    iget-object p1, p3, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    move-result p1

    invoke-interface {p0, p2, p1}, Landroidx/work/Tracer;->endAsyncSection(Ljava/lang/String;I)V

    .line 282
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setSucceeded(Landroidx/work/ListenableWorker$Result;)Z
    .locals 7

    .line 472
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v1, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 473
    const-string/jumbo v0, "null cannot be cast to non-null type androidx.work.ListenableWorker.Result.Success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/ListenableWorker$Result$Success;

    .line 475
    invoke-virtual {p1}, Landroidx/work/ListenableWorker$Result$Success;->getOutputData()Landroidx/work/Data;

    move-result-object p1

    const-string v0, "getOutputData(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    .line 479
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->clock:Landroidx/work/Clock;

    invoke-interface {p1}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 480
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 483
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v3, v2}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v3

    sget-object v4, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    if-ne v3, v4, :cond_0

    .line 484
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->dependencyDao:Landroidx/work/impl/model/DependencyDao;

    invoke-interface {v3, v2}, Landroidx/work/impl/model/DependencyDao;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting status to enqueued for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v4, v3, v5}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v4, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-interface {v3, v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 488
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v3, v2, v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final trySetRunning()Z
    .locals 2

    .line 404
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workDatabase:Landroidx/work/impl/WorkDatabase;

    new-instance v1, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda2;-><init>(Landroidx/work/impl/WorkerWrapper;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "runInTransaction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final trySetRunning$lambda$13(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/Boolean;
    .locals 3

    .line 406
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 407
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    const/16 v1, -0x100

    invoke-interface {v0, p0, v1}, Landroidx/work/impl/model/WorkSpecDao;->setStopReason(Ljava/lang/String;I)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 412
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getWorkGenerationalId()Landroidx/work/impl/model/WorkGenerationalId;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    return-object v0
.end method

.method public final getWorkSpec()Landroidx/work/impl/model/WorkSpec;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    return-object v0
.end method

.method public final interrupt(I)V
    .locals 2

    .line 348
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workerJob:Lkotlinx/coroutines/CompletableJob;

    new-instance v1, Landroidx/work/impl/WorkerStoppedException;

    invoke-direct {v1, p1}, Landroidx/work/impl/WorkerStoppedException;-><init>(I)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final launch()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 92
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getTaskCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/WorkerWrapper$launch$1;

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkerWrapper$launch$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v2}, Landroidx/work/ListenableFutureKt;->launchFuture$default(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final setFailed(Landroidx/work/ListenableWorker$Result;)Z
    .locals 3

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->iterativelyFailWorkAndDependents(Ljava/lang/String;)V

    .line 419
    check-cast p1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 421
    invoke-virtual {p1}, Landroidx/work/ListenableWorker$Result$Failure;->getOutputData()Landroidx/work/Data;

    move-result-object p1

    const-string v0, "getOutputData(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 423
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    .line 424
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v2

    .line 422
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    .line 426
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->workSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    const/4 p1, 0x0

    return p1
.end method
