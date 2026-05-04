.class final Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/LowLightBoostControl;->onSessionConfigChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $useCases:Ljava/util/List;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iput-object p2, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->$useCases:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->$useCases:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;-><init>(Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 135
    iget v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$onSessionConfigChanged$1;->$useCases:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$getSessionConfig(Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
