.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clock:Landroidx/work/Clock;

.field private contentUriTriggerWorkersLimit:I

.field private defaultProcessName:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/Executor;

.field private initializationExceptionHandler:Landroidx/core/util/Consumer;

.field private inputMergerFactory:Landroidx/work/InputMergerFactory;

.field private loggingLevel:I

.field private markJobsAsImportantWhileForeground:Z

.field private maxJobSchedulerId:I

.field private maxSchedulerLimit:I

.field private minJobSchedulerId:I

.field private remoteSessionTimeoutMillis:J

.field private runnableScheduler:Landroidx/work/RunnableScheduler;

.field private schedulingExceptionHandler:Landroidx/core/util/Consumer;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private tracer:Landroidx/work/Tracer;

.field private workerContext:Lkotlin/coroutines/CoroutineContext;

.field private workerExecutionExceptionHandler:Landroidx/core/util/Consumer;

.field private workerFactory:Landroidx/work/WorkerFactory;

.field private workerInitializationExceptionHandler:Landroidx/core/util/Consumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x927c0

    .line 234
    iput-wide v0, p0, Landroidx/work/Configuration$Builder;->remoteSessionTimeoutMillis:J

    const/4 v0, 0x4

    .line 235
    iput v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    const v0, 0x7fffffff

    .line 237
    iput v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    const/16 v0, 0x14

    .line 238
    iput v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    const/16 v0, 0x8

    .line 239
    iput v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Landroidx/work/Configuration$Builder;->markJobsAsImportantWhileForeground:Z

    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/Configuration;
    .locals 1

    .line 592
    new-instance v0, Landroidx/work/Configuration;

    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object v0
.end method

.method public final getClock$work_runtime_release()Landroidx/work/Clock;
    .locals 1

    .line 227
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    return-object v0
.end method

.method public final getContentUriTriggerWorkersLimit$work_runtime_release()I
    .locals 1

    .line 239
    iget v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    return v0
.end method

.method public final getDefaultProcessName$work_runtime_release()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExecutor$work_runtime_release()Ljava/util/concurrent/Executor;
    .locals 1

    .line 222
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public final getInputMergerFactory$work_runtime_release()Landroidx/work/InputMergerFactory;
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    return-object v0
.end method

.method public final getLoggingLevel$work_runtime_release()I
    .locals 1

    .line 235
    iget v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    return v0
.end method

.method public final getMarkJobsAsImportantWhileForeground$work_runtime_release()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Landroidx/work/Configuration$Builder;->markJobsAsImportantWhileForeground:Z

    return v0
.end method

.method public final getMaxJobSchedulerId$work_runtime_release()I
    .locals 1

    .line 237
    iget v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    return v0
.end method

.method public final getMaxSchedulerLimit$work_runtime_release()I
    .locals 1

    .line 238
    iget v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    return v0
.end method

.method public final getMinJobSchedulerId$work_runtime_release()I
    .locals 1

    .line 236
    iget v0, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    return v0
.end method

.method public final getRemoteSessionTimeoutMillis$work_runtime_release()J
    .locals 2

    .line 234
    iget-wide v0, p0, Landroidx/work/Configuration$Builder;->remoteSessionTimeoutMillis:J

    return-wide v0
.end method

.method public final getRunnableScheduler$work_runtime_release()Landroidx/work/RunnableScheduler;
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    return-object v0
.end method

.method public final getSchedulingExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1

    .line 230
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public final getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getTracer$work_runtime_release()Landroidx/work/Tracer;
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->tracer:Landroidx/work/Tracer;

    return-object v0
.end method

.method public final getWorkerContext$work_runtime_release()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 223
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getWorkerExecutionExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerExecutionExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method

.method public final getWorkerFactory$work_runtime_release()Landroidx/work/WorkerFactory;
    .locals 1

    .line 224
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    return-object v0
.end method

.method public final getWorkerInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/work/Configuration$Builder;->workerInitializationExceptionHandler:Landroidx/core/util/Consumer;

    return-object v0
.end method
