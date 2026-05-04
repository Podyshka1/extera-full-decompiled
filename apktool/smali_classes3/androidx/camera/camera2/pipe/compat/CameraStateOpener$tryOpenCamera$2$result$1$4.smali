.class final Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cameraOpenCancelJob:Lkotlin/jvm/internal/Ref$ObjectRef;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;->$cameraOpenCancelJob:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;->$cameraOpenCancelJob:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 351
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 352
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 352
    const-string/jumbo v0, "tryOpenCamera: Camera open cancelled"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2$result$1$4;->$cameraOpenCancelJob:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 354
    new-instance p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    sget-object v1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_CAMERA_OPEN_TIMEOUT-v7Vf74A()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraError;->box-impl(I)Landroidx/camera/camera2/pipe/CameraError;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2, v0}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 351
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
