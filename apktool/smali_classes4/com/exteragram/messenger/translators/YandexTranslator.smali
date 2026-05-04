.class public Lcom/exteragram/messenger/translators/YandexTranslator;
.super Lcom/exteragram/messenger/translators/BaseTranslator;
.source "SourceFile"


# static fields
.field private static final SUPPORTED_LANGUAGES:Ljava/util/Set;

.field private static final client:Lokhttp3/OkHttpClient;

.field private static instance:Lcom/exteragram/messenger/translators/YandexTranslator;

.field private static final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 95

    .line 40
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/translators/YandexTranslator;->client:Lokhttp3/OkHttpClient;

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/translators/YandexTranslator;->uuid:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const-string v93, "jv"

    const-string v94, "ja"

    const-string v1, "az"

    const-string v2, "sq"

    const-string v3, "am"

    const-string v4, "en"

    const-string v5, "ar"

    const-string v6, "hy"

    const-string v7, "af"

    const-string v8, "eu"

    const-string v9, "ba"

    const-string v10, "be"

    const-string v11, "bn"

    const-string v12, "my"

    const-string v13, "bg"

    const-string v14, "bs"

    const-string v15, "cv"

    const-string v16, "cy"

    const-string v17, "hu"

    const-string v18, "vi"

    const-string v19, "ht"

    const-string v20, "gl"

    const-string v21, "nl"

    const-string v22, "mrj"

    const-string v23, "el"

    const-string v24, "ka"

    const-string v25, "gu"

    const-string v26, "da"

    const-string v27, "he"

    const-string v28, "yi"

    const-string v29, "id"

    const-string v30, "ga"

    const-string v31, "it"

    const-string v32, "is"

    const-string v33, "es"

    const-string v34, "kk"

    const-string v35, "kn"

    const-string v36, "ca"

    const-string v37, "ky"

    const-string v38, "zh"

    const-string v39, "ko"

    const-string v40, "xh"

    const-string v41, "km"

    const-string v42, "lo"

    const-string v43, "la"

    const-string v44, "lv"

    const-string v45, "lt"

    const-string v46, "lb"

    const-string v47, "mg"

    const-string v48, "ms"

    const-string v49, "ml"

    const-string v50, "mt"

    const-string v51, "mk"

    const-string v52, "mi"

    const-string v53, "mr"

    const-string v54, "mhr"

    const-string v55, "mn"

    const-string v56, "de"

    const-string v57, "ne"

    const-string v58, "no"

    const-string v59, "pa"

    const-string v60, "pap"

    const-string v61, "fa"

    const-string v62, "pl"

    const-string v63, "pt"

    const-string v64, "ro"

    const-string v65, "ru"

    const-string v66, "ceb"

    const-string v67, "sr"

    const-string v68, "si"

    const-string v69, "sk"

    const-string v70, "sl"

    const-string v71, "sw"

    const-string v72, "su"

    const-string v73, "tg"

    const-string v74, "th"

    const-string v75, "tl"

    const-string v76, "ta"

    const-string v77, "tt"

    const-string v78, "te"

    const-string v79, "tr"

    const-string v80, "udm"

    const-string v81, "uz"

    const-string v82, "uk"

    const-string v83, "ur"

    const-string v84, "fi"

    const-string v85, "fr"

    const-string v86, "hi"

    const-string v87, "hr"

    const-string v88, "cs"

    const-string v89, "sv"

    const-string v90, "gd"

    const-string v91, "et"

    const-string v92, "eo"

    filled-new-array/range {v1 .. v94}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/translators/DeepLTranslator$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/exteragram/messenger/translators/YandexTranslator;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/exteragram/messenger/translators/BaseTranslator;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/exteragram/messenger/translators/YandexTranslator;
    .locals 1

    .line 60
    sget-object v0, Lcom/exteragram/messenger/translators/YandexTranslator;->instance:Lcom/exteragram/messenger/translators/YandexTranslator;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/exteragram/messenger/translators/YandexTranslator;

    invoke-direct {v0}, Lcom/exteragram/messenger/translators/YandexTranslator;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/translators/YandexTranslator;->instance:Lcom/exteragram/messenger/translators/YandexTranslator;

    .line 63
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/translators/YandexTranslator;->instance:Lcom/exteragram/messenger/translators/YandexTranslator;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "Yandex"

    return-object v0
.end method

.method public getSupportedLanguages()Ljava/util/Set;
    .locals 1

    .line 73
    sget-object v0, Lcom/exteragram/messenger/translators/YandexTranslator;->SUPPORTED_LANGUAGES:Ljava/util/Set;

    return-object v0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V
    .locals 2

    .line 79
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://translate.yandex.net/api/v1/tr.json/translate?&srv=android&id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/exteragram/messenger/translators/YandexTranslator;->uuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-0-0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&text="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "UTF-8"

    invoke-static {p1, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 83
    invoke-virtual {p3, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string p3, "User-Agent"

    const-string v0, "ru.yandex.translate/21.15.4.21402814 (Xiaomi Redmi K20 Pro; Android 11)"

    .line 84
    invoke-virtual {p2, p3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    sget-object p3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v0, "application/x-www-form-urlencoded"

    .line 85
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 88
    sget-object p2, Lcom/exteragram/messenger/translators/YandexTranslator;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lcom/exteragram/messenger/translators/YandexTranslator$1;

    invoke-direct {p2, p0, p4}, Lcom/exteragram/messenger/translators/YandexTranslator$1;-><init>(Lcom/exteragram/messenger/translators/YandexTranslator;Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 120
    invoke-static {p4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/exteragram/messenger/translators/BaseTranslator$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/utils/text/TranslatorUtils$TranslateCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
