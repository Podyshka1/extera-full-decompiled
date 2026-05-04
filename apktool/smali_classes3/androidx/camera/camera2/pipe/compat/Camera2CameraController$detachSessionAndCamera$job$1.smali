.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $camera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

.field final synthetic $session:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$session:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$camera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$session:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$camera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCamera;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 426
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 427
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$session:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->shutdown()V

    .line 428
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$detachSessionAndCamera$job$1;->$camera:Landroidx/camera/camera2/pipe/compat/VirtualCamera;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroidx/camera/camera2/pipe/compat/VirtualCamera$-CC;->disconnect-TPqeGZw$default(Landroidx/camera/camera2/pipe/compat/VirtualCamera;Landroidx/camera/camera2/pipe/CameraError;ILjava/lang/Object;)V

    .line 429
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 426
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
