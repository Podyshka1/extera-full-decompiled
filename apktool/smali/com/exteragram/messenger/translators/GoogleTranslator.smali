.class public Lcom/exteragram/messenger/translators/GoogleTranslator;
.super Lcom/exteragram/messenger/translators/BaseTranslator;
.source "SourceFile"


# static fields
.field private static final client:Lokhttp3/OkHttpClient;

.field private static instance:Lcom/exteragram/messenger/translators/GoogleTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/translators/GoogleTranslator;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/exteragram/messenger/translators/BaseTranslator;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/exteragram/messenger/translators/GoogleTranslator;
    .locals 1

    .line 41
    sget-object v0, Lcom/exteragram/messenger/translators/GoogleTranslator;->instance:Lcom/exteragram/messenger/translators/GoogleTranslator;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/exteragram/messenger/translators/GoogleTranslator;

    invoke-direct {v0}, Lcom/exteragram/messenger/translators/GoogleTranslator;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/translators/GoogleTranslator;->instance:Lcom/exteragram/messenger/translators/GoogleTranslator;

    .line 44
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/translators/GoogleTranslator;->instance:Lcom/exteragram/messenger/translators/GoogleTranslator;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "Google"

    return-object v0
.end method

.method public getSupportedLanguages()Ljava/util/Set;
    .locals 1

    .line 54
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 2

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://translate.googleapis.com/translate_a/single?dj=1&q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UTF-8"

    .line 61
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&tl="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ie=UTF-8&oe=UTF-8&client=at&dt=t&otf=2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 67
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "User-Agent"

    .line 68
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->formatUserAgent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 71
    sget-object p2, Lcom/exteragram/messenger/translators/GoogleTranslator;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/exteragram/messenger/translators/GoogleTranslator$1;

    invoke-direct {p2, p0, p4}, Lcom/exteragram/messenger/translators/GoogleTranslator$1;-><init>(Lcom/exteragram/messenger/translators/GoogleTranslator;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 96
    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
