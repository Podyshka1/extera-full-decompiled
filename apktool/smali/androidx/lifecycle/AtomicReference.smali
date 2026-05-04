.class public final Landroidx/lifecycle/AtomicReference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final base:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/AtomicReference;->base:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method
