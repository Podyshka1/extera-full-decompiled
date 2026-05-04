.class final Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $captureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->this$0:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->$captureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->this$0:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->$captureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    invoke-direct {v0, v1, v2, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;-><init>(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 405
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 406
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->this$0:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " CameraCaptureSessionWrapper#close"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->$captureSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$disconnect$12;->this$0:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 72
    :try_start_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 407
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing capture session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 408
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState$ConfiguredCameraCaptureSession;->getSession()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    .line 409
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 410
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 79
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1

    .line 405
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
