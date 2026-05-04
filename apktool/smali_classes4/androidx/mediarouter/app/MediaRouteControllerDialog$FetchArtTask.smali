.class Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchArtTask"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private final mIconBitmap:Landroid/graphics/Bitmap;

.field private final mIconUri:Landroid/net/Uri;

.field private mStartTimeMillis:J

.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 3

    .line 1375
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1376
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1377
    :goto_0
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1378
    const-string v0, "MediaRouteCtrlDialog"

    const-string v2, "Can\'t fetch the given art bitmap because it\'s already recycled."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1381
    :cond_1
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1382
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-void
.end method

.method private openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2

    .line 1480
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1482
    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "content"

    .line 1483
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file"

    .line 1484
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1487
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 1489
    sget v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->CONNECTION_TIMEOUT_MILLIS:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1490
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1491
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    .line 1485
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1493
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1402
    const-string p1, "Unable to open: "

    .line 1403
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MediaRouteCtrlDialog"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1405
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    if-eqz v0, :cond_9

    .line 1408
    :try_start_0
    invoke-direct {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 1409
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1444
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v4

    :catchall_0
    move-exception p1

    move-object v4, v0

    goto/16 :goto_3

    :catch_1
    move-exception v5

    goto/16 :goto_2

    .line 1413
    :cond_2
    :try_start_3
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1414
    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1415
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1416
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v6, :cond_7

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_3

    goto :goto_1

    .line 1421
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1424
    :catch_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1425
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-direct {p0, v6}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    .line 1444
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_4
    return-object v4

    .line 1431
    :cond_5
    :goto_0
    :try_start_7
    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1432
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7, v8}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->getDesiredArtHeight(II)I

    move-result v6

    .line 1433
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v7, v6

    .line 1434
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1435
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_6

    .line 1444
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    return-object v4

    .line 1438
    :cond_6
    :try_start_9
    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1444
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    move-object v0, p1

    goto :goto_5

    :cond_7
    :goto_1
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    return-object v4

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_7
    move-exception v5

    move-object v0, v4

    .line 1440
    :goto_2
    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_9

    .line 1444
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_4

    :goto_3
    if-eqz v4, :cond_8

    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1448
    :catch_8
    :cond_8
    throw p1

    :catch_9
    :cond_9
    :goto_4
    move-object v0, v4

    .line 1450
    :goto_5
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t use recycled bitmap: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_a
    if-eqz v0, :cond_c

    .line 1454
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge p1, v3, :cond_c

    .line 1456
    new-instance p1, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {p1, v0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroidx/palette/graphics/Palette$Builder;->maximumColorCount(I)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p1

    .line 1457
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    .line 1458
    :cond_b
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    :goto_6
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mBackgroundColor:I

    :cond_c
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1366
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1386
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .line 1390
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1465
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mFetchArtTask:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 1466
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    .line 1467
    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1468
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 1469
    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 1470
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    iput-object p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 1471
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mBackgroundColor:I

    iput p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    const/4 p1, 0x1

    .line 1472
    iput-boolean p1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    .line 1473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mStartTimeMillis:J

    sub-long/2addr v0, v2

    .line 1475
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const-wide/16 v3, 0x78

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1366
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->mStartTimeMillis:J

    .line 1396
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->clearLoadedBitmap()V

    return-void
.end method
