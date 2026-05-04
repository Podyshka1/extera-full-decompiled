.class public Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final tmpRect:Landroid/graphics/Rect;


# instance fields
.field private final blurredFromBitmap:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

.field private final navbarColorFromBitmap:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

.field private final sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

.field private final sourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;


# direct methods
.method public static synthetic $r8$lambda$QXHEXiCdGIr8VLJfjASkNpQrsr8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Uz-dJsnFzn0w0GcC1rUEi1BDHmI(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->averageBottomColor(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->tmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 23
    new-instance v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    invoke-direct {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    .line 87
    new-instance v0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

    new-instance v1, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;-><init>(Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->blurredFromBitmap:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

    .line 88
    new-instance v0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

    new-instance v1, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;-><init>(Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->navbarColorFromBitmap:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

    return-void
.end method

.method private static averageBottomColor(Landroid/graphics/Bitmap;)I
    .locals 15

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v2, v1

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-int v9, v2

    sub-int v7, v1, v9

    mul-int v1, v5, v9

    .line 117
    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v8, v5

    move-object v2, p0

    .line 118
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-wide/16 v4, 0x0

    move p0, v0

    move v2, p0

    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    :goto_0
    if-ge p0, v1, :cond_1

    .line 120
    aget v12, v3, p0

    ushr-int/lit8 v13, v12, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long/2addr v4, v13

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long/2addr v6, v13

    shr-int/lit8 v13, v12, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long/2addr v8, v13

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    add-long/2addr v10, v12

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    int-to-long v0, v2

    .line 130
    div-long/2addr v4, v0

    long-to-int p0, v4

    .line 131
    div-long/2addr v6, v0

    long-to-int v2, v6

    .line 132
    div-long/2addr v8, v0

    long-to-int v3, v8

    .line 133
    div-long/2addr v10, v0

    long-to-int v0, v10

    .line 135
    invoke-static {p0, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method private static blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 96
    invoke-static {p0, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapWithScaleFactor(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getNavigationBarColor(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)I
    .locals 1

    .line 71
    instance-of v0, p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->getColor()I

    move-result p1

    return p1

    .line 75
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    if-eqz v0, :cond_1

    .line 76
    check-cast p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->navbarColorFromBitmap:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->get(Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 80
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    if-eqz v0, :cond_2

    .line 81
    check-cast p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;->getSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->getNavigationBarColor(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public updateSourceFromBackgroundViewDrawable(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;
    .locals 6

    .line 30
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 33
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    return-object p1

    .line 36
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_2

    .line 37
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    .line 38
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getIntensity()I

    move-result v0

    if-gez v0, :cond_1

    .line 39
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 40
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    return-object p1

    .line 42
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    return-object p1

    .line 46
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->blurredFromBitmap:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->get(Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    return-object p1

    .line 52
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 53
    check-cast p1, Lorg/telegram/ui/ChatBackgroundDrawable;

    .line 54
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->getDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->updateSourceFromBackgroundViewDrawable(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    const/16 v2, 0x78

    const/16 v3, 0xa0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    .line 59
    sget-object v4, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 60
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->endRecording()V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    iget-object v0, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->blurredFromBitmap:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->get(Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->sourceBitmap:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    return-object p1
.end method
