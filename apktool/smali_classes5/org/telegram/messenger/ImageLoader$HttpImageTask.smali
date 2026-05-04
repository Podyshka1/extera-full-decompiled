.class Lorg/telegram/messenger/ImageLoader$HttpImageTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private canRetry:Z

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private httpConnection:Ljava/net/HttpURLConnection;

.field private imageSize:J

.field private lastProgressTime:J

.field private overrideUrl:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public static synthetic $r8$lambda$2ibETjvWPQbLnbX8pEYY_4TZgRE(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onPostExecute$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QcaNox61PUe2uTHX-Ru86epn9wA(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onPostExecute$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VtZ9pgxHq5p9zHdMk_lGj0j0CMY(Lorg/telegram/messenger/ImageLoader$HttpImageTask;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$reportProgress$0(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$aiFrr36SyeLyAuo3X7DjiwWCFXo(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onCancelled$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$bZZbVwJfxBEXQ4bRqW35mKQhaoY(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onCancelled$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$cv6vUIEcOP54Auh2HI4OW-QaCg0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$de0XAT7lJ8xcuT3Df9Yi5Yv5zn8(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onCancelled$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$hsNQ1-xwrb00Ue5B_FsbgECjuJk(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$onPostExecute$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$sqyNugrXRUiGpHiglfIruDMQ93k(Lorg/telegram/messenger/ImageLoader$HttpImageTask;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lambda$reportProgress$1(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcacheImage(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageSize(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    return-wide v0
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;ILjava/lang/String;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    .line 534
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    int-to-long p1, p3

    .line 535
    iput-wide p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    .line 536
    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->overrideUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;J)V
    .locals 0

    .line 528
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    .line 529
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 530
    iput-wide p3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    return-void
.end method

.method private synthetic lambda$onCancelled$6()V
    .locals 2

    .line 729
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$mrunHttpTasks(Lorg/telegram/messenger/ImageLoader;Z)V

    return-void
.end method

.method private synthetic lambda$onCancelled$7()V
    .locals 7

    .line 732
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v4, v5, v3

    invoke-virtual {v0, v1, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCancelled$8()V
    .locals 2

    .line 731
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetfileProgresses(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$3(Ljava/lang/Boolean;)V
    .locals 6

    .line 717
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 718
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v1

    aput-object v4, v2, v0

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 720
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v5, v2, v0

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$4(Ljava/lang/Boolean;)V
    .locals 2

    .line 715
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetfileProgresses(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$5()V
    .locals 2

    .line 724
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$mrunHttpTasks(Lorg/telegram/messenger/ImageLoader;Z)V

    return-void
.end method

.method private synthetic lambda$reportProgress$0(JJ)V
    .locals 3

    .line 545
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v2, p3, p4

    const/4 p4, 0x1

    aput-object p1, p3, p4

    const/4 p1, 0x2

    aput-object p2, p3, p1

    invoke-virtual {v0, v1, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$reportProgress$1(JJ)V
    .locals 10

    .line 544
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetfileProgresses(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    const/4 v3, 0x1

    aput-wide p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v4, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda6;

    move-object v5, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;JJ)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reportProgress(JJ)V
    .locals 7

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v2, p1, p3

    if-eqz v2, :cond_1

    .line 541
    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x64

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 542
    :cond_1
    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->lastProgressTime:J

    .line 543
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda7;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;JJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12

    .line 554
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_8

    .line 556
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object p1, p1, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    .line 557
    const-string v3, "https://static-maps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://maps.googleapis"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto/16 :goto_1

    .line 558
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->mapProvider:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 560
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgettestWebFile(Lorg/telegram/messenger/ImageLoader;)Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/WebFile;

    if-eqz v3, :cond_2

    .line 562
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;-><init>()V

    .line 563
    iget-object v3, v3, Lorg/telegram/messenger/WebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$InputWebFileLocation;

    .line 564
    iput v2, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    .line 565
    iput v2, v4, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    .line 566
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v5, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 573
    :cond_2
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->overrideUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object p1, v4

    :cond_3
    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    .line 575
    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1"

    invoke-virtual {p1, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 577
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 578
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 579
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 580
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 581
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    const-string v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v11, v3

    move-object v3, p1

    move-object p1, v11

    .line 586
    :goto_1
    instance-of v4, p1, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_4

    .line 587
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isNetworkOnline()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 588
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_2

    .line 591
    :cond_4
    instance-of v4, p1, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_5

    .line 592
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_2

    .line 594
    :cond_5
    instance-of v4, p1, Ljava/net/SocketException;

    if-eqz v4, :cond_6

    .line 595
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ECONNRESET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 596
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    goto :goto_2

    .line 599
    :cond_6
    instance-of v4, p1, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_7

    .line 600
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    .line 605
    :cond_7
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object p1, v3

    goto :goto_3

    :cond_8
    move-object p1, v1

    .line 609
    :goto_3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_10

    .line 611
    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_9

    .line 612
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_9

    const/16 v4, 0xca

    if-eq v3, v4, :cond_9

    const/16 v4, 0x130

    if-eq v3, v4, :cond_9

    .line 614
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 618
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 620
    :cond_9
    :goto_4
    iget-wide v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_a

    .line 622
    :try_start_3
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 624
    const-string v4, "content-Length"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_a

    .line 625
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 626
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 628
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v3

    .line 633
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    if-eqz p1, :cond_10

    const/16 v3, 0x2000

    .line 639
    :try_start_4
    new-array v3, v3, [B

    move v4, v2

    .line 642
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_c

    goto :goto_7

    .line 646
    :cond_c
    :try_start_5
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_d

    add-int/2addr v4, v7

    .line 649
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v3, v2, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 650
    iget-wide v7, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_b

    int-to-long v9, v4

    .line 651
    invoke-direct {p0, v9, v10, v7, v8}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(JJ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_d
    const/4 v3, -0x1

    if-ne v7, v3, :cond_e

    .line 655
    :try_start_6
    iget-wide v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->imageSize:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_f

    .line 656
    invoke-direct {p0, v2, v3, v2, v3}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->reportProgress(JJ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_a

    :catch_3
    move-exception v2

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_8

    :cond_e
    :goto_7
    move v0, v2

    goto :goto_9

    .line 663
    :goto_8
    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :cond_f
    :goto_9
    move v2, v0

    goto :goto_b

    .line 668
    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 674
    :cond_10
    :goto_b
    :try_start_8
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_11

    .line 675
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 676
    iput-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    .line 679
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 682
    :cond_11
    :goto_c
    :try_start_9
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->httpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    .line 683
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    :cond_12
    if-eqz p1, :cond_13

    .line 690
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception p1

    .line 693
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_13
    :goto_d
    if-eqz v2, :cond_14

    .line 697
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    if-eqz v0, :cond_14

    .line 698
    iget-object p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 699
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    iput-object v0, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 704
    :cond_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 518
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 4

    .line 729
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetimageLoadQueue(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    .line 730
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .line 709
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->canRetry:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$mhttpFileLoadError(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)V

    goto :goto_1

    .line 710
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$mfileDidLoaded(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/io/File;I)V

    .line 714
    :goto_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 724
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetimageLoadQueue(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    new-instance v0, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageLoader$HttpImageTask$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ImageLoader$HttpImageTask;)V

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 518
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
