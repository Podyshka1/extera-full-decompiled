.class public final Landroidx/work/DefaultWorkerFactory;
.super Landroidx/work/WorkerFactory;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/work/DefaultWorkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/DefaultWorkerFactory;

    invoke-direct {v0}, Landroidx/work/DefaultWorkerFactory;-><init>()V

    sput-object v0, Landroidx/work/DefaultWorkerFactory;->INSTANCE:Landroidx/work/DefaultWorkerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Landroidx/work/WorkerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createWorker(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 0

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/DefaultWorkerFactory;->createWorker(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Landroidx/work/ListenableWorker;

    return-object p1
.end method

.method public createWorker(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Ljava/lang/Void;
    .locals 1

    .line 0
    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "workerClassName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "workerParameters"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
