.class Lorg/telegram/messenger/ImageLoader$CacheOutTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheOutTask"
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private isCancelled:Z

.field private runningThread:Ljava/lang/Thread;

.field private final sync:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public static synthetic $r8$lambda$IfkHX80OfIhnqccKgD6M-9yPd-s(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->lambda$onPostExecute$0(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NKBdKhDt3PnyYzQSjAx6RqRNVvo(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->lambda$onPostExecute$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcacheImage(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    .line 860
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-void
.end method

.method private applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1603
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v0, :cond_5

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1609
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1610
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1614
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 1615
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v2

    .line 1616
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 1617
    :cond_1
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 1618
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 1619
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 1620
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v4

    .line 1621
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    iget-object v8, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v8}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v8

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v7, v8, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1622
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v7, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1623
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v4

    goto :goto_1

    .line 1625
    :cond_2
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 1626
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 1627
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    invoke-static {v5, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    .line 1628
    iget-object v7, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    if-nez v7, :cond_3

    move v4, v6

    goto :goto_0

    :cond_3
    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 1629
    :goto_0
    invoke-static {v2, v3, v5, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v7

    .line 1630
    new-instance v8, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 1631
    invoke-virtual {v8, v2, v3, v5, v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 1632
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v8, v6, v6, v2, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    .line 1633
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v8, v2, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 1634
    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    move v5, v6

    move v2, v7

    :goto_1
    if-eqz v5, :cond_4

    .line 1639
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1640
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1641
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float p2, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p2, 0x0

    .line 1642
    invoke-virtual {v1, p1, p2, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    return-object v0

    .line 1604
    :cond_5
    :goto_2
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz p2, :cond_6

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    if-eqz p2, :cond_6

    .line 1605
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method private synthetic lambda$onPostExecute$0(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 1741
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$1(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1688
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1689
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1690
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetlottieMemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1692
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetlottieMemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1695
    :cond_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    move-object p1, v0

    .line 1698
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1699
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto/16 :goto_5

    .line 1701
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1702
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 1703
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v1, :cond_8

    .line 1704
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$mgetFromLottieCache(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1706
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetlottieMemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_1

    .line 1709
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1711
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1712
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto/16 :goto_5

    .line 1716
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_9

    .line 1717
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1718
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 1721
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    const-string v4, "_f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1722
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetwallpaperMemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1724
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    const-string v1, "_isc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "_nocache"

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x42a00000    # 80.0f

    mul-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    .line 1725
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetsmallImagesMemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1726
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1727
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetmemCache(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    move v1, v3

    :goto_3
    move v3, v1

    goto :goto_4

    .line 1731
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1732
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_4
    if-eqz v3, :cond_8

    .line 1735
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v0, v2

    goto :goto_5

    :cond_9
    move-object p1, v2

    move-object v0, p1

    .line 1741
    :goto_5
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetimageLoadQueue(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private loadLastFrame(Lorg/telegram/ui/Components/RLottieDrawable;IIZZ)V
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    int-to-float v1, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v3, v1

    int-to-float v4, p3

    mul-float/2addr v4, v2

    float-to-int v2, v4

    .line 1651
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1652
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-float/2addr v1, v0

    div-float/2addr v4, v0

    .line 1653
    invoke-virtual {v3, v0, v0, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 1655
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1656
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1659
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->prepareForGenerateCache()V

    .line 1660
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p4, :cond_1

    .line 1661
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setGeneratingFrame(I)V

    .line 1662
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getNextFrame(Landroid/graphics/Bitmap;)I

    .line 1663
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->releaseForGenerateCache()V

    .line 1664
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 1666
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v6, p2

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, p3

    int-to-float v7, v7

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    invoke-virtual {v3, v6, v7, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1668
    :cond_3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 1669
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 1672
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    int-to-float p4, p4

    div-float/2addr p4, v0

    invoke-virtual {v3, v1, p3, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1673
    new-instance p2, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;

    invoke-direct {p2, v2}, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    .line 1675
    invoke-virtual {v3, v1, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1676
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1679
    :goto_2
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    .line 1680
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1681
    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1685
    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1746
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1748
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    .line 1749
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1750
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1755
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 39

    move-object/from16 v1, p0

    .line 865
    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 866
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    .line 867
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 868
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 869
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_97

    .line 871
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v3, v2, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v4, :cond_2

    .line 874
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    .line 875
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v2, "b"

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 876
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-direct {v1, v5}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 877
    :cond_2
    iget v3, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 880
    :try_start_1
    new-instance v0, Lorg/telegram/ui/Components/ThemePreviewDrawable;

    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v2, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    invoke-direct {v0, v3, v2}, Lorg/telegram/ui/Components/ThemePreviewDrawable;-><init>(Ljava/io/File;Lorg/telegram/messenger/DocumentObject$ThemeDocument;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 882
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    .line 884
    :goto_1
    invoke-direct {v1, v5}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_96

    :cond_3
    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v3, v6, :cond_b8

    if-ne v3, v7, :cond_4

    goto/16 :goto_90

    :cond_4
    const/high16 v12, 0x42b40000    # 90.0f

    if-ne v3, v9, :cond_26

    const v0, 0x432a999a    # 170.6f

    .line 911
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/16 v3, 0x200

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 912
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 922
    iget-object v13, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v13, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v13, :cond_15

    .line 923
    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 924
    array-length v14, v13

    if-lt v14, v8, :cond_b

    .line 925
    aget-object v0, v13, v10

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 926
    aget-object v2, v13, v9

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 927
    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v14, v0

    float-to-int v14, v14

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 928
    sget v15, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v15, v2

    float-to-int v15, v15

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_5

    cmpg-float v0, v2, v12

    if-gtz v0, :cond_5

    .line 929
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v2, "nolimit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa0

    .line 930
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 931
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v9

    goto :goto_2

    :cond_5
    move v0, v3

    move v3, v10

    move v2, v14

    .line 934
    :goto_2
    array-length v12, v13

    if-lt v12, v6, :cond_7

    const-string/jumbo v12, "pcache"

    aget-object v14, v13, v8

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    :goto_3
    move v12, v9

    goto :goto_4

    .line 937
    :cond_7
    iget-object v12, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v14, "pcache"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v14, "nolimit"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v12

    if-eq v12, v8, :cond_8

    goto :goto_3

    :cond_8
    move v12, v10

    .line 940
    :goto_4
    iget-object v14, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v14, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v15, "lastframe"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 943
    iget-object v15, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v15, v15, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    move/from16 v16, v7

    const-string/jumbo v7, "lastreactframe"

    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v14, v9

    .line 947
    :cond_9
    iget-object v15, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v15, v15, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v5, "firstframe"

    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v9

    goto :goto_5

    :cond_a
    move v5, v10

    goto :goto_5

    :cond_b
    move/from16 v16, v7

    move v3, v10

    move v5, v3

    move v7, v5

    move v12, v7

    move v14, v12

    .line 953
    :goto_5
    array-length v15, v13

    if-lt v15, v6, :cond_e

    .line 954
    const-string/jumbo v15, "nr"

    move/from16 v17, v6

    aget-object v6, v13, v8

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v15, v8

    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    .line 956
    :cond_c
    const-string/jumbo v6, "nrs"

    aget-object v15, v13, v8

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move/from16 v15, v17

    goto :goto_6

    .line 958
    :cond_d
    const-string v6, "dice"

    aget-object v15, v13, v8

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 959
    aget-object v6, v13, v17

    move v15, v8

    goto :goto_7

    :cond_e
    move/from16 v17, v6

    :cond_f
    move v15, v9

    goto :goto_6

    .line 963
    :goto_7
    array-length v11, v13

    if-lt v11, v4, :cond_14

    .line 964
    const-string v11, "c1"

    aget-object v4, v13, v16

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v4, 0xc

    :goto_8
    move/from16 v24, v3

    move/from16 v26, v4

    move v3, v0

    move v4, v2

    :goto_9
    move-object v0, v6

    move v6, v7

    goto/16 :goto_b

    .line 966
    :cond_10
    const-string v4, "c2"

    aget-object v11, v13, v16

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v2

    move/from16 v24, v3

    move/from16 v26, v17

    :goto_a
    move v3, v0

    goto :goto_9

    .line 968
    :cond_11
    const-string v4, "c3"

    aget-object v11, v13, v16

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v2

    move/from16 v24, v3

    move/from16 v26, v16

    goto :goto_a

    .line 970
    :cond_12
    const-string v4, "c4"

    aget-object v11, v13, v16

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v2

    move/from16 v24, v3

    const/16 v26, 0x5

    goto :goto_a

    .line 972
    :cond_13
    const-string v4, "c5"

    aget-object v11, v13, v16

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x6

    goto :goto_8

    :cond_14
    move v4, v2

    move/from16 v24, v3

    move/from16 v26, v10

    goto :goto_a

    :cond_15
    move v3, v0

    move v4, v2

    move v15, v9

    move v5, v10

    move v6, v5

    move v12, v6

    move v14, v12

    move/from16 v24, v14

    move/from16 v26, v24

    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_17

    .line 979
    const-string/jumbo v2, "\ud83c\udfb0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 980
    new-instance v2, Lorg/telegram/ui/Components/SlotsDrawable;

    invoke-direct {v2, v0, v4, v3}, Lorg/telegram/ui/Components/SlotsDrawable;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_16

    .line 982
    :cond_16
    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {v2, v0, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_16

    .line 985
    :cond_17
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 989
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const-string/jumbo v7, "r"

    invoke-direct {v2, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 991
    :try_start_3
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    if-ne v0, v9, :cond_18

    .line 992
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$sfgetheaderThumb()[B

    move-result-object v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    goto/16 :goto_18

    :catch_0
    move-exception v0

    goto :goto_e

    .line 994
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$sfgetheader()[B

    move-result-object v0

    .line 996
    :goto_c
    invoke-virtual {v2, v0, v10, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 997
    aget-byte v7, v0, v10

    const/16 v8, 0x1f

    if-ne v7, v8, :cond_19

    aget-byte v0, v0, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v7, -0x75

    if-ne v0, v7, :cond_19

    move v7, v9

    goto :goto_d

    :cond_19
    move v7, v10

    .line 1005
    :goto_d
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_10

    :catch_1
    move-exception v0

    .line 1007
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    goto/16 :goto_18

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    .line 1001
    :goto_e
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_1a

    .line 1005
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    .line 1007
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_f
    move v7, v10

    :goto_10
    if-nez v14, :cond_1c

    if-eqz v5, :cond_1b

    goto :goto_11

    :cond_1b
    move v10, v12

    :cond_1c
    :goto_11
    if-nez v10, :cond_1e

    if-nez v14, :cond_1e

    if-eqz v5, :cond_1d

    goto :goto_12

    :cond_1d
    const/16 v23, 0x0

    goto :goto_14

    .line 1016
    :cond_1e
    :goto_12
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;-><init>()V

    if-nez v14, :cond_20

    if-nez v5, :cond_20

    .line 1018
    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v2, :cond_1f

    const-string v8, "compress"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x3c

    .line 1019
    iput v2, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    .line 1021
    :cond_1f
    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v2, :cond_21

    const-string v8, "flbk"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1022
    iput-boolean v9, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->fallback:Z

    goto :goto_13

    .line 1025
    :cond_20
    iput-boolean v9, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    :cond_21
    :goto_13
    move-object/from16 v23, v0

    :goto_14
    if-eqz v7, :cond_22

    .line 1029
    new-instance v19, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->decompressGzip(Ljava/io/File;)Ljava/lang/String;

    move-result-object v21

    move/from16 v27, v26

    const/16 v26, 0x0

    move-object/from16 v20, v0

    move/from16 v22, v4

    move/from16 v25, v24

    move-object/from16 v24, v23

    move/from16 v23, v3

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/io/File;Ljava/lang/String;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V

    :goto_15
    move-object/from16 v2, v19

    goto :goto_16

    :cond_22
    move/from16 v27, v26

    .line 1031
    new-instance v19, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move/from16 v22, v3

    move/from16 v21, v4

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/io/File;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V

    goto :goto_15

    :goto_16
    if-nez v14, :cond_23

    if-eqz v5, :cond_24

    :cond_23
    move v5, v14

    goto :goto_17

    .line 1037
    :cond_24
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 1038
    invoke-direct {v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_96

    .line 1035
    :goto_17
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->loadLastFrame(Lorg/telegram/ui/Components/RLottieDrawable;IIZZ)V

    goto/16 :goto_96

    :goto_18
    if-eqz v5, :cond_25

    .line 1005
    :try_start_7
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_19

    :catch_4
    move-exception v0

    .line 1007
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1010
    :cond_25
    :goto_19
    throw v2

    :cond_26
    move/from16 v17, v6

    move/from16 v16, v7

    const-wide/16 v4, 0x0

    if-ne v3, v8, :cond_4a

    if-eqz v2, :cond_27

    .line 1044
    iget-wide v2, v2, Lorg/telegram/messenger/ImageLocation;->videoSeekTo:J

    move-wide/from16 v28, v2

    goto :goto_1a

    :cond_27
    move-wide/from16 v28, v4

    .line 1053
    :goto_1a
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 1054
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1055
    array-length v2, v0

    if-lt v2, v8, :cond_28

    .line 1056
    aget-object v2, v0, v10

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1057
    aget-object v3, v0, v9

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v2, v2, v12

    if-gtz v2, :cond_28

    cmpg-float v2, v3, v12

    if-gtz v2, :cond_28

    .line 1058
    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v3, "nolimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    move v2, v9

    goto :goto_1b

    :cond_28
    move v2, v10

    :goto_1b
    move v3, v10

    move v6, v3

    move v7, v6

    move v11, v7

    move v12, v11

    .line 1062
    :goto_1c
    array-length v13, v0

    if-ge v3, v13, :cond_2d

    .line 1063
    const-string/jumbo v13, "pcache"

    aget-object v14, v0, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    move v7, v9

    .line 1066
    :cond_29
    const-string v13, "firstframe"

    aget-object v14, v0, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    move v6, v9

    .line 1069
    :cond_2a
    const-string/jumbo v13, "nostream"

    aget-object v14, v0, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    move v12, v9

    .line 1072
    :cond_2b
    const-string/jumbo v13, "pframe"

    aget-object v14, v0, v3

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    move v11, v9

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2d
    move/from16 v21, v6

    if-eqz v6, :cond_2f

    move v12, v9

    goto :goto_1d

    :cond_2e
    move v2, v10

    move v7, v2

    move v11, v7

    move v12, v11

    move/from16 v21, v12

    :cond_2f
    :goto_1d
    if-eqz v11, :cond_31

    .line 1083
    :try_start_8
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1084
    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    .line 1085
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1086
    :try_start_9
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1f

    :catch_5
    move-exception v0

    goto :goto_1e

    :catch_6
    move-exception v0

    const/4 v2, 0x0

    .line 1088
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1090
    :goto_1f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-nez v2, :cond_30

    const/4 v3, 0x0

    .line 1092
    invoke-direct {v1, v3}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_96

    .line 1094
    :cond_30
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_96

    :cond_31
    if-eqz v7, :cond_33

    if-nez v21, :cond_33

    .line 1100
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;-><init>()V

    .line 1101
    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v3, :cond_32

    const-string v6, "compress"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/16 v3, 0x3c

    .line 1102
    iput v3, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    :cond_32
    move-object/from16 v34, v0

    goto :goto_20

    :cond_33
    const/16 v34, 0x0

    .line 1105
    :goto_20
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$misAnimatedAvatar(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "g"

    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_21

    :cond_34
    move/from16 v6, v21

    goto/16 :goto_2a

    :cond_35
    :goto_21
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-nez v3, :cond_34

    if-nez v7, :cond_34

    .line 1106
    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_22

    :cond_36
    const/4 v0, 0x0

    .line 1107
    :goto_22
    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v0, :cond_37

    iget-wide v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->size:J

    goto :goto_23

    :cond_37
    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-wide v6, v3, Lorg/telegram/messenger/ImageLocation;->currentSize:J

    :goto_23
    if-eqz v0, :cond_38

    move v3, v9

    goto :goto_24

    :cond_38
    move v3, v10

    .line 1109
    :goto_24
    iget-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v8, v8, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheType:I

    if-le v8, v9, :cond_39

    move/from16 v35, v8

    goto :goto_25

    :cond_39
    move/from16 v35, v3

    .line 1112
    :goto_25
    new-instance v19, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v8, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    if-eqz v12, :cond_3a

    move-wide/from16 v22, v4

    goto :goto_26

    :cond_3a
    move-wide/from16 v22, v6

    :goto_26
    iget v6, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-eqz v12, :cond_3b

    const/16 v25, 0x0

    goto :goto_27

    :cond_3b
    move-object/from16 v25, v0

    :goto_27
    if-nez v0, :cond_3c

    if-nez v12, :cond_3c

    iget-object v7, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    move-object/from16 v26, v7

    goto :goto_28

    :cond_3c
    const/16 v26, 0x0

    :goto_28
    iget-object v7, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    iget v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v31, 0x0

    move/from16 v30, v3

    move/from16 v24, v6

    move-object/from16 v27, v7

    move-object/from16 v20, v8

    invoke-direct/range {v19 .. v35}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;I)V

    move-object/from16 v3, v19

    move/from16 v6, v21

    .line 1113
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isWebM(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v7, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v7, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v0, v7}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$misAnimatedAvatar(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_29

    :cond_3d
    move v9, v10

    :cond_3e
    :goto_29
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setIsWebmSticker(Z)V

    move-object v0, v3

    goto/16 :goto_33

    .line 1118
    :goto_2a
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_3f

    .line 1119
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1120
    array-length v3, v0

    if-lt v3, v8, :cond_3f

    .line 1121
    aget-object v3, v0, v10

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1122
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1123
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    mul-float/2addr v0, v7

    float-to-int v0, v0

    move/from16 v33, v0

    move/from16 v32, v3

    goto :goto_2b

    :cond_3f
    move/from16 v32, v10

    move/from16 v33, v32

    :goto_2b
    if-nez v6, :cond_41

    .line 1127
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_40

    const-string v3, "d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v3, "_d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_2c

    :cond_40
    move/from16 v21, v10

    goto :goto_2d

    :cond_41
    :goto_2c
    move/from16 v21, v9

    :goto_2d
    if-eqz v12, :cond_42

    const/4 v0, 0x0

    goto :goto_2e

    .line 1128
    :cond_42
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_2e
    if-eqz v0, :cond_43

    move v0, v9

    goto :goto_2f

    :cond_43
    move v0, v10

    .line 1130
    :goto_2f
    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheType:I

    if-le v3, v9, :cond_44

    move/from16 v35, v3

    goto :goto_30

    :cond_44
    move/from16 v35, v0

    .line 1133
    :goto_30
    new-instance v19, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    iget v7, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-eqz v12, :cond_45

    const/16 v25, 0x0

    goto :goto_31

    :cond_45
    iget-object v8, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v8, v8, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v25, v8

    :goto_31
    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    const/16 v31, 0x0

    const-wide/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v30, v0

    move-object/from16 v20, v3

    move/from16 v24, v7

    invoke-direct/range {v19 .. v35}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;I)V

    move-object/from16 v0, v19

    .line 1134
    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isWebM(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-nez v3, :cond_47

    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-nez v3, :cond_47

    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v7, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v7, v7, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v3, v7}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$misAnimatedAvatar(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_32

    :cond_46
    move v9, v10

    :cond_47
    :goto_32
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setIsWebmSticker(Z)V

    :goto_33
    if-eqz v6, :cond_49

    .line 1137
    invoke-virtual {v0, v4, v5, v10}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1139
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1140
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-nez v2, :cond_48

    const/4 v3, 0x0

    .line 1142
    invoke-direct {v1, v3}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1144
    :cond_48
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1147
    :cond_49
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setLimitFps(Z)V

    .line 1148
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1149
    invoke-direct {v1, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1158
    :cond_4a
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1159
    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-nez v3, :cond_4c

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    if-eqz v0, :cond_4b

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".enc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_34

    :cond_4b
    move v3, v10

    goto :goto_35

    :cond_4c
    :goto_34
    move v3, v9

    .line 1162
    :goto_35
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v6, :cond_4e

    .line 1163
    iget-object v7, v6, Lorg/telegram/messenger/SecureDocument;->secureDocumentKey:Lorg/telegram/messenger/SecureDocumentKey;

    .line 1164
    iget-object v11, v6, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v11, :cond_4d

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    if-eqz v11, :cond_4d

    move-object v6, v11

    goto :goto_36

    .line 1167
    :cond_4d
    iget-object v6, v6, Lorg/telegram/messenger/SecureDocument;->fileHash:[B

    goto :goto_36

    :cond_4e
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1176
    :goto_36
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 1178
    const-string/jumbo v11, "thumb://"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_50

    .line 1179
    const-string v11, ":"

    const/16 v12, 0x8

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_4f

    .line 1181
    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    add-int/2addr v11, v9

    .line 1183
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_4f
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_37
    move-object v11, v0

    move v13, v10

    move v14, v13

    goto :goto_3a

    .line 1186
    :cond_50
    const-string/jumbo v11, "vthumb://"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_52

    .line 1187
    const-string v11, ":"

    const/16 v12, 0x9

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_51

    .line 1189
    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move v11, v9

    goto :goto_38

    :cond_51
    move v11, v10

    const/4 v0, 0x0

    :goto_38
    move-object v12, v0

    move v14, v10

    move v13, v11

    const/4 v11, 0x0

    goto :goto_3a

    .line 1193
    :cond_52
    const-string v11, "http"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    move v13, v10

    move v14, v13

    :goto_39
    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_3a

    :cond_53
    move v14, v9

    move v13, v10

    goto :goto_39

    .line 1198
    :goto_3a
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1199
    iput v9, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1205
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fgetcanForce8888(Lorg/telegram/messenger/ImageLoader;)Z

    move-result v18

    move-wide/from16 v31, v4

    const/high16 v33, 0x3f800000    # 1.0f

    .line 1207
    :try_start_a
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    if-eqz v0, :cond_6a

    const/16 v34, 0x0

    .line 1208
    :try_start_b
    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1209
    array-length v5, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    if-lt v5, v8, :cond_54

    .line 1210
    :try_start_c
    aget-object v5, v0, v10

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v19, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    mul-float v5, v5, v19

    .line 1211
    :try_start_d
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v19, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    mul-float v0, v0, v19

    move/from16 v19, v0

    goto :goto_3c

    :catchall_4
    move-exception v0

    move/from16 v37, v3

    move v4, v10

    move v8, v4

    move-object/from16 v23, v11

    move/from16 v19, v34

    :goto_3b
    const/4 v3, 0x0

    const v20, 0x3f99999a    # 1.2f

    goto/16 :goto_57

    :catchall_5
    move-exception v0

    move/from16 v37, v3

    move v4, v10

    move v8, v4

    move-object/from16 v23, v11

    move/from16 v5, v34

    move/from16 v19, v5

    goto :goto_3b

    :cond_54
    move/from16 v5, v34

    move/from16 v19, v5

    .line 1213
    :goto_3c
    :try_start_e
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    const v20, 0x3f99999a    # 1.2f

    :try_start_f
    const-string v4, "b2r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    move/from16 v4, v16

    goto :goto_3d

    .line 1215
    :cond_55
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v4, "b2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    move/from16 v4, v17

    goto :goto_3d

    .line 1217
    :cond_56
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v4, "b1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    move v4, v8

    goto :goto_3d

    .line 1219
    :cond_57
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v4, "b"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-eqz v0, :cond_58

    move v4, v9

    goto :goto_3d

    :cond_58
    move v4, v10

    .line 1222
    :goto_3d
    :try_start_10
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "i"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 1225
    :try_start_11
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v10, "f"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    move/from16 v18, v9

    goto :goto_3e

    .line 1227
    :cond_59
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v10, "F"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v18, 0x0

    :cond_5a
    :goto_3e
    cmpl-float v0, v5, v34

    if-eqz v0, :cond_69

    cmpl-float v0, v19, v34

    if-eqz v0, :cond_69

    .line 1231
    iput-boolean v9, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-eqz v12, :cond_5c

    if-nez v11, :cond_5c

    if-eqz v13, :cond_5b

    .line 1235
    :try_start_12
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move v10, v3

    move/from16 v22, v4

    :try_start_13
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4, v9, v15}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_3f
    move/from16 v37, v10

    move-object/from16 v23, v11

    goto/16 :goto_49

    :catchall_6
    move-exception v0

    move/from16 v37, v10

    move-object/from16 v23, v11

    :goto_40
    move/from16 v4, v22

    :goto_41
    const/4 v3, 0x0

    goto/16 :goto_57

    :catchall_7
    move-exception v0

    move v10, v3

    move/from16 v22, v4

    move/from16 v37, v10

    :goto_42
    move-object/from16 v23, v11

    goto :goto_41

    :cond_5b
    move v10, v3

    move/from16 v22, v4

    .line 1237
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4, v9, v15}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_3f

    :cond_5c
    move v10, v3

    move/from16 v22, v4

    if-eqz v7, :cond_61

    .line 1241
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1243
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$sfgetbytesLocal()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_5d

    .line 1244
    array-length v9, v4

    if-lt v9, v3, :cond_5d

    goto :goto_43

    :cond_5d
    const/4 v4, 0x0

    :goto_43
    if-nez v4, :cond_5e

    .line 1246
    new-array v4, v3, [B

    .line 1247
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$sfgetbytesLocal()Ljava/lang/ThreadLocal;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_5e
    const/4 v9, 0x0

    .line 1249
    invoke-virtual {v0, v4, v9, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1250
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1251
    invoke-static {v4, v9, v3, v7}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move/from16 v37, v10

    move-object/from16 v23, v11

    int-to-long v10, v3

    .line 1252
    :try_start_14
    invoke-static {v4, v9, v10, v11}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v6, :cond_60

    .line 1254
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_45

    :cond_5f
    const/4 v0, 0x0

    :goto_44
    const/16 v35, 0x0

    goto :goto_46

    :catchall_8
    move-exception v0

    goto :goto_40

    :cond_60
    :goto_45
    const/4 v0, 0x1

    goto :goto_44

    .line 1257
    :goto_46
    aget-byte v9, v4, v35

    and-int/lit16 v9, v9, 0xff

    sub-int/2addr v3, v9

    if-nez v0, :cond_63

    .line 1260
    invoke-static {v4, v9, v3, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_49

    :cond_61
    move/from16 v37, v10

    move-object/from16 v23, v11

    if-eqz v37, :cond_62

    .line 1265
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    :goto_47
    const/4 v3, 0x0

    goto :goto_48

    .line 1267
    :cond_62
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_47

    .line 1269
    :goto_48
    invoke-static {v0, v3, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1270
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1274
    :cond_63
    :goto_49
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    .line 1275
    iget v3, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    cmpl-float v4, v5, v19

    if-ltz v4, :cond_64

    cmpl-float v4, v0, v3

    if-lez v4, :cond_64

    div-float v4, v0, v5

    div-float v9, v3, v19

    .line 1278
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_4a

    :cond_64
    div-float v4, v0, v5

    div-float v9, v3, v19

    .line 1280
    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_4a
    cmpg-float v9, v4, v20

    if-gez v9, :cond_65

    move/from16 v4, v33

    :cond_65
    const/4 v9, 0x0

    .line 1285
    iput-boolean v9, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    cmpl-float v9, v4, v33

    if-lez v9, :cond_68

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_66

    cmpl-float v0, v3, v19

    if-lez v0, :cond_68

    :cond_66
    const/4 v0, 0x1

    :goto_4b
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_67

    .line 1291
    iput v3, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4c

    :cond_67
    move v0, v3

    goto :goto_4b

    :cond_68
    float-to-int v0, v4

    .line 1293
    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_4c

    :catchall_9
    move-exception v0

    move/from16 v37, v3

    move/from16 v22, v4

    goto/16 :goto_42

    :cond_69
    move/from16 v37, v3

    move/from16 v22, v4

    move-object/from16 v23, v11

    :goto_4c
    move/from16 v4, v22

    const/4 v0, 0x0

    goto/16 :goto_55

    :catchall_a
    move-exception v0

    move/from16 v37, v3

    move/from16 v22, v4

    move-object/from16 v23, v11

    const/4 v3, 0x0

    :goto_4d
    const/4 v8, 0x0

    goto/16 :goto_57

    :catchall_b
    move-exception v0

    move/from16 v37, v3

    move-object/from16 v23, v11

    :goto_4e
    const/4 v3, 0x0

    :goto_4f
    const/4 v4, 0x0

    goto :goto_4d

    :catchall_c
    move-exception v0

    move/from16 v37, v3

    move-object/from16 v23, v11

    const v20, 0x3f99999a    # 1.2f

    goto :goto_4e

    :catchall_d
    move-exception v0

    move/from16 v37, v3

    move-object/from16 v23, v11

    const v20, 0x3f99999a    # 1.2f

    :goto_50
    move/from16 v5, v34

    move/from16 v19, v5

    goto :goto_4e

    :cond_6a
    move/from16 v37, v3

    move-object/from16 v23, v11

    const v20, 0x3f99999a    # 1.2f

    const/16 v34, 0x0

    if-eqz v23, :cond_6f

    const/4 v3, 0x1

    .line 1297
    :try_start_15
    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v18, :cond_6b

    .line 1298
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_51

    :catchall_e
    move-exception v0

    goto :goto_50

    :cond_6b
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_51
    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1299
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 1300
    invoke-static {v0, v3, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    .line 1301
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1302
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1303
    iget v3, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v9, 0x0

    .line 1304
    iput-boolean v9, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1305
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v8, 0x42

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1306
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v5

    div-float/2addr v0, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v0, v3

    cmpg-float v3, v0, v33

    if-gez v3, :cond_6c

    move/from16 v0, v33

    :cond_6c
    cmpl-float v3, v0, v33

    if-lez v3, :cond_6e

    const/4 v3, 0x1

    :goto_52
    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    cmpg-float v3, v3, v0

    if-lez v3, :cond_6d

    .line 1315
    iput v5, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_53

    :catchall_f
    move-exception v0

    move-object v3, v4

    move/from16 v5, v34

    move/from16 v19, v5

    goto/16 :goto_4f

    :cond_6d
    move v3, v5

    goto :goto_52

    :cond_6e
    float-to-int v0, v0

    .line 1317
    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    :goto_53
    move-object v0, v4

    move/from16 v5, v34

    move/from16 v19, v5

    :goto_54
    const/4 v4, 0x0

    const/4 v8, 0x0

    goto :goto_55

    :cond_6f
    move/from16 v5, v34

    move/from16 v19, v5

    const/4 v0, 0x0

    goto :goto_54

    :goto_55
    move-object v3, v0

    :goto_56
    move/from16 v9, v19

    goto :goto_58

    :catchall_10
    move-exception v0

    move/from16 v37, v3

    move-object/from16 v23, v11

    const v20, 0x3f99999a    # 1.2f

    const/16 v34, 0x0

    goto/16 :goto_50

    .line 1325
    :goto_57
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_56

    .line 1328
    :goto_58
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    const/high16 v10, 0x41a00000    # 20.0f

    const/4 v11, 0x1

    if-ne v0, v11, :cond_87

    .line 1330
    :try_start_17
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v0, v11, v12}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fputlastCacheOutTime(Lorg/telegram/messenger/ImageLoader;J)V

    .line 1331
    iget-object v9, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v9
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_12

    .line 1332
    :try_start_18
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_70

    .line 1333
    monitor-exit v9

    goto/16 :goto_96

    :catchall_11
    move-exception v0

    goto/16 :goto_68

    .line 1335
    :cond_70
    monitor-exit v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    .line 1337
    :try_start_19
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v0, :cond_73

    if-eqz v7, :cond_71

    goto :goto_5b

    :cond_71
    if-eqz v37, :cond_72

    .line 1367
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v6, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v2, v6}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    :goto_59
    const/4 v6, 0x0

    goto :goto_5a

    :catchall_12
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_69

    .line 1369
    :cond_72
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_59

    .line 1371
    :goto_5a
    invoke-static {v0, v6, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1372
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_61

    .line 1338
    :cond_73
    :goto_5b
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "r"

    invoke-direct {v0, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    long-to-int v9, v11

    .line 1341
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$sfgetbytesThumbLocal()Ljava/lang/ThreadLocal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    if-eqz v11, :cond_74

    .line 1342
    array-length v12, v11

    if-lt v12, v9, :cond_74

    goto :goto_5c

    :cond_74
    const/4 v11, 0x0

    :goto_5c
    if-nez v11, :cond_75

    .line 1344
    new-array v11, v9, [B

    .line 1345
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$sfgetbytesThumbLocal()Ljava/lang/ThreadLocal;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_75
    const/4 v12, 0x0

    .line 1347
    invoke-virtual {v0, v11, v12, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1348
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v7, :cond_78

    .line 1351
    invoke-static {v11, v12, v9, v7}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V

    int-to-long v13, v9

    .line 1352
    invoke-static {v11, v12, v13, v14}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v6, :cond_77

    .line 1353
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_5e

    :cond_76
    const/4 v0, 0x0

    :goto_5d
    const/16 v35, 0x0

    goto :goto_5f

    :cond_77
    :goto_5e
    const/4 v0, 0x1

    goto :goto_5d

    .line 1356
    :goto_5f
    aget-byte v6, v11, v35

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v9, v6

    goto :goto_60

    :cond_78
    if-eqz v37, :cond_79

    .line 1359
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    const/4 v12, 0x0

    invoke-static {v11, v12, v9, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    :cond_79
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_60
    if-nez v0, :cond_7a

    .line 1362
    invoke-static {v11, v6, v9, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_7a
    :goto_61
    if-nez v3, :cond_7d

    .line 1376
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v31

    if-eqz v0, :cond_7b

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v0, :cond_7c

    .line 1377
    :cond_7b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_7c
    const/4 v10, 0x0

    goto/16 :goto_67

    .line 1380
    :cond_7d
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 1381
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1382
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 1383
    iget-boolean v7, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v7, :cond_7e

    cmpl-float v7, v5, v34

    if-eqz v7, :cond_7e

    cmpl-float v7, v0, v5

    if-eqz v7, :cond_7e

    add-float/2addr v10, v5

    cmpl-float v7, v0, v10

    if-lez v7, :cond_7e

    div-float/2addr v0, v5

    float-to-int v5, v5

    div-float/2addr v6, v0

    float-to-int v0, v6

    const/4 v11, 0x1

    .line 1385
    invoke-static {v3, v5, v0, v11}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v3, v0, :cond_7e

    .line 1387
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v0

    :cond_7e
    if-eqz v8, :cond_80

    .line 1393
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v36, 0x1

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    invoke-static {v3, v0, v5, v6, v7}, Lorg/telegram/messenger/Utilities;->needInvert(Ljava/lang/Object;IIII)I

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    if-eqz v0, :cond_7f

    const/4 v0, 0x1

    goto :goto_62

    :cond_7f
    const/4 v0, 0x0

    :goto_62
    move v10, v0

    :goto_63
    const/4 v11, 0x1

    goto :goto_64

    :cond_80
    const/4 v10, 0x0

    goto :goto_63

    :goto_64
    if-ne v4, v11, :cond_81

    .line 1396
    :try_start_1a
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v4, :cond_86

    .line 1397
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_14

    const/4 v5, 0x3

    move-object v4, v3

    :try_start_1b
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    goto/16 :goto_67

    :catchall_13
    move-exception v0

    move-object v3, v4

    goto/16 :goto_69

    :catchall_14
    move-exception v0

    goto/16 :goto_69

    :cond_81
    const/4 v5, 0x2

    if-ne v4, v5, :cond_82

    .line 1400
    :try_start_1c
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v4, :cond_86

    .line 1401
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v36, 0x1

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    const/4 v5, 0x1

    move-object v4, v3

    :try_start_1d
    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    goto/16 :goto_67

    :cond_82
    move/from16 v5, v17

    if-eq v4, v5, :cond_84

    move/from16 v5, v16

    if-ne v4, v5, :cond_83

    goto :goto_65

    :cond_83
    if-nez v4, :cond_86

    .line 1424
    :try_start_1e
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_86

    .line 1425
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    goto/16 :goto_67

    .line 1404
    :cond_84
    :goto_65
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v5, :cond_86

    const/4 v5, 0x4

    if-ne v4, v5, :cond_85

    .line 1406
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1407
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1408
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 1410
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    move/from16 v8, v20

    invoke-virtual {v4, v8, v8, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    move/from16 v5, v34

    const/4 v7, 0x0

    .line 1411
    invoke-virtual {v4, v3, v5, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1412
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 1413
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 1414
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1415
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1416
    invoke-virtual {v4, v3, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1417
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    move-object v4, v0

    goto :goto_66

    :cond_85
    move-object v4, v3

    .line 1420
    :goto_66
    :try_start_1f
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v36, 0x1

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    const/4 v5, 0x7

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 1421
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v36, 0x1

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    const/4 v5, 0x7

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 1422
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v36, 0x1

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    const/4 v5, 0x7

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    move-object v3, v4

    :cond_86
    :goto_67
    const/4 v9, 0x0

    const/4 v11, 0x0

    goto/16 :goto_8b

    .line 1335
    :goto_68
    :try_start_20
    monitor-exit v9
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    :try_start_21
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 1429
    :goto_69
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_67

    .line 1433
    :cond_87
    :try_start_22
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    move/from16 v16, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$fputlastCacheOutTime(Lorg/telegram/messenger/ImageLoader;J)V

    .line 1434
    iget-object v10, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_16

    .line 1435
    :try_start_23
    iget-boolean v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_88

    .line 1436
    monitor-exit v10

    goto/16 :goto_96

    :catchall_15
    move-exception v0

    goto/16 :goto_89

    .line 1438
    :cond_88
    monitor-exit v10
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    if-nez v18, :cond_8a

    .line 1440
    :try_start_24
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v10, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v10, :cond_8a

    if-nez v4, :cond_8a

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v0, :cond_89

    goto :goto_6c

    .line 1443
    :cond_89
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_6a
    const/4 v10, 0x0

    goto :goto_6d

    :catchall_16
    move-exception v0

    :goto_6b
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_8a

    .line 1441
    :cond_8a
    :goto_6c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_6a

    .line 1446
    :goto_6d
    iput-boolean v10, v15, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    if-eqz v12, :cond_8d

    if-nez v23, :cond_8d

    if-eqz v13, :cond_8c

    .line 1449
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v10, v31

    if-nez v0, :cond_8b

    .line 1450
    new-instance v17, Lorg/telegram/ui/Components/AnimatedFileDrawable;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_16

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v18, v2

    :try_start_25
    invoke-direct/range {v17 .. v30}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    move-object/from16 v0, v17

    move-wide/from16 v10, v31

    const/4 v12, 0x1

    .line 1451
    :try_start_26
    invoke-virtual {v0, v10, v11, v12}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1452
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_6e

    :catchall_17
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_6b

    .line 1454
    :cond_8b
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v0, v10, v11, v12, v15}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_6e

    .line 1457
    :cond_8c
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v0, v10, v11, v12, v15}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_8d
    :goto_6e
    if-nez v3, :cond_9e

    if-nez v3, :cond_96

    if-eqz v7, :cond_8e

    .line 1464
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-direct {v0, v2, v7}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Lorg/telegram/messenger/SecureDocumentKey;)V

    goto :goto_6f

    :cond_8e
    if-eqz v37, :cond_8f

    .line 1466
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v10, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v10, v10, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v2, v10}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_16

    goto :goto_6f

    .line 1468
    :cond_8f
    :try_start_27
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1470
    :goto_6f
    iget-object v10, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v10, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_document;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1d

    if-nez v11, :cond_91

    :try_start_28
    iget-object v10, v10, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v10, :cond_90

    const-string v11, "exif"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    if-eqz v10, :cond_90

    goto :goto_70

    :cond_90
    move-object v13, v3

    move/from16 v17, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_75

    .line 1471
    :cond_91
    :goto_70
    :try_start_29
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v10

    .line 1472
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1d

    .line 1473
    :try_start_2a
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1c

    if-nez v7, :cond_92

    .line 1474
    :try_start_2b
    iget-object v12, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    if-eqz v12, :cond_93

    :cond_92
    move-object v13, v3

    move/from16 v17, v4

    goto :goto_73

    .line 1482
    :cond_93
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_19

    move-object v13, v3

    move/from16 v17, v4

    const-wide/16 v3, 0x0

    :try_start_2c
    invoke-virtual {v12, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    goto :goto_74

    :catchall_18
    move-exception v0

    :goto_71
    move-object v3, v13

    :goto_72
    const/4 v9, 0x0

    goto/16 :goto_8a

    :catchall_19
    move-exception v0

    move-object v13, v3

    goto :goto_72

    .line 1475
    :goto_73
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1b

    if-eqz v7, :cond_95

    .line 1477
    :try_start_2e
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-direct {v0, v2, v7}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Lorg/telegram/messenger/SecureDocumentKey;)V

    :cond_94
    :goto_74
    const/4 v4, 0x0

    goto :goto_75

    :cond_95
    if-eqz v37, :cond_94

    .line 1479
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v3, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_74

    .line 1485
    :goto_75
    invoke-static {v0, v4, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_18

    .line 1486
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1a

    goto :goto_76

    :catchall_1a
    move-exception v0

    goto :goto_72

    :catchall_1b
    move-exception v0

    const/4 v4, 0x0

    goto :goto_71

    :catchall_1c
    move-exception v0

    move-object v13, v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_8a

    :catchall_1d
    move-exception v0

    move-object v13, v3

    const/4 v4, 0x0

    goto/16 :goto_6b

    :cond_96
    move-object v13, v3

    move/from16 v17, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_76
    if-nez v3, :cond_9d

    .line 1491
    :try_start_30
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v12, "r"

    invoke-direct {v0, v2, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v12, v12

    .line 1494
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$sfgetbytesLocal()Ljava/lang/ThreadLocal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    if-eqz v13, :cond_97

    .line 1495
    array-length v4, v13

    if-lt v4, v12, :cond_97

    goto :goto_77

    :catchall_1e
    move-exception v0

    move/from16 v18, v8

    goto :goto_7c

    :cond_97
    const/4 v13, 0x0

    :goto_77
    if-nez v13, :cond_98

    .line 1497
    new-array v13, v12, [B

    .line 1498
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->-$$Nest$sfgetbytesLocal()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_98
    const/4 v4, 0x0

    .line 1500
    invoke-virtual {v0, v13, v4, v12}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1501
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v7, :cond_9b

    .line 1504
    invoke-static {v13, v4, v12, v7}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1e

    move/from16 v18, v8

    int-to-long v7, v12

    .line 1505
    :try_start_31
    invoke-static {v13, v4, v7, v8}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v6, :cond_9a

    .line 1506
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_79

    :cond_99
    const/4 v0, 0x0

    :goto_78
    const/16 v35, 0x0

    goto :goto_7a

    :catchall_1f
    move-exception v0

    goto :goto_7c

    :cond_9a
    :goto_79
    const/4 v0, 0x1

    goto :goto_78

    .line 1509
    :goto_7a
    aget-byte v4, v13, v35

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v12, v4

    goto :goto_7b

    :cond_9b
    move/from16 v18, v8

    if-eqz v37, :cond_9c

    .line 1512
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v13, v4, v12, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    :cond_9c
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_7b
    if-nez v0, :cond_9f

    .line 1515
    invoke-static {v13, v4, v12, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1f

    goto :goto_7d

    .line 1518
    :goto_7c
    :try_start_32
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7d

    :cond_9d
    move/from16 v18, v8

    goto :goto_7d

    :cond_9e
    move-object v13, v3

    move/from16 v17, v4

    move/from16 v18, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_9f
    :goto_7d
    if-nez v3, :cond_a2

    if-eqz v14, :cond_a1

    .line 1523
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v31, 0x0

    cmp-long v0, v4, v31

    if-eqz v0, :cond_a0

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v0, :cond_a1

    .line 1524
    :cond_a0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_a1
    const/4 v9, 0x0

    goto/16 :goto_88

    .line 1528
    :cond_a2
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_ae

    .line 1529
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1530
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 1531
    iget-boolean v6, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v6, :cond_a5

    const/16 v34, 0x0

    cmpl-float v6, v5, v34

    if-eqz v6, :cond_a5

    cmpl-float v6, v0, v5

    if-eqz v6, :cond_a5

    add-float v6, v5, v16

    cmpl-float v6, v0, v6

    if-lez v6, :cond_a5

    cmpl-float v6, v0, v4

    if-lez v6, :cond_a3

    cmpl-float v6, v5, v9

    if-lez v6, :cond_a3

    div-float v6, v0, v5

    cmpl-float v7, v6, v33

    if-lez v7, :cond_a4

    float-to-int v5, v5

    div-float v6, v4, v6

    float-to-int v6, v6

    const/4 v12, 0x1

    .line 1536
    invoke-static {v3, v5, v6, v12}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_7e

    :cond_a3
    div-float v5, v4, v9

    cmpl-float v6, v5, v33

    if-lez v6, :cond_a4

    div-float v5, v0, v5

    float-to-int v5, v5

    float-to-int v6, v9

    const/4 v12, 0x1

    .line 1543
    invoke-static {v3, v5, v6, v12}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_7e

    :cond_a4
    move-object v5, v3

    :goto_7e
    if-eq v3, v5, :cond_a5

    .line 1549
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v5

    :cond_a5
    if-eqz v3, :cond_ae

    if-eqz v18, :cond_a9

    .line 1556
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1557
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    const/16 v6, 0x57e4

    if-le v5, v6, :cond_a6

    const/16 v5, 0x64

    const/16 v6, 0x64

    const/4 v9, 0x0

    .line 1559
    invoke-static {v3, v5, v6, v9}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_7f

    :cond_a6
    move-object v5, v3

    .line 1561
    :goto_7f
    iget-boolean v6, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v36, 0x1

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Lorg/telegram/messenger/Utilities;->needInvert(Ljava/lang/Object;IIII)I

    move-result v6
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1a

    if-eqz v6, :cond_a7

    const/4 v6, 0x1

    goto :goto_80

    :cond_a7
    const/4 v6, 0x0

    :goto_80
    if-eq v5, v3, :cond_a8

    .line 1563
    :try_start_33
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_20

    goto :goto_81

    :catchall_20
    move-exception v0

    move v9, v6

    goto/16 :goto_8a

    :cond_a8
    :goto_81
    move v9, v6

    goto :goto_82

    :cond_a9
    const/4 v9, 0x0

    :goto_82
    const/high16 v5, 0x42c80000    # 100.0f

    if-eqz v17, :cond_ab

    cmpl-float v6, v4, v5

    if-gtz v6, :cond_aa

    cmpl-float v6, v0, v5

    if-lez v6, :cond_ab

    :cond_aa
    const/16 v0, 0x50

    const/16 v4, 0x50

    const/4 v12, 0x0

    .line 1567
    :try_start_34
    invoke-static {v3, v0, v4, v12}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_21

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v0, 0x42a00000    # 80.0f

    :cond_ab
    move-object/from16 v18, v3

    goto :goto_83

    :catchall_21
    move-exception v0

    goto :goto_8a

    :goto_83
    if-eqz v17, :cond_ad

    cmpg-float v3, v4, v5

    if-gez v3, :cond_ad

    cmpg-float v0, v0, v5

    if-gez v0, :cond_ad

    .line 1572
    :try_start_35
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_ac

    .line 1573
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/16 v36, 0x1

    xor-int/lit8 v20, v0, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v23

    const/16 v19, 0x3

    invoke-static/range {v18 .. v23}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_22

    goto :goto_84

    :catchall_22
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_8a

    :cond_ac
    :goto_84
    move v4, v9

    move-object/from16 v3, v18

    const/4 v9, 0x1

    goto :goto_86

    :cond_ad
    move v4, v9

    move-object/from16 v3, v18

    :goto_85
    const/4 v9, 0x0

    goto :goto_86

    :cond_ae
    const/4 v4, 0x0

    goto :goto_85

    :goto_86
    if-nez v9, :cond_af

    .line 1579
    :try_start_36
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_af

    .line 1580
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_23

    goto :goto_87

    :catchall_23
    move-exception v0

    move v9, v4

    goto :goto_8a

    :cond_af
    :goto_87
    move v9, v4

    :goto_88
    move/from16 v38, v10

    move v10, v9

    move/from16 v9, v38

    goto :goto_8b

    .line 1438
    :goto_89
    :try_start_37
    monitor-exit v10
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_15

    :try_start_38
    throw v0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_16

    .line 1584
    :goto_8a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_88

    .line 1587
    :goto_8b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1588
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_b1

    if-eqz v37, :cond_b1

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image Loader image is empty = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_b0

    const/4 v4, 0x1

    goto :goto_8c

    :cond_b0
    const/4 v4, 0x0

    :goto_8c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_b1
    if-eqz v3, :cond_b2

    .line 1591
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v2, :cond_b2

    .line 1592
    check-cast v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-direct {v1, v3, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1594
    :cond_b2
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v0, :cond_b3

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_b3

    const-string v2, "ignoreOrientation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b4

    :cond_b3
    if-nez v10, :cond_b6

    if-nez v11, :cond_b6

    if-eqz v9, :cond_b4

    goto :goto_8e

    :cond_b4
    if-eqz v3, :cond_b5

    .line 1597
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_8d

    :cond_b5
    const/4 v5, 0x0

    :goto_8d
    invoke-direct {v1, v5}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_96

    :cond_b6
    :goto_8e
    if-eqz v3, :cond_b7

    .line 1595
    new-instance v5, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-direct {v5, v3, v11, v9}, Lorg/telegram/messenger/ExtendedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_8f

    :cond_b7
    const/4 v5, 0x0

    :goto_8f
    invoke-direct {v1, v5}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_96

    .line 886
    :cond_b8
    :goto_90
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 887
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 888
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_b9

    .line 889
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 890
    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_b9

    const/16 v35, 0x0

    .line 891
    aget-object v2, v0, v35

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/16 v36, 0x1

    .line 892
    aget-object v0, v0, v36

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 893
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move v3, v2

    move v2, v0

    goto :goto_91

    :cond_b9
    const/16 v35, 0x0

    const/16 v36, 0x1

    .line 901
    :goto_91
    :try_start_39
    iget-object v0, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_ba

    move/from16 v9, v36

    goto :goto_92

    :cond_ba
    move/from16 v9, v35

    :goto_92
    invoke-static {v4, v3, v2, v9}, Lorg/telegram/messenger/SvgHelper;->getSvgBitmap(Ljava/io/File;IIZ)Lorg/telegram/messenger/SvgHelper$SvgResult;

    move-result-object v3
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_25

    .line 902
    :try_start_3a
    invoke-interface {v3}, Lorg/telegram/messenger/SvgHelper$SvgResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_24

    move-object/from16 v38, v3

    move-object v3, v0

    move-object/from16 v0, v38

    goto :goto_94

    :catchall_24
    move-exception v0

    goto :goto_93

    :catchall_25
    move-exception v0

    const/4 v3, 0x0

    .line 904
    :goto_93
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v3

    const/4 v3, 0x0

    :goto_94
    if-eqz v3, :cond_bb

    .line 906
    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bb

    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v4, "wallpaper"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bb

    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v4, :cond_bb

    .line 907
    check-cast v2, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-direct {v1, v3, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_bb
    if-eqz v0, :cond_bc

    .line 909
    invoke-interface {v0}, Lorg/telegram/messenger/SvgHelper$SvgResult;->getGiftPatternPositions()Ljava/util/List;

    move-result-object v5

    goto :goto_95

    :cond_bc
    const/4 v5, 0x0

    :goto_95
    invoke-static {v3, v5}, Lorg/telegram/messenger/wallpaper/WallpaperGiftBitmapDrawable;->create(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    :goto_96
    return-void

    .line 871
    :goto_97
    :try_start_3b
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    throw v0
.end method
