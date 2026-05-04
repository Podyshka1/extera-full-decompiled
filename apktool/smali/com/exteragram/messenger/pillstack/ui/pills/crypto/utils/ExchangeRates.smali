.class public abstract Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;,
        Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;,
        Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$Data;
    }
.end annotation


# static fields
.field public static final CRYPTO_CURRENCIES:[Ljava/lang/String;

.field public static final MAIN_CURRENCIES:[Ljava/lang/String;

.field private static cacheTimestamp:J

.field private static cacheValue:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

.field private static final pendingCallbacks:Ljava/util/ArrayList;

.field private static requestInFlight:Z

.field private static final sync:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$N2-ze8JRy2FQCLLaC_XD27HNkyw(Ljava/util/ArrayList;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 3

    .line 279
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/messenger/Utilities$Callback;

    .line 280
    invoke-interface {v2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$S8VvpzrFUa6ad2yt5u0XF0dokNo(Lorg/telegram/messenger/Utilities$Callback;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 0

    .line 213
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cWqt41mowJXyOQJBhkZjVVpZpSM(II[Ljava/lang/Object;)V
    .locals 1

    .line 130
    sget p1, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    if-ne p0, p1, :cond_1

    .line 131
    sget-object p0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->TON:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget p0, p0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->BTC:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget p1, p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->USD:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget v0, v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    filled-new-array {p0, p1, v0}, [I

    move-result-object p0

    invoke-static {p2, p0}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->shouldUpdatePill([Ljava/lang/Object;[I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->clearCache()V

    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic -$$Nest$sfputcacheTimestamp(J)V
    .locals 0

    .line 0
    sput-wide p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheTimestamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputcacheValue(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheValue:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$smcomplete(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->complete(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnormalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smparseState(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;)Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->parseState(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;)Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsaveCache(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->saveCache(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 20

    .line 69
    const-string v18, "ETH"

    const-string v19, "SOL"

    const-string v1, "USD"

    const-string v2, "EUR"

    const-string v3, "RUB"

    const-string v4, "GBP"

    const-string v5, "KZT"

    const-string v6, "TRY"

    const-string v7, "UAH"

    const-string v8, "PLN"

    const-string v9, "AED"

    const-string v10, "CNY"

    const-string v11, "JPY"

    const-string v12, "BYN"

    const-string v13, "ILS"

    const-string v14, "CZK"

    const-string v15, "INR"

    const-string v16, "TON"

    const-string v17, "BTC"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->MAIN_CURRENCIES:[Ljava/lang/String;

    .line 70
    const-string v5, "USD"

    const-string v6, "EUR"

    const-string v1, "BTC"

    const-string v2, "ETH"

    const-string v3, "SOL"

    const-string v4, "TON"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->CRYPTO_CURRENCIES:[Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->sync:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->pendingCallbacks:Ljava/util/ArrayList;

    .line 129
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda0;-><init>()V

    sget v2, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 166
    sput-wide v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheTimestamp:J

    return-void
.end method

.method private static complete(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 3

    .line 273
    sget-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 274
    :try_start_0
    sput-boolean v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->requestInFlight:Z

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->pendingCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 277
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static fetch(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheValue:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->isStale()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 218
    :cond_1
    sget-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    sget-object v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->pendingCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-boolean p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->requestInFlight:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 221
    sput-boolean p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->requestInFlight:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 224
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    :goto_1
    return-void

    .line 229
    :cond_3
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "https://api.coinbase.com/v2/exchange-rates?currency=USD"

    .line 230
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 233
    sget-object v0, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->INSTANCE:Lcom/exteragram/messenger/utils/network/ExteraHttpClient;

    invoke-virtual {v0}, Lcom/exteragram/messenger/utils/network/ExteraHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$1;

    invoke-direct {v0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$1;-><init>()V

    invoke-interface {p0, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 224
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getCached()Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;
    .locals 4

    .line 140
    sget-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheValue:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    if-nez v0, :cond_0

    .line 142
    :try_start_0
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "exchangeRatesCache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    const-class v2, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    sput-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheValue:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    .line 145
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "exchangeRatesTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheTimestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 151
    :cond_0
    :goto_0
    sget-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheValue:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    return-object v0
.end method

.method private static isStale()Z
    .locals 6

    .line 265
    invoke-static {}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->getCached()Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-wide v2, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->cacheTimestamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isSupportedCurrency(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    sget-object v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->MAIN_CURRENCIES:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 173
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 323
    const-string p0, ""

    return-object p0

    .line 324
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseState(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;)Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 286
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;->data:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$Data;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$Data;->rates:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 290
    sget-object v2, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->MAIN_CURRENCIES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 291
    iget-object v6, p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;->data:Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$Data;

    iget-object v6, v6, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$Data;->rates:Ljava/util/Map;

    invoke-static {v5, v6}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->parseUsdRate(Ljava/lang/String;Ljava/util/Map;)Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 293
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 299
    :cond_3
    new-instance p0, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;-><init>(Ljava/util/Map;)V

    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static parseUsdRate(Ljava/lang/String;Ljava/util/Map;)Ljava/math/BigDecimal;
    .locals 3

    .line 303
    const-string v0, "USD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object p0

    .line 306
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return-object p1

    .line 311
    :cond_1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    .line 315
    :cond_2
    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 317
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static resolveTargetCurrency(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 181
    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string v0, "AUTO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "USD"

    if-eqz v0, :cond_2

    .line 183
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/BillingController;->getTargetCurrency(IZ)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 187
    :cond_0
    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->isSupportedCurrency(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v1

    .line 190
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->isSupportedCurrency(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    return-object v1
.end method

.method private static saveCache(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 157
    :cond_0
    :try_start_0
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 158
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "exchangeRatesCache"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    sget-object p0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "exchangeRatesTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 161
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
