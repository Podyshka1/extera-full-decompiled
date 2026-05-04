.class final Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/FlashControl;->applyScreenFlash(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $onApplyCompletedSignal:Lkotlinx/coroutines/CompletableDeferred;

.field final synthetic $timeoutMillis:J

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableDeferred;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->$onApplyCompletedSignal:Lkotlinx/coroutines/CompletableDeferred;

    iput-wide p2, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->$timeoutMillis:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;

    iget-object v0, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->$onApplyCompletedSignal:Lkotlinx/coroutines/CompletableDeferred;

    iget-wide v1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->$timeoutMillis:J

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;-><init>(Lkotlinx/coroutines/CompletableDeferred;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 180
    iget v1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->label:I

    const/4 v2, 0x1

    const-string v3, "CXCP"

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

    .line 181
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string v1, "applyScreenFlash: Waiting for ScreenFlashListener to be completed"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->$onApplyCompletedSignal:Lkotlinx/coroutines/CompletableDeferred;

    iget-wide v4, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->$timeoutMillis:J

    iput v2, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->label:I

    invoke-static {p1, v4, v5, p0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->awaitUntil(Lkotlinx/coroutines/Deferred;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 189
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 189
    const-string v0, "applyScreenFlash: ScreenFlashListener completed"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_4
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    iget-wide v0, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$3;->$timeoutMillis:J

    .line 119
    invoke-static {v3}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyScreenFlash: ScreenFlashListener completion timed out after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, " ms"

    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
