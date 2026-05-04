.class public final Landroidx/datastore/preferences/core/AtomicBoolean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final delegate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/datastore/preferences/core/AtomicBoolean;->delegate:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/datastore/preferences/core/AtomicBoolean;->delegate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final set(Z)V
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/datastore/preferences/core/AtomicBoolean;->delegate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
