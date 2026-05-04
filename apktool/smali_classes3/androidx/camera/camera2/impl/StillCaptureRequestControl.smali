.class public final Landroidx/camera/camera2/impl/StillCaptureRequestControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;
    }
.end annotation


# instance fields
.field private _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final flashControl:Landroidx/camera/camera2/impl/FlashControl;

.field private final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private final pendingRequests:Ljava/util/LinkedList;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method public static synthetic $r8$lambda$d94nr3kKLaWRlrxlGv5M4rvfiJA(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->propagateResultOrEnqueueRequest$lambda$0(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V
    .locals 1

    const-string v0, "flashControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    iput-object p2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 68
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->pendingRequests:Ljava/util/LinkedList;

    return-void
.end method

.method public static final synthetic access$getMutex$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->mutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getPendingRequests$p(Landroidx/camera/camera2/impl/StillCaptureRequestControl;)Ljava/util/LinkedList;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->pendingRequests:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static final synthetic access$propagateResultOrEnqueueRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->propagateResultOrEnqueueRequest(Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    return-void
.end method

.method public static final synthetic access$submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final propagateResultOrEnqueueRequest(Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 1

    .line 172
    new-instance v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method private static final propagateResultOrEnqueueRequest$lambda$0(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlinx/coroutines/Deferred;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 6

    .line 174
    instance-of v0, p4, Landroidx/camera/core/ImageCaptureException;

    if-eqz v0, :cond_0

    .line 175
    move-object v0, p4

    check-cast v0, Landroidx/camera/core/ImageCaptureException;

    invoke-virtual {v0}, Landroidx/camera/core/ImageCaptureException;->getImageCaptureError()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 177
    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p3, p2, p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$propagateResultOrEnqueueRequest$1$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    invoke-static {p1, p0, p4}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->propagateCompletion(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Throwable;)V

    .line 204
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;

    iget v1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;

    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 136
    iget v2, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->label:I

    const-string v3, "CXCP"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object p1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    sget-object p3, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p3

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StillCaptureRequestControl: submitting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    iget-object p3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    iput-object p1, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$1;->label:I

    invoke-virtual {p3, v0}, Landroidx/camera/camera2/impl/FlashControl;->awaitFlashModeUpdate(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 145
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "StillCaptureRequestControl: Issuing single capture"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_5
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getCaptureConfigs()Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getCaptureMode()I

    move-result v1

    .line 150
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;->getFlashType()I

    move-result v2

    .line 147
    invoke-interface {p2, v0, v1, v2, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;

    move-result-object p2

    .line 154
    iget-object p3, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {p3}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;

    const/4 p3, 0x0

    invoke-direct {v3, p2, p1, p3}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;-><init>(Ljava/util/List;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

.method private final trySubmitPendingRequests()V
    .locals 7

    .line 116
    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$trySubmitPendingRequests$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object v0
.end method

.method public reset()V
    .locals 7

    .line 71
    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getSequentialScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$reset$1;-><init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 53
    invoke-direct {p0}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->trySubmitPendingRequests()V

    return-void
.end method
