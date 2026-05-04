.class final Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/workers/ConstraintTrackingWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstraintUnsatisfiedException"
.end annotation


# instance fields
.field private final stopReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;->stopReason:I

    return-void
.end method


# virtual methods
.method public final getStopReason()I
    .locals 1

    .line 153
    iget v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;->stopReason:I

    return v0
.end method
