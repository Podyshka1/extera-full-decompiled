.class public abstract Lkotlinx/coroutines/internal/Concurrent_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getValue(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final setValue(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
