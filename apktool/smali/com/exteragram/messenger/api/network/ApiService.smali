.class public interface abstract Lcom/exteragram/messenger/api/network/ApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAllProfiles(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/ProfileDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "profiles"
    .end annotation
.end method

.method public abstract getBoostySubscribers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "boosty-subscribers"
    .end annotation
.end method

.method public abstract getCurrentPlayingTrack(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/exteragram/messenger/api/dto/NowPlayingDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "profiles/{userId}/now-playing"
    .end annotation
.end method

.method public abstract getUpdates(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "since"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/api/dto/ProfileDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "profiles/updates"
    .end annotation
.end method
