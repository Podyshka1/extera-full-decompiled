.class final Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $checkApi:Z

.field final synthetic $userId:J

.field label:I


# direct methods
.method constructor <init>(ZJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->$checkApi:Z

    iput-wide p2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->$userId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;

    iget-boolean v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->$checkApi:Z

    iget-wide v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->$userId:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;-><init>(ZJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    iget-boolean p1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->$checkApi:Z

    if-nez p1, :cond_2

    return-object v3

    .line 90
    :cond_2
    :try_start_1
    sget-object p1, Lcom/exteragram/messenger/api/network/ApiClient;->INSTANCE:Lcom/exteragram/messenger/api/network/ApiClient;

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/network/ApiClient;->getApiService()Lcom/exteragram/messenger/api/network/ApiService;

    move-result-object p1

    iget-wide v4, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->$userId:J

    iput v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1$liveTrackDeferred$1;->label:I

    invoke-interface {p1, v4, v5, p0}, Lcom/exteragram/messenger/api/network/ApiService;->getCurrentPlayingTrack(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 87
    :cond_3
    :goto_0
    check-cast p1, Lretrofit2/Response;

    .line 91
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :cond_4
    return-object v3

    .line 93
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v3
.end method
