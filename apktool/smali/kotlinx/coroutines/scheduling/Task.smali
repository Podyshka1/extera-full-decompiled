.class public abstract Lkotlinx/coroutines/scheduling/Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public submissionTime:J

.field public taskContext:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/scheduling/Task;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    .line 72
    iput-boolean p3, p0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Z

    return-void
.end method
