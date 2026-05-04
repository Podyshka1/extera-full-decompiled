.class final Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/StillCaptureRequestControl;->submitRequest(Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $deferredList:Ljava/util/List;

.field final synthetic $request:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->$deferredList:Ljava/util/List;

    iput-object p2, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->$request:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;

    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->$deferredList:Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->$request:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;-><init>(Ljava/util/List;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 154
    iget v1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->label:I

    const-string v2, "StillCaptureRequestControl: Waiting for deferred list from "

    const-string v3, "CXCP"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->$request:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    .line 85
    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->$deferredList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iput v4, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 154
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/StillCaptureRequestControl$submitRequest$4;->$request:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 161
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " done"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p1
.end method
