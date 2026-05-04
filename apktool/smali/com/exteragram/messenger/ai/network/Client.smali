.class public Lcom/exteragram/messenger/ai/network/Client;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/ai/network/Client$Builder;
    }
.end annotation


# static fields
.field private static final STREAM_SYMBOLS_LIMIT:I


# instance fields
.field private final activeRequests:Lj$/util/concurrent/ConcurrentHashMap;

.field private final conversationHistory:Ljava/util/ArrayList;

.field private final httpClient:Lokhttp3/OkHttpClient;

.field private final isGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final roleOverride:Lcom/exteragram/messenger/ai/data/Role;

.field private final serviceOverride:Lcom/exteragram/messenger/ai/data/Service;


# direct methods
.method public static synthetic $r8$lambda$3ib7nYkXsmrxVprrGF0CVKzxIi8(Lcom/exteragram/messenger/ai/network/GenerationCallback;Lokhttp3/Response;)V
    .locals 2

    .line 167
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    .line 168
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-interface {p0, v0, p1}, Lcom/exteragram/messenger/ai/network/GenerationCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JlF_A-mYce5S2-35INYFhSLFbrY(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 323
    invoke-interface {p0, p1}, Lcom/exteragram/messenger/ai/network/GenerationCallback;->onChunk(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$MuNrBt4jT3k4QtflgPS222SDymo(Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/exteragram/messenger/ai/network/Client;->lambda$getResponse$6(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0t6SbPo7OcI8mRF1Rxjj-5Cdac(Lcom/exteragram/messenger/ai/network/GenerationCallback;)V
    .locals 2

    const/16 v0, 0x1f4

    .line 191
    const-string v1, "Failed to parse response"

    invoke-interface {p0, v0, v1}, Lcom/exteragram/messenger/ai/network/GenerationCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAip9f_JL-AYRVjLJBBdmGazW6E(Lcom/exteragram/messenger/ai/network/GenerationCallback;)V
    .locals 2

    const/16 v0, 0xcc

    .line 176
    const-string v1, "Response body is null"

    invoke-interface {p0, v0, v1}, Lcom/exteragram/messenger/ai/network/GenerationCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_umHLPr_qLu-GhRzT6qAtUHXs9w(Lcom/exteragram/messenger/ai/network/Client;Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/network/Client;->lambda$handleStreamResponse$8(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eotT3-L8XUlmnPCkitmz50bB6SM(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/Exception;)V
    .locals 1

    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Unknown error"

    :goto_0
    const/16 v0, 0x1f4

    .line 214
    invoke-interface {p0, v0, p1}, Lcom/exteragram/messenger/ai/network/GenerationCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kDi7EEebE59VwnRylGRVmonIGEk(Lcom/exteragram/messenger/ai/network/GenerationCallback;)V
    .locals 2

    const/16 v0, 0x1f4

    .line 147
    const-string v1, "Failed to create request body"

    invoke-interface {p0, v0, v1}, Lcom/exteragram/messenger/ai/network/GenerationCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uvYeVq12U0uCxA35-7PMPdPnszU(Lcom/exteragram/messenger/ai/network/Client;Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/network/Client;->lambda$getResponse$4(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 56
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    sput v0, Lcom/exteragram/messenger/ai/network/Client;->STREAM_SYMBOLS_LIMIT:I

    return-void
.end method

.method private constructor <init>(Lcom/exteragram/messenger/ai/network/Client$Builder;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/exteragram/messenger/ai/network/Client;->isGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/ai/network/Client;->activeRequests:Lj$/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-static {p1}, Lcom/exteragram/messenger/ai/network/Client$Builder;->-$$Nest$fgetserviceOverride(Lcom/exteragram/messenger/ai/network/Client$Builder;)Lcom/exteragram/messenger/ai/data/Service;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/ai/network/Client;->serviceOverride:Lcom/exteragram/messenger/ai/data/Service;

    .line 71
    invoke-static {p1}, Lcom/exteragram/messenger/ai/network/Client$Builder;->-$$Nest$fgetroleOverride(Lcom/exteragram/messenger/ai/network/Client$Builder;)Lcom/exteragram/messenger/ai/data/Role;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/ai/network/Client;->roleOverride:Lcom/exteragram/messenger/ai/data/Role;

    .line 72
    sget-object p1, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {p1}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/exteragram/messenger/ai/network/ProxyDns;->INSTANCE:Lokhttp3/Dns;

    .line 73
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 74
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/16 v1, 0x5

    .line 75
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/ai/network/Client;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/exteragram/messenger/ai/network/Client$Builder;Lcom/exteragram/messenger/ai/network/Client-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/network/Client;-><init>(Lcom/exteragram/messenger/ai/network/Client$Builder;)V

    return-void
.end method

.method private createMessageObject(Lcom/exteragram/messenger/ai/data/Message;)Lorg/json/JSONObject;
    .locals 7

    .line 294
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 295
    const-string/jumbo v1, "role"

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Message;->role()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Message;->getImageData()[B

    move-result-object v1

    const-string v2, "content"

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Message;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 300
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Message;->content()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string/jumbo v4, "type"

    if-nez v3, :cond_0

    .line 301
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 302
    const-string/jumbo v5, "text"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 303
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Message;->content()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 301
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Message;->getImageData()[B

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Message;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";base64,"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 308
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 309
    const-string v5, "image_url"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "url"

    .line 310
    invoke-virtual {v4, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 308
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 312
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 314
    :cond_1
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Message;->content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private createRequest(Lcom/exteragram/messenger/ai/data/Service;Ljava/lang/String;ZZ[BLjava/lang/String;)Lokhttp3/Request;
    .locals 8

    .line 225
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 229
    :cond_0
    const-string v1, "generativelanguage.googleapis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    const-string v0, "https://generativelanguage.googleapis.com/v1beta/openai/"

    .line 232
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "chat/completions"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/chat/completions"

    goto :goto_0

    .line 234
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 235
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 238
    :try_start_0
    iget-object v4, p0, Lcom/exteragram/messenger/ai/network/Client;->roleOverride:Lcom/exteragram/messenger/ai/data/Role;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/exteragram/messenger/ai/network/Client;->serviceOverride:Lcom/exteragram/messenger/ai/data/Service;

    if-nez v4, :cond_4

    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/exteragram/messenger/ai/AiController;->getSelectedRole()Lcom/exteragram/messenger/ai/data/Role;

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_4
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_5

    .line 239
    invoke-virtual {v4}, Lcom/exteragram/messenger/ai/data/Role;->getPrompt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 240
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "role"

    const-string/jumbo v7, "system"

    .line 241
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "content"

    .line 242
    invoke-virtual {v4}, Lcom/exteragram/messenger/ai/data/Role;->getPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 240
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_5
    const-string/jumbo v4, "user"

    if-eqz p4, :cond_7

    .line 246
    :try_start_1
    iget-object p4, p0, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object p4, p0, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->getConversationHistory()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object p4, p0, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/exteragram/messenger/ai/data/Message;

    .line 250
    invoke-direct {p0, v7}, Lcom/exteragram/messenger/ai/network/Client;->createMessageObject(Lcom/exteragram/messenger/ai/data/Message;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 253
    :cond_6
    new-instance p4, Lcom/exteragram/messenger/ai/data/Message;

    invoke-direct {p4, v4, p2, p5, p6}, Lcom/exteragram/messenger/ai/data/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 254
    iget-object p2, p0, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-direct {p0, p4}, Lcom/exteragram/messenger/ai/network/Client;->createMessageObject(Lcom/exteragram/messenger/ai/data/Message;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 257
    :cond_7
    new-instance p4, Lcom/exteragram/messenger/ai/data/Message;

    invoke-direct {p4, v4, p2, p5, p6}, Lcom/exteragram/messenger/ai/data/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/exteragram/messenger/ai/network/Client;->createMessageObject(Lcom/exteragram/messenger/ai/data/Message;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 260
    :goto_4
    const-string/jumbo p2, "model"

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->getModel()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo p2, "messages"

    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo p2, "stream"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo p2, "temperature"

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo p2, "max_tokens"

    const/16 p3, 0x1000

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AI_REQUEST_URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AI_REQUEST_MODEL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->getModel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AI_REQUEST_JSON: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x2

    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 279
    const-string p3, "application/json"

    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p4

    .line 277
    invoke-static {p2, p4}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 282
    new-instance p4, Lokhttp3/Request$Builder;

    invoke-direct {p4}, Lokhttp3/Request$Builder;-><init>()V

    .line 283
    invoke-virtual {p4, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p4

    const-string p5, "Content-Type"

    .line 284
    invoke-virtual {p4, p5, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Bearer "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/data/Service;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Authorization"

    invoke-virtual {p3, p4, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p3, "User-Agent"

    .line 286
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->formatUserAgent()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p3, "HTTP-Referer"

    const-string p4, "exteragram.app"

    .line 287
    invoke-virtual {p1, p3, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p3, "X-Title"

    const-string p4, "exteraGram"

    .line 288
    invoke-virtual {p1, p3, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 290
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 273
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 83
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const-string p0, "image/png"

    return-object p0

    .line 85
    :cond_1
    const-string v0, ".webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-string p0, "image/webp"

    return-object p0

    .line 87
    :cond_2
    const-string v0, ".heic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".heif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 90
    :cond_3
    const-string p0, "image/jpeg"

    return-object p0

    .line 88
    :cond_4
    :goto_0
    const-string p0, "image/heic"

    return-object p0
.end method

.method private getSelectedService()Lcom/exteragram/messenger/ai/data/Service;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/exteragram/messenger/ai/network/Client;->serviceOverride:Lcom/exteragram/messenger/ai/data/Service;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/AiController;->getSelected()Lcom/exteragram/messenger/ai/data/Service;

    move-result-object v0

    return-object v0
.end method

.method private handleStreamResponse(Lokhttp3/ResponseBody;Ljava/lang/String;ZLcom/exteragram/messenger/ai/network/GenerationCallback;)V
    .locals 5

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :goto_0
    move v2, p1

    .line 335
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 336
    iget-object v4, p0, Lcom/exteragram/messenger/ai/network/Client;->activeRequests:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 339
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 340
    :cond_2
    const-string v4, "data: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    .line 341
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 342
    const-string v4, "[DONE]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v2, :cond_4

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/exteragram/messenger/ai/network/Client;->sendStreamChunk(Ljava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    .line 349
    invoke-direct {p0, v3, v4}, Lcom/exteragram/messenger/ai/network/Client;->parseResponseContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 353
    sget v3, Lcom/exteragram/messenger/ai/network/Client;->STREAM_SYMBOLS_LIMIT:I

    if-lt v2, v3, :cond_0

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/exteragram/messenger/ai/network/Client;->sendStreamChunk(Ljava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    .line 333
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 361
    :goto_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 364
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p3, :cond_5

    .line 367
    iget-object p3, p0, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    new-instance v0, Lcom/exteragram/messenger/ai/data/Message;

    const-string v1, "assistant"

    invoke-direct {v0, v1, p1}, Lcom/exteragram/messenger/ai/data/Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object p3, p0, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/exteragram/messenger/ai/AiConfig;->saveConversationHistory(Ljava/util/ArrayList;)V

    .line 370
    :cond_5
    new-instance p3, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p4, p1, p2}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda8;-><init>(Lcom/exteragram/messenger/ai/network/Client;Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 377
    :cond_6
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private synthetic lambda$getResponse$4(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p1, p2}, Lcom/exteragram/messenger/ai/network/GenerationCallback;->onResponse(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0, p3}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getResponse$6(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/exteragram/messenger/ai/network/Client;->isGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    :try_start_0
    invoke-static {p1}, Lcom/exteragram/messenger/ai/AiController;->canSendImage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    .line 140
    :try_start_1
    invoke-static {p1}, Lcom/exteragram/messenger/ai/network/Client;->loadImageToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 141
    invoke-static {p1}, Lcom/exteragram/messenger/ai/network/Client;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, p1

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    move-object v6, v0

    move-object v7, v6

    .line 144
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/network/Client;->getSelectedService()Lcom/exteragram/messenger/ai/data/Service;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/exteragram/messenger/ai/network/Client;->createRequest(Lcom/exteragram/messenger/ai/data/Service;Ljava/lang/String;ZZ[BLjava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_1

    .line 146
    invoke-virtual {p0, p5}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    .line 147
    new-instance p1, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda2;

    invoke-direct {p1, p6}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto/16 :goto_6

    .line 154
    :cond_1
    iget-object p2, v1, Lcom/exteragram/messenger/ai/network/Client;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 155
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-nez p2, :cond_3

    .line 157
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_2

    .line 159
    :try_start_5
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 160
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AI_ERROR_RESPONSE_BODY ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "): "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p2, v0

    .line 162
    :try_start_6
    const-string p3, "AI_ERROR_READING_RESPONSE_BODY: "

    invoke-static {p3, p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_2
    :goto_2
    invoke-virtual {p0, p5}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    .line 166
    new-instance p2, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda3;

    invoke-direct {p2, p6, p1}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;Lokhttp3/Response;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 210
    :try_start_7
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return-void

    .line 173
    :cond_3
    :try_start_8
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-nez p2, :cond_4

    .line 175
    invoke-virtual {p0, p5}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    .line 176
    new-instance p2, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda4;

    invoke-direct {p2, p6}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 184
    invoke-direct {p0, p2, p5, v5, p6}, Lcom/exteragram/messenger/ai/network/Client;->handleStreamResponse(Lokhttp3/ResponseBody;Ljava/lang/String;ZLcom/exteragram/messenger/ai/network/GenerationCallback;)V

    goto :goto_3

    .line 186
    :cond_5
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 187
    invoke-direct {p0, p2, p3}, Lcom/exteragram/messenger/ai/network/Client;->parseResponseContent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    .line 190
    invoke-virtual {p0, p5}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    .line 191
    new-instance p2, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda5;

    invoke-direct {p2, p6}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 210
    :goto_3
    :try_start_9
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    return-void

    :cond_6
    if-eqz v5, :cond_7

    .line 199
    :try_start_a
    iget-object p3, v1, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    new-instance p4, Lcom/exteragram/messenger/ai/data/Message;

    const-string v0, "assistant"

    invoke-direct {p4, v0, p2}, Lcom/exteragram/messenger/ai/data/Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object p3, v1, Lcom/exteragram/messenger/ai/network/Client;->conversationHistory:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/exteragram/messenger/ai/AiConfig;->saveConversationHistory(Ljava/util/ArrayList;)V

    .line 203
    :cond_7
    new-instance p3, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p6, p2, p5}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/ai/network/Client;Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :goto_4
    if-eqz p1, :cond_8

    .line 154
    :try_start_b
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_c
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw p2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :catch_3
    move-exception v0

    move-object v1, p0

    goto/16 :goto_1

    .line 212
    :goto_6
    const-string p2, "AI Error: "

    invoke-static {p2, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {p0, p5}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    .line 214
    new-instance p2, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda7;

    invoke-direct {p2, p6, p1}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/Exception;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$handleStreamResponse$8(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 372
    invoke-interface {p1, p2}, Lcom/exteragram/messenger/ai/network/GenerationCallback;->onResponse(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, p3}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static loadImageToByteArray(Ljava/lang/String;)[B
    .locals 6

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 95
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_6

    .line 99
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    return-object v1

    .line 103
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x400

    .line 106
    :try_start_2
    new-array v3, v3, [B

    .line 108
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x0

    .line 109
    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 103
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 114
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    return-object v1
.end method

.method private parseResponseContent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 383
    const-string v0, "content"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    const-string p1, "choices"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 386
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 387
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 388
    const-string p2, "delta"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string/jumbo p2, "message"

    :goto_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 390
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 394
    :cond_1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    :goto_1
    return-object v1

    .line 397
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    return-object v1
.end method

.method private sendStreamChunk(Ljava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)V
    .locals 1

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p1}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda9;-><init>(Lcom/exteragram/messenger/ai/network/GenerationCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getResponse(Ljava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/ai/network/Client;->getResponse(Ljava/lang/String;ZZLjava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponse(Ljava/lang/String;ZZLjava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)Ljava/lang/String;
    .locals 9

    .line 128
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 129
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/exteragram/messenger/ai/network/Client;->activeRequests:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v1, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v5, p3

    move-object v3, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/exteragram/messenger/ai/network/Client$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v7
.end method

.method public isGenerating()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/exteragram/messenger/ai/network/Client;->isGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public stopRequest(Ljava/lang/String;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/exteragram/messenger/ai/network/Client;->activeRequests:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_0

    .line 409
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 412
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 417
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/ai/network/Client;->activeRequests:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/exteragram/messenger/ai/network/Client;->isGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
