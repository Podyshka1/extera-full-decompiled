.class Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/ConnectionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MozillaDnsLoadTask"
.end annotation


# instance fields
.field private currentAccount:I

.field private responseDate:I


# direct methods
.method public static synthetic $r8$lambda$nE8DlHt4ROLdC70y2dCAIoRiwis(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1402
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 1403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$xmSo69YYzHrFq5jbCQxziqojwoQ(Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->lambda$onPostExecute$1(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1346
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1347
    iput p1, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->currentAccount:I

    return-void
.end method

.method private synthetic lambda$onPostExecute$1(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 4

    .line 1443
    const-string v0, "5. currentTask = null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1444
    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->-$$Nest$sfputcurrentTask(Landroid/os/AsyncTask;)V

    if-eqz p1, :cond_0

    .line 1446
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->currentAccount:I

    iget-wide v1, p1, Lorg/telegram/tgnet/NativeByteBuffer;->address:J

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object p1

    iget v3, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->responseDate:I

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->native_applyDnsConfig(IJLjava/lang/String;I)V

    return-void

    .line 1448
    :cond_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    .line 1449
    const-string p1, "failed to get mozilla txt result"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1340
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 11

    const/4 p1, 0x0

    .line 1354
    :try_start_0
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->native_isTestBackend(I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tapv3.stel.com"

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, p1

    move-object v2, v1

    goto/16 :goto_8

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dcDomainName:Ljava/lang/String;

    .line 1355
    :goto_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    .line 1360
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    sget-object v6, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1362
    :cond_1
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://mozilla.cloudflare-dns.com/dns-query?name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&type=TXT&random_padding="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 1364
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v1, "accept"

    const-string v2, "application/dns-json"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1388

    .line 1366
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1367
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1368
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 1369
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    iput v0, p0, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->responseDate:I

    .line 1372
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const v2, 0x8000

    .line 1374
    :try_start_2
    new-array v2, v2, [B

    .line 1376
    :goto_2
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 1379
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_3

    .line 1381
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v10

    goto/16 :goto_8

    .line 1389
    :cond_3
    :goto_3
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1390
    const-string v4, "Answer"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1391
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1392
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_4
    if-ge v6, v4, :cond_5

    .line 1394
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1395
    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x10

    if-eq v8, v9, :cond_4

    goto :goto_5

    .line 1399
    :cond_4
    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1401
    :cond_5
    new-instance v2, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v3

    .line 1412
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 1413
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1415
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1416
    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    array-length v4, v2

    invoke-direct {v3, v4}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1417
    invoke-virtual {v3, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_7

    .line 1424
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 1427
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1431
    :cond_7
    :goto_7
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v3

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v1, p1

    .line 1420
    :goto_8
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_8

    .line 1424
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    .line 1427
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_9
    if-eqz v1, :cond_9

    .line 1431
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :cond_9
    return-object p1

    :catchall_5
    move-exception p1

    if-eqz v2, :cond_a

    .line 1424
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    .line 1427
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_a
    if-eqz v1, :cond_b

    .line 1431
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1436
    :catch_2
    :cond_b
    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1340
    check-cast p1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;->onPostExecute(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method

.method protected onPostExecute(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 2

    .line 1442
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/ConnectionsManager$MozillaDnsLoadTask;Lorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
