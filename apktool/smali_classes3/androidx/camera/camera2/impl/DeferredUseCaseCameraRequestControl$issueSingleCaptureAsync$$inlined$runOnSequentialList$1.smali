.class public final Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $captureMode$inlined:I

.field final synthetic $captureSequence$inlined:Ljava/util/List;

.field final synthetic $flashMode$inlined:I

.field final synthetic $flashType$inlined:I

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;Ljava/util/List;III)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$captureSequence$inlined:Ljava/util/List;

    iput p4, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$captureMode$inlined:I

    iput p5, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$flashType$inlined:I

    iput p6, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$flashMode$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    iget-object v3, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$captureSequence$inlined:Ljava/util/List;

    iget v4, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$captureMode$inlined:I

    iget v5, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$flashType$inlined:I

    iget v6, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$flashMode$inlined:I

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;Ljava/util/List;III)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 206
    iget v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->access$getOrCreateImpl(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    move-result-object p1

    .line 208
    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$captureSequence$inlined:Ljava/util/List;

    iget v1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$captureMode$inlined:I

    iget v2, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$flashType$inlined:I

    iget v3, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$issueSingleCaptureAsync$$inlined$runOnSequentialList$1;->$flashMode$inlined:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
