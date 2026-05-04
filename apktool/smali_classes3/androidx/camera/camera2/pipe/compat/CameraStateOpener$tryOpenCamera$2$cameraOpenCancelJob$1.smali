.class final Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;-><init>(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 316
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 317
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->this$0:Landroidx/camera/camera2/pipe/compat/CameraStateOpener;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener;->access$getCameraOpenCancelled$p(Landroidx/camera/camera2/pipe/compat/CameraStateOpener;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput v3, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 318
    :cond_3
    :goto_0
    iput v2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1;->label:I

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 319
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
