.class public abstract Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FrameOutput"
.end annotation


# instance fields
.field private final count:Lkotlinx/atomicfu/AtomicInt;

.field private final internalResult:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 171
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->count:Lkotlinx/atomicfu/AtomicInt;

    const/4 v1, 0x0

    .line 177
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->internalResult:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final decrement()V
    .locals 2

    .line 194
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->count:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->internalResult:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v1, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result v1

    .line 68
    invoke-static {v1}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object v1

    .line 79
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->release()V

    :cond_0
    return-void
.end method

.method protected final getInternalResult()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->internalResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method protected abstract release()V
.end method
