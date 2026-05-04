.class public final Landroidx/camera/camera2/pipe/media/SharedReference;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final count:Lkotlinx/atomicfu/AtomicInt;

.field private currentFinalizer:Lkotlinx/atomicfu/AtomicRef;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/camera/camera2/pipe/media/Finalizer;)V
    .locals 1

    const-string v0, "defaultFinalizer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 36
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->count:Lkotlinx/atomicfu/AtomicInt;

    .line 37
    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->currentFinalizer:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method


# virtual methods
.method public final acquireOrNull()Ljava/lang/Object;
    .locals 3

    .line 45
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->count:Lkotlinx/atomicfu/AtomicInt;

    .line 383
    :cond_0
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 385
    :goto_0
    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_2

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->value:Ljava/lang/Object;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final decrement()V
    .locals 2

    .line 66
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->count:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->currentFinalizer:Lkotlinx/atomicfu/AtomicRef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/media/Finalizer;

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/SharedReference;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/media/Finalizer;->finalize(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
