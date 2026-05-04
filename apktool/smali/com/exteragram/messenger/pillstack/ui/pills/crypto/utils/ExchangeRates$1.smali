.class Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->fetch(Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 236
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 237
    invoke-static {}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->getCached()Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->-$$Nest$smcomplete(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 242
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 244
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void

    .line 247
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    sget-object p2, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;

    .line 249
    invoke-static {p2}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->-$$Nest$smparseState(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$CoinbaseResponse;)Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 251
    invoke-static {p2}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->-$$Nest$sfputcacheValue(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->-$$Nest$sfputcacheTimestamp(J)V

    .line 253
    invoke-static {p2}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->-$$Nest$smsaveCache(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 255
    :cond_2
    invoke-static {}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->getCached()Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->-$$Nest$smcomplete(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :goto_2
    if-eqz p1, :cond_3

    .line 247
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 257
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 258
    invoke-static {}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->getCached()Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates;->-$$Nest$smcomplete(Lcom/exteragram/messenger/pillstack/ui/pills/crypto/utils/ExchangeRates$State;)V

    return-void
.end method
