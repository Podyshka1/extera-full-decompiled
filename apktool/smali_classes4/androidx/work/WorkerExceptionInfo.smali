.class public final Landroidx/work/WorkerExceptionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final throwable:Ljava/lang/Throwable;

.field private final workerClassName:Ljava/lang/String;

.field private final workerParameters:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "workerClassName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroidx/work/WorkerExceptionInfo;->workerClassName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Landroidx/work/WorkerExceptionInfo;->workerParameters:Landroidx/work/WorkerParameters;

    .line 28
    iput-object p3, p0, Landroidx/work/WorkerExceptionInfo;->throwable:Ljava/lang/Throwable;

    return-void
.end method
