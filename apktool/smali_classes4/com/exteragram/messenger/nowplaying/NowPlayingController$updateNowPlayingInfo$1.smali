.class final Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/nowplaying/NowPlayingController;->updateNowPlayingInfo(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLjava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cache:Z

.field final synthetic $callback:Ljava/util/function/Consumer;

.field final synthetic $newNowPlaying:Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

.field label:I


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLjava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$newNowPlaying:Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    iput-boolean p2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$cache:Z

    iput-object p3, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$callback:Ljava/util/function/Consumer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;

    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$newNowPlaying:Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    iget-boolean v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$cache:Z

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$callback:Ljava/util/function/Consumer;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;-><init>(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLjava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 220
    iget v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->label:I

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

    .line 221
    sget-object p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->INSTANCE:Lcom/exteragram/messenger/nowplaying/NowPlayingController;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$newNowPlaying:Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    iget-boolean v3, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$cache:Z

    iput v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->label:I

    invoke-static {p1, v1, v3, p0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->access$updateNowPlayingInfoInternal(Lcom/exteragram/messenger/nowplaying/NowPlayingController;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 222
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;->$callback:Ljava/util/function/Consumer;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 223
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
