.class public Lorg/telegram/ui/Components/Switch;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Switch$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private attachedToWindow:Z

.field private bitmapsCreated:Z

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private colorSet:I

.field private drawIconType:I

.field private drawRipple:Z

.field private iconAnimator:Landroid/animation/ObjectAnimator;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private iconProgress:F

.field private isChecked:Z

.field private lastIconColor:I

.field private overlayBitmap:[Landroid/graphics/Bitmap;

.field private overlayCanvas:[Landroid/graphics/Canvas;

.field private overlayCx:F

.field private overlayCy:F

.field private overlayEraserPaint:Landroid/graphics/Paint;

.field private overlayMaskBitmap:Landroid/graphics/Bitmap;

.field private overlayMaskCanvas:Landroid/graphics/Canvas;

.field private overlayMaskPaint:Landroid/graphics/Paint;

.field private overlayRad:F

.field private overrideAlpha:F

.field private overrideColorProgress:I

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private pressedState:[I

.field private progress:F

.field private rectF:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field private ripplePaint:Landroid/graphics/Paint;

.field private thumbCheckedColorKey:I

.field private thumbColorKey:I

.field private trackCheckedColorKey:I

.field private trackColorKey:I


# direct methods
.method static bridge synthetic -$$Nest$fputcheckAnimator(Lorg/telegram/ui/Components/Switch;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiconAnimator(Lorg/telegram/ui/Components/Switch;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 58
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    .line 62
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->trackColorKey:I

    .line 63
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->trackCheckedColorKey:I

    .line 64
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iput v0, p0, Lorg/telegram/ui/Components/Switch;->thumbColorKey:I

    .line 65
    iput v0, p0, Lorg/telegram/ui/Components/Switch;->thumbCheckedColorKey:I

    const v0, 0x101009e

    const v1, 0x10100a7

    .line 73
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->pressedState:[I

    .line 91
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overrideAlpha:F

    .line 107
    iput-object p2, p0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 108
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    .line 110
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    .line 111
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    .line 112
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 114
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    invoke-virtual {p0, p2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method private animateIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 258
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "iconProgress"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    .line 259
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Switch$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Switch$3;-><init>(Lorg/telegram/ui/Components/Switch;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 245
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 246
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x96

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xc8

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Switch$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Switch$2;-><init>(Lorg/telegram/ui/Components/Switch;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->checkAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private cancelIconAnimator()V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private checkBitmaps()V
    .locals 7

    .line 357
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 363
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Switch;->bitmapsCreated:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 365
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->destroyBitmaps()V

    .line 368
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Switch;->bitmapsCreated:Z

    if-nez v2, :cond_5

    if-lez v0, :cond_5

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    .line 373
    :try_start_0
    new-array v4, v2, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    .line 374
    new-array v4, v2, [Landroid/graphics/Canvas;

    iput-object v4, p0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    :goto_0
    if-ge v3, v2, :cond_4

    .line 376
    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v3

    .line 377
    iget-object v4, p0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    .line 380
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskCanvas:Landroid/graphics/Canvas;

    .line 382
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayEraserPaint:Landroid/graphics/Paint;

    .line 383
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 385
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskPaint:Landroid/graphics/Paint;

    .line 386
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 387
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->bitmapsCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method

.method private destroyBitmaps()V
    .locals 5

    .line 394
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->bitmapsCreated:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    move v0, v1

    .line 396
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 397
    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 399
    iget-object v3, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aput-object v2, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    .line 404
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    iput-object v2, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    .line 409
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    .line 410
    iput-object v2, p0, Lorg/telegram/ui/Components/Switch;->overlayMaskCanvas:Landroid/graphics/Canvas;

    .line 411
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->bitmapsCreated:Z

    return-void
.end method

.method private getOverlayPadding()I
    .locals 1

    .line 94
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getIconProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 144
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    return v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 130
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->progress:F

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 271
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 277
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    .line 279
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->destroyBitmaps()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 416
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1f

    .line 420
    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 421
    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->checkBitmaps()V

    .line 422
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Switch;->bitmapsCreated:Z

    if-nez v2, :cond_1

    .line 423
    iput v3, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    :cond_1
    const/high16 v2, 0x41f80000    # 31.0f

    .line 429
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x41d00000    # 26.0f

    .line 430
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 431
    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x2

    if-eqz v5, :cond_2

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    int-to-float v9, v4

    div-float/2addr v9, v7

    sub-float/2addr v5, v9

    move v9, v5

    move v5, v3

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/2addr v5, v8

    .line 436
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    sub-float/2addr v9, v10

    div-float/2addr v9, v7

    .line 438
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/2addr v10, v8

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v10, v12

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v10, v12

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    div-int/2addr v12, v8

    move v13, v3

    :goto_1
    const/high16 v16, 0x40e00000    # 7.0f

    move/from16 v17, v6

    const/4 v6, 0x1

    if-ge v13, v8, :cond_13

    move/from16 v18, v7

    if-ne v13, v6, :cond_3

    .line 460
    iget v7, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-nez v7, :cond_3

    move/from16 v21, v2

    move/from16 v28, v3

    move/from16 v19, v11

    goto/16 :goto_b

    :cond_3
    if-nez v13, :cond_4

    move-object v7, v1

    goto :goto_2

    .line 463
    :cond_4
    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    aget-object v7, v7, v3

    :goto_2
    if-ne v13, v6, :cond_5

    move/from16 v19, v11

    .line 466
    iget-object v11, v0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aget-object v11, v11, v3

    invoke-virtual {v11, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 467
    iget-object v11, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    const/high16 v14, -0x1000000

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 468
    iget-object v11, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v14

    int-to-float v14, v14

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v15

    int-to-float v15, v15

    move/from16 v28, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v21

    sub-int v3, v3, v21

    int-to-float v3, v3

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v21

    sub-int v8, v8, v21

    int-to-float v8, v8

    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    move/from16 v24, v3

    move-object/from16 v26, v6

    move/from16 v25, v8

    move-object/from16 v21, v11

    move/from16 v22, v14

    move/from16 v23, v15

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 469
    iget-object v3, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskCanvas:Landroid/graphics/Canvas;

    iget v6, v0, Lorg/telegram/ui/Components/Switch;->overlayCx:F

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v8

    sub-float/2addr v6, v8

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    iget v8, v0, Lorg/telegram/ui/Components/Switch;->overlayCy:F

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v11

    sub-float/2addr v8, v11

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v8, v11

    iget v11, v0, Lorg/telegram/ui/Components/Switch;->overlayRad:F

    iget-object v14, v0, Lorg/telegram/ui/Components/Switch;->overlayEraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v8, v11, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    move/from16 v28, v3

    move/from16 v19, v11

    const/high16 v27, 0x3f800000    # 1.0f

    .line 471
    :goto_3
    iget v3, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    if-nez v13, :cond_7

    :cond_6
    const/4 v14, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move/from16 v14, v27

    goto :goto_5

    :cond_8
    const/4 v6, 0x2

    if-ne v3, v6, :cond_9

    if-nez v13, :cond_6

    goto :goto_4

    .line 476
    :cond_9
    iget v3, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v14

    .line 479
    :goto_5
    iget v3, v0, Lorg/telegram/ui/Components/Switch;->trackColorKey:I

    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v3

    .line 480
    iget v6, v0, Lorg/telegram/ui/Components/Switch;->trackCheckedColorKey:I

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v6

    if-nez v13, :cond_c

    .line 481
    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_c

    iget v11, v0, Lorg/telegram/ui/Components/Switch;->lastIconColor:I

    iget-boolean v15, v0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v15, :cond_a

    move v15, v6

    goto :goto_6

    :cond_a
    move v15, v3

    :goto_6
    if-eq v11, v15, :cond_c

    .line 482
    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v15, v0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v15, :cond_b

    move v15, v6

    goto :goto_7

    :cond_b
    move v15, v3

    :goto_7
    iput v15, v0, Lorg/telegram/ui/Components/Switch;->lastIconColor:I

    move/from16 v21, v2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v15, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_8

    :cond_c
    move/from16 v21, v2

    .line 485
    :goto_8
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 486
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 487
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 488
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v15

    move/from16 v20, v3

    .line 489
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 490
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    move/from16 v23, v6

    .line 491
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 492
    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->alpha(I)I

    move-result v20

    move/from16 v23, v8

    int-to-float v8, v2

    sub-int v2, v23, v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    add-float/2addr v8, v2

    float-to-int v2, v8

    int-to-float v8, v11

    sub-int/2addr v15, v11

    int-to-float v11, v15

    mul-float/2addr v11, v14

    add-float/2addr v8, v11

    float-to-int v8, v8

    int-to-float v11, v3

    sub-int v3, v22, v3

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float/2addr v11, v3

    float-to-int v3, v11

    int-to-float v11, v6

    sub-int v6, v20, v6

    int-to-float v6, v6

    mul-float/2addr v6, v14

    add-float/2addr v11, v6

    float-to-int v6, v11

    .line 498
    sget-boolean v11, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v11, :cond_d

    int-to-float v6, v6

    .line 499
    iget v11, v0, Lorg/telegram/ui/Components/Switch;->overrideAlpha:F

    mul-float/2addr v6, v11

    float-to-int v6, v6

    :cond_d
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v6

    and-int/lit16 v6, v8, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 502
    iget-object v3, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 503
    iget-object v3, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v2, :cond_f

    const/high16 v2, 0x40400000    # 3.0f

    if-nez v13, :cond_e

    .line 507
    iget-object v3, v0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v5, v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v8, v2

    int-to-float v2, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v18

    int-to-float v11, v4

    div-float v11, v11, v18

    add-float/2addr v8, v11

    invoke-virtual {v3, v6, v9, v2, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9

    .line 509
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v5, v6

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v11, v2

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v2

    add-int/2addr v11, v2

    int-to-float v2, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v18

    int-to-float v14, v4

    div-float v14, v14, v18

    add-float/2addr v11, v14

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    invoke-virtual {v3, v6, v8, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 512
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 514
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v5

    add-int v6, v5, v21

    int-to-float v6, v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v8, v9

    invoke-virtual {v2, v3, v9, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 515
    iget-object v2, v0, Lorg/telegram/ui/Components/Switch;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41200000    # 10.0f

    if-nez v13, :cond_10

    int-to-float v3, v10

    int-to-float v6, v12

    .line 517
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 519
    :cond_10
    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v6

    add-int/2addr v6, v12

    int-to-float v6, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_a
    if-nez v13, :cond_11

    .line 522
    iget-object v2, v0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_11

    const/high16 v3, 0x41900000    # 18.0f

    .line 523
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v10, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v12, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v12

    invoke-virtual {v2, v6, v8, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    iget-object v2, v0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    :cond_11
    const/4 v6, 0x1

    if-ne v13, v6, :cond_12

    .line 526
    iget-object v2, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_12
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v11, v19

    move/from16 v2, v21

    move/from16 v3, v28

    const/4 v8, 0x2

    goto/16 :goto_1

    :cond_13
    move/from16 v28, v3

    move/from16 v18, v7

    move/from16 v19, v11

    const/high16 v27, 0x3f800000    # 1.0f

    .line 529
    iget v2, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 530
    iget-object v2, v0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v28

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_14
    move/from16 v2, v28

    const/4 v6, 0x2

    :goto_c
    if-ge v2, v6, :cond_2e

    const/4 v6, 0x1

    if-ne v2, v6, :cond_15

    .line 534
    iget v4, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-nez v4, :cond_15

    const/4 v4, 0x2

    goto/16 :goto_1e

    :cond_15
    if-nez v2, :cond_16

    move-object v4, v1

    goto :goto_d

    .line 537
    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/Components/Switch;->overlayCanvas:[Landroid/graphics/Canvas;

    aget-object v4, v4, v6

    :goto_d
    if-ne v2, v6, :cond_17

    .line 540
    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v6

    move/from16 v7, v28

    invoke-virtual {v5, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_e

    :cond_17
    move/from16 v7, v28

    .line 542
    :goto_e
    iget v5, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-ne v5, v6, :cond_1a

    if-nez v2, :cond_19

    :cond_18
    const/4 v5, 0x0

    goto :goto_10

    :cond_19
    :goto_f
    move/from16 v5, v27

    goto :goto_10

    :cond_1a
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    if-nez v2, :cond_18

    goto :goto_f

    .line 547
    :cond_1b
    iget v5, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v5

    .line 550
    :goto_10
    iget v6, v0, Lorg/telegram/ui/Components/Switch;->thumbColorKey:I

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v6

    .line 551
    iget v8, v0, Lorg/telegram/ui/Components/Switch;->thumbCheckedColorKey:I

    iget-object v9, v0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v8

    .line 552
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1f

    if-lt v9, v11, :cond_1f

    sget-boolean v9, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v9, :cond_1f

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 553
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 554
    const-string v9, "n1_800"

    invoke-static {v9}, Lcom/exteragram/messenger/utils/ui/MonetUtils;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v9

    .line 555
    const-string v11, "a1_800"

    invoke-static {v11}, Lcom/exteragram/messenger/utils/ui/MonetUtils;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v11

    if-eq v9, v6, :cond_1c

    goto :goto_11

    :cond_1c
    move v6, v9

    :goto_11
    if-eq v11, v8, :cond_1d

    goto :goto_12

    :cond_1d
    move v8, v11

    goto :goto_12

    :cond_1e
    const/4 v6, -0x1

    .line 559
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v6

    move v8, v6

    .line 566
    :cond_1f
    :goto_12
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v9

    .line 567
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 568
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v13

    .line 569
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v14

    .line 570
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v15

    .line 571
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    .line 572
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    .line 573
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v7, v9

    sub-int/2addr v11, v9

    int-to-float v9, v11

    mul-float/2addr v9, v5

    add-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v9, v13

    sub-int/2addr v14, v13

    int-to-float v11, v14

    mul-float/2addr v11, v5

    add-float/2addr v9, v11

    float-to-int v9, v9

    int-to-float v11, v15

    sub-int v13, v17, v15

    int-to-float v13, v13

    mul-float/2addr v13, v5

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-float v13, v6

    sub-int/2addr v8, v6

    int-to-float v6, v8

    mul-float/2addr v6, v5

    add-float/2addr v13, v6

    float-to-int v5, v13

    .line 579
    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    and-int/lit16 v7, v9, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    and-int/lit16 v7, v11, 0xff

    or-int/2addr v5, v7

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v5, :cond_24

    .line 582
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->hasIcon()Z

    move-result v5

    if-nez v5, :cond_21

    iget v5, v0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_21

    const/4 v6, 0x2

    if-eq v5, v6, :cond_21

    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_20

    goto :goto_13

    :cond_20
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v5, v6

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    goto :goto_14

    :cond_21
    :goto_13
    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    :goto_14
    if-nez v2, :cond_22

    int-to-float v6, v10

    goto :goto_15

    .line 583
    :cond_22
    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v6

    add-int/2addr v6, v10

    int-to-float v6, v6

    :goto_15
    if-nez v2, :cond_23

    int-to-float v7, v12

    goto :goto_16

    :cond_23
    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v7

    add-int/2addr v7, v12

    int-to-float v7, v7

    :goto_16
    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_19

    :cond_24
    if-nez v2, :cond_25

    int-to-float v5, v10

    goto :goto_17

    .line 585
    :cond_25
    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    :goto_17
    if-nez v2, :cond_26

    int-to-float v6, v12

    goto :goto_18

    :cond_26
    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v6

    add-int/2addr v6, v12

    int-to-float v6, v6

    :goto_18
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_19
    if-nez v2, :cond_28

    .line 589
    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v5, :cond_29

    .line 590
    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v7, :cond_27

    .line 591
    iget v7, v0, Lorg/telegram/ui/Components/Switch;->overrideAlpha:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 593
    :cond_27
    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    const/16 v29, 0x2

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v10, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v12, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v10

    iget-object v9, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v12

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 594
    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_28
    move-object v5, v4

    goto/16 :goto_1a

    .line 595
    :cond_29
    iget v5, v0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2a

    int-to-float v5, v10

    const v6, 0x412ccccd    # 10.8f

    .line 596
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3fa66666    # 1.3f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v10, v5

    int-to-float v5, v12

    const/high16 v6, 0x41080000    # 8.5f

    .line 597
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v12, v5

    const v5, 0x40933333    # 4.6f

    .line 598
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v10

    const/high16 v6, 0x41180000    # 9.5f

    .line 599
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    int-to-float v7, v12

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 600
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v5

    .line 601
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v6

    const/high16 v9, 0x40f00000    # 7.5f

    .line 603
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v11, v10

    const v13, 0x40accccd    # 5.4f

    .line 604
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v13

    float-to-int v13, v13

    add-int/2addr v13, v12

    .line 605
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v14, v11

    .line 606
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v13

    move/from16 v17, v9

    int-to-float v9, v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    .line 608
    iget v11, v0, Lorg/telegram/ui/Components/Switch;->progress:F

    mul-float/2addr v5, v11

    add-float/2addr v9, v5

    float-to-int v5, v9

    int-to-float v9, v13

    sub-int/2addr v6, v13

    int-to-float v6, v6

    mul-float/2addr v6, v11

    add-float/2addr v9, v6

    float-to-int v6, v9

    int-to-float v9, v14

    sub-int/2addr v7, v14

    int-to-float v7, v7

    mul-float/2addr v7, v11

    add-float/2addr v9, v7

    float-to-int v7, v9

    int-to-float v9, v15

    sub-int/2addr v8, v15

    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float/2addr v9, v8

    float-to-int v8, v9

    int-to-float v5, v5

    int-to-float v6, v6

    int-to-float v7, v7

    int-to-float v8, v8

    .line 612
    iget-object v9, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v26, v9

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 614
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v10

    const/high16 v5, 0x41480000    # 12.5f

    .line 615
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v12

    .line 616
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v4

    .line 617
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v5, v7

    int-to-float v4, v4

    int-to-float v5, v5

    int-to-float v6, v6

    int-to-float v7, v7

    .line 618
    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v8

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v5, v21

    :goto_1a
    const/4 v4, 0x2

    :goto_1b
    const/4 v6, 0x1

    goto :goto_1d

    :cond_2a
    move-object/from16 v21, v4

    const/4 v4, 0x2

    if-eq v5, v4, :cond_2c

    .line 619
    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->iconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_2b

    goto :goto_1c

    :cond_2b
    move-object/from16 v5, v21

    goto :goto_1b

    .line 620
    :cond_2c
    :goto_1c
    iget v5, v0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    sub-float v15, v27, v5

    .line 621
    iget-object v5, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    mul-float/2addr v15, v6

    iget v6, v0, Lorg/telegram/ui/Components/Switch;->overrideAlpha:F

    mul-float/2addr v15, v6

    float-to-int v6, v15

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v5, v10

    int-to-float v6, v12

    const/high16 v7, 0x40a00000    # 5.0f

    .line 622
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v12, v7

    int-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    move/from16 v24, v5

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v25, v7

    move-object/from16 v26, v8

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    .line 623
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 624
    iget v9, v0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    mul-float/2addr v9, v8

    invoke-virtual {v5, v9, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v8, 0x40800000    # 4.0f

    .line 625
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Switch;->paint2:Landroid/graphics/Paint;

    move/from16 v25, v7

    move/from16 v24, v8

    move-object/from16 v26, v9

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 626
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1b

    :goto_1d
    if-ne v2, v6, :cond_2d

    .line 630
    iget-object v6, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Switch;->overlayMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2d
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    move v6, v4

    const/16 v28, 0x0

    goto/16 :goto_c

    .line 633
    :cond_2e
    iget v2, v0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-eqz v2, :cond_2f

    .line 634
    iget-object v2, v0, Lorg/telegram/ui/Components/Switch;->overlayBitmap:[Landroid/graphics/Bitmap;

    const/16 v30, 0x1

    aget-object v2, v2, v30

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v0}, Lorg/telegram/ui/Components/Switch;->getOverlayPadding()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2f
    :goto_1f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 640
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 641
    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 643
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected processColor(I)I
    .locals 0

    return p1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 649
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v0, :cond_0

    .line 650
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overrideAlpha:F

    .line 651
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 653
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setChecked(ZIZ)V
    .locals 1

    .line 291
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eq p1, v0, :cond_2

    .line 292
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    .line 293
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 294
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->animateToCheckedState(Z)V

    goto :goto_1

    .line 296
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->cancelCheckAnimator()V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 297
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Switch;->setProgress(F)V

    .line 303
    :cond_2
    :goto_1
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/Switch;->setDrawIconType(IZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 287
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZIZ)V

    return-void
.end method

.method public setColors(IIII)V
    .locals 0

    .line 238
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->trackColorKey:I

    .line 239
    iput p2, p0, Lorg/telegram/ui/Components/Switch;->trackCheckedColorKey:I

    .line 240
    iput p3, p0, Lorg/telegram/ui/Components/Switch;->thumbColorKey:I

    .line 241
    iput p4, p0, Lorg/telegram/ui/Components/Switch;->thumbCheckedColorKey:I

    return-void
.end method

.method public setDrawIconType(I)V
    .locals 0

    .line 162
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    return-void
.end method

.method public setDrawIconType(IZ)V
    .locals 1

    .line 319
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    if-eq v0, p1, :cond_3

    .line 320
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->drawIconType:I

    .line 321
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 322
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Switch;->animateIcon(Z)V

    return-void

    .line 324
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/Switch;->cancelIconAnimator()V

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 325
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Switch;->setIconProgress(F)V

    :cond_3
    return-void
.end method

.method public setDrawRipple(Z)V
    .locals 8

    .line 166
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->drawRipple:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 169
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Switch;->drawRipple:Z

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    const/high16 v2, 0x41900000    # 18.0f

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Switch;->ripplePaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    .line 173
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v4, v3, [[I

    sget-object v5, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v5, v4, v1

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 205
    new-instance v4, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v5}, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 207
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 211
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    iget v5, p0, Lorg/telegram/ui/Components/Switch;->colorSet:I

    if-ne v5, v4, :cond_3

    :cond_2
    if-nez v0, :cond_6

    iget v5, p0, Lorg/telegram/ui/Components/Switch;->colorSet:I

    if-eq v5, v3, :cond_6

    :cond_3
    if-eqz v0, :cond_4

    .line 212
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    goto :goto_0

    :cond_4
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 213
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Switch;->processColor(I)I

    move-result v0

    .line 214
    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v6, v3, [[I

    sget-object v7, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v7, v6, v1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 219
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v0, :cond_5

    move v3, v4

    :cond_5
    iput v3, p0, Lorg/telegram/ui/Components/Switch;->colorSet:I

    .line 221
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    if-eqz p1, :cond_8

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 224
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/Switch;->pressedState:[I

    goto :goto_2

    :cond_9
    sget-object p1, Landroid/util/StateSet;->NOTHING:[I

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIcon(I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 310
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Switch;->isChecked:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/Switch;->trackCheckedColorKey:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/Switch;->trackColorKey:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Switch;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Switch;->lastIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Components/Switch;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 315
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIconProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 135
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->iconProgress:F

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lorg/telegram/ui/Components/Switch$OnCheckedChangeListener;)V
    .locals 0

    return-void
.end method

.method public setOverrideColor(I)V
    .locals 1

    .line 339
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    if-ne v0, p1, :cond_0

    return-void

    .line 342
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overrideColorProgress:I

    const/4 p1, 0x0

    .line 343
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overlayCx:F

    .line 344
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overlayCy:F

    .line 345
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overlayRad:F

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverrideColorProgress(FFF)V
    .locals 0

    .line 350
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->overlayCx:F

    .line 351
    iput p2, p0, Lorg/telegram/ui/Components/Switch;->overlayCy:F

    .line 352
    iput p3, p0, Lorg/telegram/ui/Components/Switch;->overlayRad:F

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 121
    iget v0, p0, Lorg/telegram/ui/Components/Switch;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Switch;->progress:F

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 230
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Switch;->rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
