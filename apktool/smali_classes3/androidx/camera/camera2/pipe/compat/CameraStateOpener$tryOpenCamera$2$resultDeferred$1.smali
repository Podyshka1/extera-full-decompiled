.class final Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;
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
.field final synthetic $cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 290
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 291
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance v1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1;

    invoke-direct {v1, v3}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 290
    :cond_2
    :goto_0
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 293
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    if-eqz v0, :cond_3

    new-instance p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v3, v1, v3}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 294
    :cond_3
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    .line 296
    new-instance v0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-direct {v0, v3, p1, v2, v3}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 299
    :cond_4
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    if-eqz v0, :cond_5

    .line 300
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    .line 301
    new-instance v0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->getCameraErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;

    move-result-object p1

    invoke-direct {v0, v3, p1, v2, v3}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 304
    :cond_5
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    if-eqz v0, :cond_6

    .line 305
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$resultDeferred$1;->$cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
