.class public Lcom/exteragram/messenger/translators/DeepLTranslator;
.super Lcom/exteragram/messenger/translators/BaseTranslator;
.source "SourceFile"


# static fields
.field private static final SUPPORTED_LANGUAGES:Ljava/util/Set;

.field private static final client:Lokhttp3/OkHttpClient;

.field private static instance:Lcom/exteragram/messenger/translators/DeepLTranslator;


# direct methods
.method public static synthetic $r8$lambda$C3t8HA5LdSNw5SCJiN1vp78rw6U(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4

    .line 47
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    .line 48
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    .line 51
    new-instance v2, Lokio/GzipSource;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v2, v1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 52
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v2}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object v2

    .line 56
    sget-object v3, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lokhttp3/ResponseBody$Companion;->create([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v0}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 63
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 31

    .line 45
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/translators/DeepLTranslator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/exteragram/messenger/translators/DeepLTranslator$$ExternalSyntheticLambda1;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/translators/DeepLTranslator;->client:Lokhttp3/OkHttpClient;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    const-string v29, "uk"

    const-string v30, "zh"

    const-string v1, "bg"

    const-string v2, "cs"

    const-string v3, "da"

    const-string v4, "de"

    const-string v5, "el"

    const-string v6, "en"

    const-string v7, "en-GB"

    const-string v8, "en-US"

    const-string v9, "es"

    const-string v10, "fi"

    const-string v11, "fr"

    const-string v12, "hu"

    const-string v13, "id"

    const-string v14, "it"

    const-string v15, "ja"

    const-string v16, "lt"

    const-string v17, "lv"

    const-string v18, "nl"

    const-string v19, "pl"

    const-string v20, "pt"

    const-string v21, "pt-BR"

    const-string v22, "pt-PT"

    const-string v23, "ro"

    const-string v24, "ru"

    const-string v25, "sk"

    const-string v26, "sl"

    const-string v27, "sv"

    const-string v28, "tr"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/translators/DeepLTranslator$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/exteragram/messenger/translators/DeepLTranslator;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/exteragram/messenger/translators/BaseTranslator;-><init>()V

    return-void
.end method

.method private static getFormality()Ljava/lang/String;
    .locals 2

    .line 191
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->translationFormality:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_0
    const-string v0, "formal"

    return-object v0

    .line 192
    :cond_1
    const-string v0, "informal"

    return-object v0
.end method

.method public static getInstance()Lcom/exteragram/messenger/translators/DeepLTranslator;
    .locals 1

    .line 79
    sget-object v0, Lcom/exteragram/messenger/translators/DeepLTranslator;->instance:Lcom/exteragram/messenger/translators/DeepLTranslator;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/exteragram/messenger/translators/DeepLTranslator;

    invoke-direct {v0}, Lcom/exteragram/messenger/translators/DeepLTranslator;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/translators/DeepLTranslator;->instance:Lcom/exteragram/messenger/translators/DeepLTranslator;

    .line 82
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/translators/DeepLTranslator;->instance:Lcom/exteragram/messenger/translators/DeepLTranslator;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "DeepL"

    return-object v0
.end method

.method public getSupportedLanguages()Ljava/util/Set;
    .locals 1

    .line 92
    sget-object v0, Lcom/exteragram/messenger/translators/DeepLTranslator;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    return-object v0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 9

    .line 98
    const-string v0, "-"

    .line 99
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 100
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 102
    aget-object v1, p3, v3

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p3

    move-object p3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 106
    const-string v1, "auto"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string p2, ""

    .line 109
    :cond_1
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    const-wide/16 v4, 0x1

    const-wide v6, 0x2540be400L

    invoke-virtual {v1, v4, v5, v6, v7}, Lj$/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v4

    .line 111
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v6, "method"

    const-string v7, "LMT_handle_texts"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v6, "id"

    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 114
    const-string v6, "jsonrpc"

    const-string v7, "2.0"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string v7, "splitting"

    const-string v8, "newlines"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v7, "priority"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 121
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 122
    const-string v8, "requestAlternatives"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    const-string v8, "text"

    invoke-virtual {v7, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    const-string p1, "texts"

    invoke-virtual {v6, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    const-string v2, "target_lang"

    invoke-virtual {p1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string p3, "source_lang_user_selected"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string p2, "lang"

    invoke-virtual {v6, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    const-string p2, "regionalVariant"

    if-nez v0, :cond_2

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string p2, "wasSpoken"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 135
    const-string p2, "formality"

    invoke-static {}, Lcom/exteragram/messenger/translators/DeepLTranslator;->getFormality()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    sget-object p3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/exteragram/messenger/translators/DeepLTranslator;->getFormality()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string p2, "commonJobParams"

    invoke-virtual {v6, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string p1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v6, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 139
    const-string p1, "params"

    invoke-virtual {v1, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, 0x3

    add-long/2addr p2, v4

    const-wide/16 v0, 0xd

    .line 143
    rem-long/2addr p2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    const-string p3, "hod\":\""

    if-eqz p2, :cond_5

    const-wide/16 v2, 0x5

    add-long/2addr v4, v2

    const-wide/16 v2, 0x1d

    :try_start_1
    rem-long/2addr v4, v2

    cmp-long p2, v4, v0

    if-nez p2, :cond_4

    goto :goto_2

    .line 145
    :cond_4
    const-string p2, "hod\": \""

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 144
    :cond_5
    :goto_2
    const-string p2, "hod\" : \""

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 147
    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 148
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "https://www2.deepl.com/jsonrpc"

    .line 149
    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "referer"

    const-string v1, "https://www.deepl.com/"

    .line 150
    invoke-virtual {p3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "user-agent"

    const-string v1, "DeepL/25.2.1(150) Android 14 (Pixel 7 Pro;aarch64)"

    .line 151
    invoke-virtual {p3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "x-app-os-name"

    const-string v1, "Android"

    .line 152
    invoke-virtual {p3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "x-app-os-version"

    const-string v1, "14"

    .line 153
    invoke-virtual {p3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "x-app-version"

    const-string v1, "25.2.1"

    .line 154
    invoke-virtual {p3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "x-app-build"

    const-string v1, "150"

    .line 155
    invoke-virtual {p3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "x-app-device"

    const-string v1, "Pixel 7 Pro"

    .line 156
    invoke-virtual {p3, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p3

    const-string v0, "x-app-instance-id"

    .line 157
    invoke-virtual {p3, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string p3, "accept-encoding"

    const-string v0, "gzip"

    .line 158
    invoke-virtual {p2, p3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    sget-object p3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lokhttp3/RequestBody$Companion;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 162
    sget-object p2, Lcom/exteragram/messenger/translators/DeepLTranslator;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/exteragram/messenger/translators/DeepLTranslator$1;

    invoke-direct {p2, p0, p4}, Lcom/exteragram/messenger/translators/DeepLTranslator$1;-><init>(Lcom/exteragram/messenger/translators/DeepLTranslator;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 185
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 186
    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
