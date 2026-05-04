.class public final Lcom/exteragram/messenger/nowplaying/NowPlayingController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;,
        Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;
    }
.end annotation


# static fields
.field private static final ARTISTS_SPLITTER:Lkotlin/text/Regex;

.field public static final INSTANCE:Lcom/exteragram/messenger/nowplaying/NowPlayingController;

.field private static final httpClient:Lokhttp3/OkHttpClient;

.field private static final itunesCache:Landroidx/collection/LruCache;

.field private static final jsonParser:Lkotlinx/serialization/json/Json;

.field private static final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$k4rZ7BWpnnwz-qGeJmjV_Xbyo7c(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->jsonParser$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController;

    invoke-direct {v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->INSTANCE:Lcom/exteragram/messenger/nowplaying/NowPlayingController;

    .line 55
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?i)\\s*(?:,|&|\\bfeat\\b\\.?|\\bft\\b\\.?)\\s*"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->ARTISTS_SPLITTER:Lkotlin/text/Regex;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    sput-object v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 59
    new-instance v2, Landroidx/collection/LruCache;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->itunesCache:Landroidx/collection/LruCache;

    .line 292
    sget-object v2, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v2}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 293
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 294
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    sput-object v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->httpClient:Lokhttp3/OkHttpClient;

    .line 298
    new-instance v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2, v1, v0}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->jsonParser:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$dbUpdateNowPlaying(Lcom/exteragram/messenger/nowplaying/NowPlayingController;JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->dbUpdateNowPlaying(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchItunesTrack(Lcom/exteragram/messenger/nowplaying/NowPlayingController;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->fetchItunesTrack(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNowPlayingInfoInternal(Lcom/exteragram/messenger/nowplaying/NowPlayingController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->getNowPlayingInfoInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processSavedMusic(Lcom/exteragram/messenger/nowplaying/NowPlayingController;Lorg/telegram/tgnet/TLRPC$Document;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->processSavedMusic(Lorg/telegram/tgnet/TLRPC$Document;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateNowPlayingInfoInternal(Lcom/exteragram/messenger/nowplaying/NowPlayingController;Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->updateNowPlayingInfoInternal(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final dbGetNowPlaying(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 427
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 433
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 264
    new-instance v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$dbGetNowPlaying$2$1;

    invoke-direct {v1, v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$dbGetNowPlaying$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-static {p1, p2, v1}, Lcom/exteragram/messenger/api/db/DatabaseHelper;->getNowPlaying(JLjava/util/function/Consumer;)V

    .line 435
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 426
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final dbUpdateNowPlaying(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 427
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 433
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 271
    new-instance v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$dbUpdateNowPlaying$2$1;

    invoke-direct {v1, v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$dbUpdateNowPlaying$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-static {p1, p2, p3, v1}, Lcom/exteragram/messenger/api/db/DatabaseHelper;->updateNowPlaying(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Ljava/util/function/Consumer;)V

    .line 435
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 426
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final fetchItunesTrack(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;

    iget v1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;

    invoke-direct {v0, p0, p3}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;-><init>(Lcom/exteragram/messenger/nowplaying/NowPlayingController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 300
    iget v2, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lokhttp3/Request;

    iget-object p1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lokhttp3/HttpUrl;

    iget-object p1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object p2, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 304
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-object v4

    .line 308
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 309
    sget-object v5, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->itunesCache:Landroidx/collection/LruCache;

    invoke-virtual {v5, p3}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_4

    return-object v5

    .line 313
    :cond_4
    sget-object v5, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v6, "https://itunes.apple.com/search"

    invoke-virtual {v5, v6}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 314
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "term"

    invoke-virtual {v5, v6, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 316
    const-string v5, "entity"

    const-string/jumbo v6, "song"

    invoke-virtual {v2, v5, v6}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 317
    const-string/jumbo v5, "limit"

    const-string v6, "5"

    invoke-virtual {v2, v5, v6}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 318
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_6

    return-object v4

    .line 324
    :cond_6
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 327
    :try_start_1
    sget-object v6, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v6, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$2:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$3:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$fetchItunesTrack$1;->label:I

    invoke-virtual {p0, v6, v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->await(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v7, p3

    move-object p3, p1

    move-object p1, v7

    .line 300
    :goto_2
    check-cast p3, Lokhttp3/Response;

    .line 328
    invoke-virtual {p3}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-nez p2, :cond_8

    return-object v4

    .line 331
    :cond_8
    sget-object p2, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->jsonParser:Lkotlinx/serialization/json/Json;

    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p3

    .line 222
    invoke-virtual {p2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->Companion:Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$Companion;

    invoke-virtual {v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p2, v0, p3}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;

    .line 331
    invoke-virtual {p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->getResults()Ljava/util/List;

    move-result-object p2

    .line 332
    sget-object p3, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->itunesCache:Landroidx/collection/LruCache;

    invoke-virtual {p3, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    .line 335
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v4
.end method

.method public static final getCurrentPlayingTrack(JLorg/telegram/tgnet/TLRPC$Document;ZLjava/util/function/BiConsumer;)Lkotlinx/coroutines/Job;
    .locals 9

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1;

    const/4 v8, 0x0

    move-wide v4, p0

    move-object v6, p2

    move v3, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getCurrentPlayingTrack$1;-><init>(ZJLorg/telegram/tgnet/TLRPC$Document;Ljava/util/function/BiConsumer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static final getNowPlayingInfo(Ljava/util/function/Consumer;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getNowPlayingInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$getNowPlayingInfo$1;-><init>(Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getNowPlayingInfoInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 227
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->dbGetNowPlaying(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final hasCommonArtist(Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;
    .locals 11

    if-eqz p2, :cond_d

    .line 178
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 181
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->ARTISTS_SPLITTER:Lkotlin/text/Regex;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Ljava/lang/String;

    .line 182
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 183
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 865
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 187
    :cond_4
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 1761
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 1762
    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toLowerCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "translitSafe(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1761
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 1762
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v1

    :cond_8
    if-ge v7, v6, :cond_6

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;

    .line 192
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 196
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 197
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    move-object p1, p2

    .line 202
    :cond_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 185
    :cond_c
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 178
    :cond_d
    :goto_5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public static final isSeparateStylesSupported()Z
    .locals 2

    .line 74
    const-string/jumbo v0, "separate_music_styles"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getBooleanConfigValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "getBooleanConfigValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final jsonParser$lambda$0(Lkotlinx/serialization/json/JsonBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 298
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final processSavedMusic(Lorg/telegram/tgnet/TLRPC$Document;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;

    iget v3, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;

    invoke-direct {v2, v0, v1}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;-><init>(Lcom/exteragram/messenger/nowplaying/NowPlayingController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 117
    iget v4, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    iget-object v4, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v4, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v2, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v3

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_3

    return-object v6

    .line 120
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/ProfileMusicView;->getTitle(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_4

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v1, v6

    :goto_1
    if-nez v1, :cond_5

    .line 121
    sget v1, Lorg/telegram/messenger/R$string;->AudioUnknownTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v8, v1

    .line 122
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/ProfileMusicView;->getAuthor(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_6

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v1, v6

    :goto_2
    if-nez v1, :cond_7

    .line 123
    sget v1, Lorg/telegram/messenger/R$string;->AudioUnknownArtist:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-eqz v8, :cond_16

    if-nez v1, :cond_8

    goto/16 :goto_a

    .line 128
    :cond_8
    sget-object v4, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->ARTISTS_SPLITTER:Lkotlin/text/Regex;

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1563
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1635
    check-cast v10, Ljava/lang/String;

    .line 128
    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1635
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 774
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    :cond_a
    :goto_4
    if-ge v7, v10, :cond_b

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 128
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_a

    .line 865
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 129
    :cond_b
    new-instance v7, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    .line 138
    const-string v16, "TELEGRAM"

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v4

    .line 129
    invoke-direct/range {v7 .. v17}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    invoke-static {}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->isSeparateStylesSupported()Z

    move-result v4

    if-eqz v4, :cond_c

    return-object v7

    .line 146
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$2:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->L$4:Ljava/lang/Object;

    iput v5, v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$processSavedMusic$1;->label:I

    invoke-direct {v0, v1, v8, v2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->fetchItunesTrack(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    return-object v3

    .line 117
    :cond_d
    :goto_5
    check-cast v1, Ljava/util/List;

    .line 148
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_15

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_9

    .line 152
    :cond_e
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;

    .line 153
    sget-object v8, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->INSTANCE:Lcom/exteragram/messenger/nowplaying/NowPlayingController;

    invoke-virtual {v7}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getArtists()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->getArtistName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->hasCommonArtist(Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 154
    invoke-virtual {v4}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->getTrackName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getTrackName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v8, :cond_f

    move-object v6, v3

    .line 152
    :cond_10
    check-cast v6, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;

    if-nez v6, :cond_11

    .line 155
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;

    .line 158
    :cond_11
    invoke-virtual {v7}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getArtists()Ljava/util/List;

    move-result-object v1

    .line 159
    invoke-virtual {v6}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->hasCommonArtist(Ljava/util/List;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 164
    invoke-virtual {v6}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->getCollectionName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-virtual {v7}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    :cond_12
    move-object v10, v1

    .line 165
    invoke-virtual {v6}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->getArtworkUrl100()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_7

    .line 166
    :cond_13
    invoke-virtual {v6}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->getArtworkUrl100()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "100x100"

    const-string v13, "300x300"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v11, v1

    goto :goto_8

    .line 168
    :cond_14
    :goto_7
    invoke-virtual {v7}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 170
    :goto_8
    invoke-virtual {v7}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPlatform()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x2f1

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 162
    invoke-static/range {v7 .. v19}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->copy$default(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    move-result-object v1

    return-object v1

    :cond_15
    :goto_9
    return-object v7

    :cond_16
    :goto_a
    return-object v6
.end method

.method public static final shouldShowCard(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getNowPlayingDTO()Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPlatform()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TELEGRAM"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 66
    invoke-static {}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->isSeparateStylesSupported()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public static final updateNowPlayingInfo(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLjava/util/function/Consumer;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfo$1;-><init>(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLjava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic updateNowPlayingInfo$default(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLjava/util/function/Consumer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 215
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController;->updateNowPlayingInfo(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLjava/util/function/Consumer;)V

    return-void
.end method

.method private final updateNowPlayingInfoInternal(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 233
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfoInternal$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$updateNowPlayingInfoInternal$2;-><init>(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final await(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 427
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 433
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 342
    new-instance v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$await$2$1;

    invoke-direct {v1, p1}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$await$2$1;-><init>(Lokhttp3/Call;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 346
    new-instance v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$await$2$2;

    invoke-direct {v1, v0}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$await$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 435
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 426
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method
