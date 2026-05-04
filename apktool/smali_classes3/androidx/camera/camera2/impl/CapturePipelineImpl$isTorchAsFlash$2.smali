.class final Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->isTorchAsFlash(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;-><init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 808
    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iput v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$isTorchAsFlash$2;->label:I

    invoke-static {p1, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getFrameMetadata(Landroidx/camera/camera2/impl/CapturePipelineImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
