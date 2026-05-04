.class public final Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;
.super Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageOutput"
.end annotation


# instance fields
.field private final outputId:I

.field private final remainingOutputResults:Lkotlinx/atomicfu/AtomicInt;

.field private final streamId:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/internal/FrameState;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILkotlinx/atomicfu/AtomicInt;)V
    .locals 1

    const-string v0, "remainingOutputResults"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;-><init>()V

    .line 243
    iput p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    .line 244
    iput p3, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputId:I

    .line 245
    iput-object p4, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->remainingOutputResults:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILkotlinx/atomicfu/AtomicInt;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILkotlinx/atomicfu/AtomicInt;)V

    return-void
.end method


# virtual methods
.method public final getOutputId-4LaLFng()I
    .locals 1

    .line 244
    iget v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputId:I

    return v0
.end method

.method public final getStreamId-ptHMqGs()I
    .locals 1

    .line 243
    iget v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    return v0
.end method

.method public onOutputComplete-3ejhThk(JJJJLjava/lang/Object;)V
    .locals 0

    .line 45
    invoke-static {p9}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p1, p9

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 254
    :goto_0
    check-cast p1, Landroidx/camera/camera2/pipe/media/OutputImage;

    if-eqz p1, :cond_1

    .line 256
    sget-object p3, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->Companion:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;

    invoke-virtual {p3, p1}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;->from(Landroidx/camera/camera2/pipe/media/OutputImage;)Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p1

    .line 257
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getInternalResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p3

    .line 64
    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p4

    .line 72
    invoke-interface {p3, p4}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 258
    invoke-static {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    goto :goto_2

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getInternalResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    .line 56
    invoke-static {p9}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getAVAILABLE-U7r42EA()I

    move-result p3

    goto :goto_1

    :cond_2
    if-nez p9, :cond_3

    .line 57
    sget-object p3, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getUNAVAILABLE-U7r42EA()I

    move-result p3

    goto :goto_1

    .line 58
    :cond_3
    check-cast p9, Landroidx/camera/camera2/pipe/OutputStatus;

    invoke-virtual {p9}, Landroidx/camera/camera2/pipe/OutputStatus;->unbox-impl()I

    move-result p3

    .line 68
    :goto_1
    invoke-static {p3}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object p3

    invoke-static {p3}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p3

    .line 79
    invoke-interface {p1, p3}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 264
    :cond_4
    :goto_2
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->remainingOutputResults:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_6

    .line 265
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->access$getListenerStates$p(Landroidx/camera/camera2/pipe/internal/FrameState;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p3, "iterator(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_5

    .line 269
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    iget p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/internal/FrameState;->onStreamResultComplete-aKI5c8E(I)V

    return-void

    .line 265
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 266
    throw p2

    :cond_6
    return-void
.end method

.method protected release()V
    .locals 3

    .line 278
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getInternalResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-interface {v0}, Lkotlinx/coroutines/Deferred;->getCompleted()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    .line 278
    :cond_0
    check-cast v2, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
