.class public final Lcom/exteragram/messenger/utils/network/ExteraHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

.field private static final client$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$wzbHlla98iZftcZ62WKlPGXexp8()Lokhttp3/OkHttpClient;
    .locals 1

    .line 0
    invoke-static {}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->client_delegate$lambda$0()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    .line 18
    new-instance v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->client$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final client_delegate$lambda$0()Lokhttp3/OkHttpClient;
    .locals 4

    .line 19
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 20
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 18
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->client$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method
