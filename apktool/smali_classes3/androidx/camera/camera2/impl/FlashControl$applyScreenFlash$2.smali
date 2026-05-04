.class final Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;
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
.field final synthetic $screenFlashListener:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

.field final synthetic $timeoutMillis:J

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/FlashControl;


# direct methods
.method constructor <init>(JLandroidx/camera/camera2/impl/FlashControl;Landroidx/camera/core/ImageCapture$ScreenFlashListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-wide p1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$timeoutMillis:J

    iput-object p3, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    iput-object p4, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$screenFlashListener:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;

    iget-wide v1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$timeoutMillis:J

    iget-object v3, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    iget-object v4, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$screenFlashListener:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;-><init>(JLandroidx/camera/camera2/impl/FlashControl;Landroidx/camera/core/ImageCapture$ScreenFlashListener;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 171
    iget v0, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$timeoutMillis:J

    add-long/2addr v0, v2

    .line 173
    iget-object p1, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/FlashControl;->getScreenFlash()Landroidx/camera/core/ImageCapture$ScreenFlash;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/camera/camera2/impl/FlashControl$applyScreenFlash$2;->$screenFlashListener:Landroidx/camera/core/ImageCapture$ScreenFlashListener;

    invoke-interface {p1, v0, v1, v2}, Landroidx/camera/core/ImageCapture$ScreenFlash;->apply(JLandroidx/camera/core/ImageCapture$ScreenFlashListener;)V

    .line 174
    :cond_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyScreenFlash: ScreenFlash.apply() invoked, expirationTimeMillis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 171
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
