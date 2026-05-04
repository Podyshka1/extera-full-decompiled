.class final Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/FlashControl;->stopScreenFlashCaptureTasks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/FlashControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/FlashControl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;

    iget-object v0, p0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;-><init>(Landroidx/camera/camera2/impl/FlashControl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 260
    iget v0, p0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 261
    iget-object p1, p0, Landroidx/camera/camera2/impl/FlashControl$stopScreenFlashCaptureTasks$2;->this$0:Landroidx/camera/camera2/impl/FlashControl;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/FlashControl;->getScreenFlash()Landroidx/camera/core/ImageCapture$ScreenFlash;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/camera/core/ImageCapture$ScreenFlash;->clear()V

    .line 262
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

    .line 262
    const-string v0, "screenFlashPostCapture: ScreenFlash.clear() invoked"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 260
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
