.class final Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/FocusMeteringControl;->triggerAutoCancel(JLkotlinx/coroutines/CompletableDeferred;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $delayMillis:J

.field final synthetic $requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field final synthetic $resultToCancel:Lkotlinx/coroutines/CompletableDeferred;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/FocusMeteringControl;


# direct methods
.method constructor <init>(JLandroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-wide p1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$delayMillis:J

    iput-object p3, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->this$0:Landroidx/camera/camera2/impl/FocusMeteringControl;

    iput-object p4, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iput-object p5, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$resultToCancel:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;

    iget-wide v1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$delayMillis:J

    iget-object v3, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->this$0:Landroidx/camera/camera2/impl/FocusMeteringControl;

    iget-object v4, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v5, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$resultToCancel:Lkotlinx/coroutines/CompletableDeferred;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;-><init>(JLandroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 265
    iget v1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->label:I

    const/4 v2, 0x1

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

    .line 266
    iget-wide v3, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$delayMillis:J

    iput v2, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 267
    :cond_2
    :goto_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    iget-wide v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$delayMillis:J

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerAutoCancel: auto-canceling after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->this$0:Landroidx/camera/camera2/impl/FocusMeteringControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/FocusMeteringControl$triggerAutoCancel$1;->$resultToCancel:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {p1, v0, v1}, Landroidx/camera/camera2/impl/FocusMeteringControl;->access$cancelFocusAndMeteringNowAsync(Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Lkotlinx/coroutines/CompletableDeferred;)Lkotlinx/coroutines/Deferred;

    .line 269
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
