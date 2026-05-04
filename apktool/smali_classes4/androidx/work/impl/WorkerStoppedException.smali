.class public final Landroidx/work/impl/WorkerStoppedException;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# instance fields
.field private final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 574
    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput p1, p0, Landroidx/work/impl/WorkerStoppedException;->reason:I

    return-void
.end method


# virtual methods
.method public final getReason()I
    .locals 1

    .line 574
    iget v0, p0, Landroidx/work/impl/WorkerStoppedException;->reason:I

    return v0
.end method
