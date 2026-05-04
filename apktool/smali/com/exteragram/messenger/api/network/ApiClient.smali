.class public final Lcom/exteragram/messenger/api/network/ApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://api.exteragram.app/api/v1/"

.field public static final INSTANCE:Lcom/exteragram/messenger/api/network/ApiClient;

.field private static final apiService$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$JcOhXKjbPIl0NaCF8bPPXwCfQfo()Lcom/exteragram/messenger/api/network/ApiService;
    .locals 1

    .line 0
    invoke-static {}, Lcom/exteragram/messenger/api/network/ApiClient;->apiService_delegate$lambda$0()Lcom/exteragram/messenger/api/network/ApiService;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/api/network/ApiClient;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/network/ApiClient;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/api/network/ApiClient;->INSTANCE:Lcom/exteragram/messenger/api/network/ApiClient;

    .line 23
    new-instance v0, Lcom/exteragram/messenger/api/network/ApiClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/exteragram/messenger/api/network/ApiClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/api/network/ApiClient;->apiService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final apiService_delegate$lambda$0()Lcom/exteragram/messenger/api/network/ApiService;
    .locals 4

    .line 24
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 26
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 27
    const-string v3, "https://api.exteragram.app/api/v1/"

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 29
    invoke-static {v1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 31
    const-class v1, Lcom/exteragram/messenger/api/network/ApiService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/api/network/ApiService;

    return-object v0
.end method


# virtual methods
.method public final getApiService()Lcom/exteragram/messenger/api/network/ApiService;
    .locals 2

    .line 23
    sget-object v0, Lcom/exteragram/messenger/api/network/ApiClient;->apiService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/exteragram/messenger/api/network/ApiService;

    return-object v0
.end method
