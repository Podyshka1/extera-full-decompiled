.class public final Landroidx/work/impl/WorkerWrapper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final configuration:Landroidx/work/Configuration;

.field private final foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

.field private runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

.field private final tags:Ljava/util/List;

.field private final workDatabase:Landroidx/work/impl/WorkDatabase;

.field private final workSpec:Landroidx/work/impl/model/WorkSpec;

.field private final workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field private worker:Landroidx/work/ListenableWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTaskExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foregroundProcessor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workDatabase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpec"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$Builder;->configuration:Landroidx/work/Configuration;

    .line 504
    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$Builder;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 505
    iput-object p4, p0, Landroidx/work/impl/WorkerWrapper$Builder;->foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 506
    iput-object p5, p0, Landroidx/work/impl/WorkerWrapper$Builder;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 507
    iput-object p6, p0, Landroidx/work/impl/WorkerWrapper$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 508
    iput-object p7, p0, Landroidx/work/impl/WorkerWrapper$Builder;->tags:Ljava/util/List;

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->appContext:Landroid/content/Context;

    .line 512
    new-instance p1, Landroidx/work/WorkerParameters$RuntimeExtras;

    invoke-direct {p1}, Landroidx/work/WorkerParameters$RuntimeExtras;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/impl/WorkerWrapper;
    .locals 1

    .line 539
    new-instance v0, Landroidx/work/impl/WorkerWrapper;

    invoke-direct {v0, p0}, Landroidx/work/impl/WorkerWrapper;-><init>(Landroidx/work/impl/WorkerWrapper$Builder;)V

    return-object v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1

    .line 510
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getConfiguration()Landroidx/work/Configuration;
    .locals 1

    .line 503
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->configuration:Landroidx/work/Configuration;

    return-object v0
.end method

.method public final getForegroundProcessor()Landroidx/work/impl/foreground/ForegroundProcessor;
    .locals 1

    .line 505
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->foregroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    return-object v0
.end method

.method public final getRuntimeExtras()Landroidx/work/WorkerParameters$RuntimeExtras;
    .locals 1

    .line 512
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1

    .line 508
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getWorkDatabase()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .line 506
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->workDatabase:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public final getWorkSpec()Landroidx/work/impl/model/WorkSpec;
    .locals 1

    .line 507
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    return-object v0
.end method

.method public final getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1

    .line 504
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->workTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object v0
.end method

.method public final getWorker()Landroidx/work/ListenableWorker;
    .locals 1

    .line 511
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->worker:Landroidx/work/ListenableWorker;

    return-object v0
.end method

.method public final withRuntimeExtras(Landroidx/work/WorkerParameters$RuntimeExtras;)Landroidx/work/impl/WorkerWrapper$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 521
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    :cond_0
    return-object p0
.end method
