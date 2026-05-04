.class public Lorg/telegram/ui/Components/BlurBehindDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;
    }
.end annotation


# instance fields
.field private final DOWN_SCALE:F

.field private animateAlpha:Z

.field private backgroundBitmap:[Landroid/graphics/Bitmap;

.field private backgroundBitmapCanvas:[Landroid/graphics/Canvas;

.field private behindView:Landroid/view/View;

.field private blurAlpha:F

.field blurBackgroundTask:Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

.field private blurCanvas:[Landroid/graphics/Canvas;

.field private blurredBitmapTmp:[Landroid/graphics/Bitmap;

.field emptyPaint:Landroid/graphics/Paint;

.field private error:Z

.field errorBlackoutPaint:Landroid/graphics/Paint;

.field private flashProgress:F

.field private invalidate:Z

.field private lastH:I

.field private lastW:I

.field private panTranslationY:F

.field private parentView:Landroid/view/View;

.field private processingNextFrame:Z

.field queue:Lorg/telegram/messenger/DispatchQueue;

.field private renderingBitmap:[Landroid/graphics/Bitmap;

.field private renderingBitmapCanvas:[Landroid/graphics/Canvas;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private show:Z

.field private skipDraw:Z

.field private toolbarH:I

.field private final type:I

.field private wasDraw:Z


# direct methods
.method public static synthetic $r8$lambda$JJ8-tuKaKQmn5ZgdGONKlqKf2zw(Lorg/telegram/ui/Components/BlurBehindDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->lambda$draw$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundBitmap(Lorg/telegram/ui/Components/BlurBehindDrawable;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->backgroundBitmap:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundBitmapCanvas(Lorg/telegram/ui/Components/BlurBehindDrawable;)[Landroid/graphics/Canvas;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->backgroundBitmapCanvas:[Landroid/graphics/Canvas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurredBitmapTmp(Lorg/telegram/ui/Components/BlurBehindDrawable;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentView(Lorg/telegram/ui/Components/BlurBehindDrawable;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrenderingBitmap(Lorg/telegram/ui/Components/BlurBehindDrawable;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrenderingBitmapCanvas(Lorg/telegram/ui/Components/BlurBehindDrawable;)[Landroid/graphics/Canvas;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmapCanvas:[Landroid/graphics/Canvas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettoolbarH(Lorg/telegram/ui/Components/BlurBehindDrawable;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->toolbarH:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbackgroundBitmap(Lorg/telegram/ui/Components/BlurBehindDrawable;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->backgroundBitmap:[Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackgroundBitmapCanvas(Lorg/telegram/ui/Components/BlurBehindDrawable;[Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->backgroundBitmapCanvas:[Landroid/graphics/Canvas;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprocessingNextFrame(Lorg/telegram/ui/Components/BlurBehindDrawable;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->processingNextFrame:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrenderingBitmap(Lorg/telegram/ui/Components/BlurBehindDrawable;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrenderingBitmapCanvas(Lorg/telegram/ui/Components/BlurBehindDrawable;[Landroid/graphics/Canvas;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmapCanvas:[Landroid/graphics/Canvas;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBlurRadius(Lorg/telegram/ui/Components/BlurBehindDrawable;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->getBlurRadius()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/BlurBehindDrawable;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BlurBehindDrawable;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->invalidate:Z

    .line 51
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->animateAlpha:Z

    const/high16 v0, 0x40c00000    # 6.0f

    .line 53
    iput v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->DOWN_SCALE:F

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->flashProgress:F

    .line 75
    new-instance v0, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;-><init>(Lorg/telegram/ui/Components/BlurBehindDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurBackgroundTask:Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->emptyPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->errorBlackoutPaint:Landroid/graphics/Paint;

    .line 82
    iput p3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->type:I

    .line 83
    iput-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    .line 84
    iput-object p2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    .line 85
    iput-object p4, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 p1, -0x1000000

    .line 86
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private generateBlurredBitmaps()V
    .locals 12

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 287
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    .line 288
    new-array v2, v1, [Landroid/graphics/Canvas;

    iput-object v2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmapCanvas:[Landroid/graphics/Canvas;

    .line 290
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 291
    new-array v2, v1, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    .line 292
    new-array v2, v1, [Landroid/graphics/Canvas;

    iput-object v2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    .line 294
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurBackgroundTask:Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;->canceled:Z

    .line 295
    new-instance v2, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;-><init>(Lorg/telegram/ui/Components/BlurBehindDrawable;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurBackgroundTask:Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_c

    .line 298
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 299
    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 300
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v8, 0x43480000    # 200.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->toolbarH:I

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v7, v5

    .line 303
    :goto_1
    aget-object v8, v0, v4

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ne v8, v7, :cond_3

    aget-object v8, v0, v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-eq v8, v9, :cond_b

    .line 304
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->queue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v8, :cond_4

    .line 305
    invoke-virtual {v8}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 308
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    int-to-float v6, v6

    const/high16 v9, 0x40c00000    # 6.0f

    div-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v7, v7

    div-float/2addr v7, v9

    float-to-int v7, v7

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v8, v4

    if-ne v4, v3, :cond_5

    .line 310
    iget-object v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v4

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/BlurBehindDrawable;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 312
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    new-instance v8, Landroid/graphics/Canvas;

    iget-object v11, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v11, v11, v4

    invoke-direct {v8, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v8, v7, v4

    if-nez v4, :cond_6

    .line 314
    iget v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->toolbarH:I

    :cond_6
    int-to-float v5, v5

    div-float/2addr v5, v9

    float-to-int v5, v5

    .line 316
    iget-object v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    invoke-static {v6, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v7, v4

    .line 317
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmapCanvas:[Landroid/graphics/Canvas;

    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v4

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v6, v5, v4

    .line 318
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmapCanvas:[Landroid/graphics/Canvas;

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 320
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 321
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v5, v5, v4

    const v6, 0x3e2aaaab

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v6, v7, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 322
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_7

    .line 324
    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 326
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x4000003

    invoke-virtual {v6, v9, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-nez v4, :cond_8

    .line 328
    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v6, v6, v4

    iget v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->panTranslationY:F

    neg-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    iget-object v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v8, v8, v4

    invoke-virtual {v6, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    if-ne v4, v3, :cond_9

    .line 333
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 334
    iget-object v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v10, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v5, v2, v2, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    iget-object v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v8, v8, v4

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 337
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 340
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 341
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 343
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->getBlurRadius()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 344
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->emptyPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    if-ne v4, v3, :cond_a

    .line 346
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/BlurBehindDrawable;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 348
    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmapCanvas:[Landroid/graphics/Canvas;

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v4

    iget-object v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v1, :cond_0

    .line 438
    check-cast v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 439
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getBlurRadius()I
    .locals 2

    .line 219
    iget v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->lastH:I

    iget v1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->lastW:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$draw$1()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->error:Z

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public checkSizes()V
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->generateBlurredBitmaps()V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->lastH:I

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->lastW:I

    :cond_1
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 93
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->wasDraw:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->animateAlpha:Z

    if-nez v0, :cond_1

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->generateBlurredBitmaps()V

    .line 95
    iput-boolean v1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->invalidate:Z

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 98
    iget-boolean v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->error:Z

    if-eqz v5, :cond_6

    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->animateAlpha:Z

    if-eqz v5, :cond_6

    .line 99
    iget-boolean v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->show:Z

    const v6, 0x3db851ec    # 0.09f

    if-eqz v5, :cond_4

    iget v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurAlpha:F

    cmpl-float v8, v7, v3

    if-eqz v8, :cond_4

    add-float/2addr v7, v6

    .line 100
    iput v7, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurAlpha:F

    cmpl-float v5, v7, v3

    if-lez v5, :cond_3

    .line 102
    iput v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurAlpha:F

    .line 104
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_4
    if-nez v5, :cond_6

    .line 105
    iget v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurAlpha:F

    cmpl-float v7, v5, v4

    if-eqz v7, :cond_6

    sub-float/2addr v5, v6

    .line 106
    iput v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurAlpha:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_5

    .line 108
    iput v4, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurAlpha:F

    .line 110
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 114
    :cond_6
    :goto_0
    iget-boolean v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->animateAlpha:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurAlpha:F

    goto :goto_1

    :cond_7
    move v5, v3

    :goto_1
    if-nez v0, :cond_8

    .line 115
    iget-boolean v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->error:Z

    if-eqz v6, :cond_8

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->errorBlackoutPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->errorBlackoutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void

    :cond_8
    cmpl-float v3, v5, v3

    const/high16 v6, 0x437f0000    # 255.0f

    if-nez v3, :cond_9

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-object v7, p1

    goto :goto_2

    .line 124
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v10, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v11, v3

    mul-float v3, v5, v6

    float-to-int v12, v3

    const/16 v13, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :goto_2
    if-eqz v0, :cond_c

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->emptyPaint:Landroid/graphics/Paint;

    mul-float/2addr v5, v6

    float-to-int v3, v5

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->type:I

    if-ne p1, v2, :cond_a

    .line 129
    iget p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->panTranslationY:F

    invoke-virtual {v7, v4, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    :cond_a
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v7, p1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 133
    aget-object p1, v0, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 135
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 136
    iget p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->type:I

    if-nez p1, :cond_b

    .line 137
    iget p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->panTranslationY:F

    invoke-virtual {v7, v4, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    iget v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->toolbarH:I

    int-to-float v3, v3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v7, p1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 140
    aget-object p1, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, p1, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 142
    iput-boolean v2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->wasDraw:Z

    const/4 p1, -0x1

    .line 144
    iget v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->flashProgress:F

    const/high16 v3, 0x1a000000

    invoke-static {v3, p1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 146
    :cond_c
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 148
    iget-boolean p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->show:Z

    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->processingNextFrame:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->renderingBitmap:[Landroid/graphics/Bitmap;

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->invalidate:Z

    if-eqz p1, :cond_1a

    .line 149
    :cond_d
    iput-boolean v2, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->processingNextFrame:Z

    .line 150
    iput-boolean v1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->invalidate:Z

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    if-nez p1, :cond_e

    .line 152
    new-array p1, v0, [Landroid/graphics/Bitmap;

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    .line 153
    new-array p1, v0, [Landroid/graphics/Canvas;

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    :cond_e
    move p1, v1

    :goto_3
    if-ge p1, v0, :cond_16

    .line 156
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->lastW:I

    if-ne v3, v5, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->lastH:I

    if-eq v3, v5, :cond_f

    goto :goto_4

    .line 173
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_5

    .line 157
    :cond_10
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 158
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 159
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->toolbarH:I

    if-nez p1, :cond_11

    move v3, v6

    .line 162
    :cond_11
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    int-to-float v5, v5

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v3, v3

    div-float/2addr v3, v7

    float-to-int v3, v3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v6, p1

    .line 163
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v6, v6, p1

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v5, v3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    if-ne p1, v2, :cond_12

    .line 176
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurredBitmapTmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/BlurBehindDrawable;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 178
    :cond_12
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 179
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v3, v3, p1

    const v5, 0x3e2aaaab

    invoke-virtual {v3, v5, v5, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 180
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_13

    .line 182
    invoke-direct {p0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 184
    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x4000003

    invoke-virtual {v5, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-nez p1, :cond_14

    .line 186
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v5, v5, p1

    iget v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->panTranslationY:F

    neg-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_14
    if-eqz v3, :cond_15

    if-ne p1, v2, :cond_15

    .line 191
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 192
    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v3, v1, v1, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    iget-object v6, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v6, v6, p1

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 195
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 198
    :cond_15
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->behindView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v7, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 199
    iget-object v3, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurCanvas:[Landroid/graphics/Canvas;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 165
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 166
    new-instance p1, Lorg/telegram/ui/Components/BlurBehindDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/BlurBehindDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BlurBehindDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 202
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->lastH:I

    .line 203
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->lastW:I

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurBackgroundTask:Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;->width:I

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurBackgroundTask:Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;->height:I

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurBackgroundTask:Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    iget v0, p1, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;->width:I

    if-eqz v0, :cond_19

    iget p1, p1, Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;->height:I

    if-nez p1, :cond_17

    goto :goto_6

    .line 211
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->queue:Lorg/telegram/messenger/DispatchQueue;

    if-nez p1, :cond_18

    .line 212
    new-instance p1, Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blur_thread_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->queue:Lorg/telegram/messenger/DispatchQueue;

    .line 214
    :cond_18
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->queue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurBackgroundTask:Lorg/telegram/ui/Components/BlurBehindDrawable$BlurBackgroundTask;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 208
    :cond_19
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->processingNextFrame:Z

    :cond_1a
    :goto_7
    return-void
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->invalidate:Z

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isFullyDrawing()Z
    .locals 2

    .line 270
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->skipDraw:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->wasDraw:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->blurAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->animateAlpha:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->show:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPanTranslationUpdate(F)V
    .locals 0

    .line 362
    iput p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->panTranslationY:F

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAnimateAlpha(Z)V
    .locals 0

    .line 358
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->animateAlpha:Z

    return-void
.end method

.method public show(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BlurBehindDrawable;->show:Z

    return-void
.end method
