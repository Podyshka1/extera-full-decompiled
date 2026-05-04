.class public Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardBackground"
.end annotation


# instance fields
.field private animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

.field private backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

.field private final clipPath:Landroid/graphics/Path;

.field private gradient:Landroid/graphics/RadialGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private gradientRadius:I

.field private lastDrawnBitmap:Landroid/graphics/Bitmap;

.field private lastDrawnBitmapPaint:Landroid/graphics/Paint;

.field private lastDrawnColor:I

.field public final paint:Landroid/graphics/Paint;

.field private pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field public patternDocumentId:J

.field private r:F

.field private final rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selected:Z

.field public selectedColor:Ljava/lang/Integer;

.field public selectedColorKey:I

.field private final selectedPaint:Landroid/graphics/Paint;

.field public selectionStyle:I

.field private final strokeClipPath:Landroid/graphics/Path;

.field private strokeColors:[I

.field private strokeGradient:Landroid/graphics/LinearGradient;

.field private final strokeGradientMatrix:Landroid/graphics/Matrix;

.field public final strokePaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;

.field public withPadding:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetpattern(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 9

    .line 2484
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2457
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->paint:Landroid/graphics/Paint;

    .line 2458
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokePaint:Landroid/graphics/Paint;

    .line 2459
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    .line 2460
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->clipPath:Landroid/graphics/Path;

    .line 2466
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientMatrix:Landroid/graphics/Matrix;

    .line 2472
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeClipPath:Landroid/graphics/Path;

    .line 2473
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradientMatrix:Landroid/graphics/Matrix;

    .line 2476
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    .line 2477
    new-instance v4, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v5, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;)V

    const-wide/16 v6, 0x140

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V

    iput-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v4, 0x41300000    # 11.0f

    .line 2478
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->r:F

    .line 2523
    iput-boolean v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->withPadding:Z

    const/4 v1, 0x0

    .line 2528
    iput v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectionStyle:I

    .line 2644
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iput v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedColorKey:I

    .line 2485
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->view:Landroid/view/View;

    .line 2486
    iput-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2487
    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {v4, p0, p1, v5}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$1;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;Landroid/view/View;I)V

    iput-object v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 2496
    new-instance v4, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground$2;-><init>(Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2506
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 2507
    :cond_0
    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p3, :cond_1

    const p1, 0x3fd47ae1    # 1.66f

    .line 2509
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const p3, 0x3ea8f5c3    # 0.33f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogCardShadow:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2511
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2512
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getStableBitmapFromPattern(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)Landroid/graphics/Bitmap;
    .locals 6

    .line 2717
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isStable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2721
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2722
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 2723
    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 2725
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 2726
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    if-eqz v0, :cond_1

    .line 2727
    iget-wide v4, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->patternDocumentId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 2728
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 2517
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->draw(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;F)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2531
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2532
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selected:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v10

    .line 2533
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2534
    iget-boolean v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->withPadding:Z

    const v11, 0x40551eb8    # 3.33f

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 2535
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v3, 0x2

    const/high16 v4, -0x1000000

    if-eqz v2, :cond_3

    .line 2536
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v6, 0x3eb33333    # 0.35f

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    div-int/2addr v2, v3

    .line 2537
    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    if-eqz v5, :cond_1

    iget v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientRadius:I

    if-eq v5, v2, :cond_2

    .line 2538
    :cond_1
    new-instance v12, Landroid/graphics/RadialGradient;

    iput v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientRadius:I

    int-to-float v15, v2

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget v5, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int v6, v5, v4

    or-int/2addr v5, v4

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int/2addr v2, v4

    filled-new-array {v6, v5, v2}, [I

    move-result-object v16

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    .line 2540
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 2541
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2542
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 2543
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->paint:Landroid/graphics/Paint;

    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 2545
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2547
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->r:F

    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2548
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeColors:[I

    const/4 v5, 0x0

    const/4 v12, 0x1

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v13, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v13, v12

    :goto_2
    if-eqz v13, :cond_6

    .line 2550
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2551
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 2552
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->clipPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    iget v7, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->r:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, v7, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2553
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2555
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeColors:[I

    if-eqz v2, :cond_8

    .line 2556
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradient:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_7

    .line 2557
    new-instance v14, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeColors:[I

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x42c80000    # 100.0f

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v14, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradient:Landroid/graphics/LinearGradient;

    .line 2559
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 2560
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradientMatrix:Landroid/graphics/Matrix;

    iget v3, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v6, v9, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2561
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v6, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-double v14, v3

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v14

    double-to-float v3, v6

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2562
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-double v14, v8

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 2563
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradientMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2564
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradient:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 2565
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2566
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokePaint:Landroid/graphics/Paint;

    const v3, 0x40951eb8    # 4.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2567
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->r:F

    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2569
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v14, 0x0

    if-eqz v2, :cond_13

    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2570
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr v2, v4

    .line 2572
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2573
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2578
    invoke-static {}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper;->isAvailable()Z

    move-result v3

    const/high16 v15, -0x3e080000    # -31.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_10

    .line 2579
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->getStableBitmapFromPattern(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 2584
    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnBitmap:Landroid/graphics/Bitmap;

    if-ne v6, v3, :cond_9

    iget-object v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnBitmapPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_a

    .line 2585
    :cond_9
    iput-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 2586
    invoke-static {v3}, Lorg/telegram/ui/Components/BatchParticlesDrawHelper;->createBatchParticlesPaint(Landroid/graphics/Bitmap;)Landroid/graphics/Paint;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnBitmapPaint:Landroid/graphics/Paint;

    move v5, v12

    .line 2589
    :cond_a
    iget v6, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnColor:I

    if-ne v6, v2, :cond_b

    if-eqz v5, :cond_d

    .line 2590
    :cond_b
    iput v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnColor:I

    .line 2591
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_c

    .line 2592
    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnBitmapPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton$$ExternalSyntheticApiModelOutline1;->m()V

    invoke-static {}, Lorg/telegram/ui/Components/ProfileGooeyView$GPUImpl$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/chat/buttons/ChatActivityBlurredRoundButton$$ExternalSyntheticApiModelOutline0;->m(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_3

    .line 2594
    :cond_c
    iget-object v5, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnBitmapPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_d
    :goto_3
    cmpg-float v2, p2, v4

    if-gez v2, :cond_e

    move v5, v4

    move-object v4, v3

    .line 2599
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    sub-float v7, v5, p2

    const/high16 v8, 0x3f800000    # 1.0f

    move v5, v2

    const/4 v2, 0x2

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPatternBatch(Landroid/graphics/Canvas;ILandroid/graphics/Paint;Landroid/graphics/Bitmap;FFFF)V

    goto :goto_4

    :cond_e
    move-object v4, v3

    :goto_4
    cmpl-float v2, p2, v14

    if-lez v2, :cond_f

    .line 2601
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2602
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->lastDrawnBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v6, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move/from16 v7, p2

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPatternBatch(Landroid/graphics/Canvas;ILandroid/graphics/Paint;Landroid/graphics/Bitmap;FFFF)V

    :cond_f
    move-object/from16 v1, p1

    goto :goto_6

    :cond_10
    move v5, v4

    .line 2609
    iget-object v1, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    cmpg-float v1, p2, v5

    if-gez v1, :cond_11

    .line 2611
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v6, v5, p2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    move v5, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;FFFF)V

    goto :goto_5

    :cond_11
    move-object/from16 v1, p1

    :goto_5
    cmpl-float v2, p2, v14

    if-lez v2, :cond_12

    .line 2613
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2614
    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v5, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;FFFF)V

    .line 2617
    :cond_12
    :goto_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    if-eqz v13, :cond_14

    .line 2620
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    cmpl-float v2, v10, v14

    if-lez v2, :cond_18

    .line 2624
    iget v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectionStyle:I

    if-nez v2, :cond_16

    .line 2625
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedColor:Ljava/lang/Integer;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7

    :cond_15
    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedColorKey:I

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_7
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2626
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    const v3, 0x3fd56042    # 1.667f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v14, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2627
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v3, 0x40151eb8    # 2.33f

    .line 2628
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 2629
    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 2630
    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->r:F

    const v4, 0x40ea8f5c    # 7.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 2631
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_16
    if-ne v2, v12, :cond_18

    .line 2633
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedColor:Ljava/lang/Integer;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_8

    :cond_17
    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedColorKey:I

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    :goto_8
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2634
    iget-object v2, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v14, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2635
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2636
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v14, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 2637
    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 2638
    iget v3, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->r:F

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3, v4, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 2639
    iget-object v4, v0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_18
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    const v0, 0x40551eb8    # 3.33f

    .line 2650
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 2651
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 2652
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2653
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2649
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 2668
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2669
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2670
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V
    .locals 1

    .line 2675
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2676
    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->gradient:Landroid/graphics/RadialGradient;

    .line 2678
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 2679
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->invalidate()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setPadding(Z)V
    .locals 0

    .line 2525
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->withPadding:Z

    return-void
.end method

.method public setPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 2684
    iput-wide v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->patternDocumentId:J

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2686
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 2688
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->pattern:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 2689
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_1

    .line 2690
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->patternDocumentId:J

    :cond_1
    return-void
.end method

.method public setRoundRadius(F)V
    .locals 0

    .line 2481
    iput p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->r:F

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 1

    .line 2703
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selected:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2704
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->selected:Z

    if-nez p2, :cond_1

    .line 2706
    iget-object p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->animatedSelected:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    .line 2708
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->invalidate()V

    return-void
.end method

.method public setStrokeColors([I)V
    .locals 1

    .line 2696
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeColors:[I

    if-ne v0, p1, :cond_0

    return-void

    .line 2697
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeColors:[I

    const/4 p1, 0x0

    .line 2698
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->strokeGradient:Landroid/graphics/LinearGradient;

    .line 2699
    invoke-virtual {p0}, Lorg/telegram/ui/Gifts/GiftSheet$CardBackground;->invalidate()V

    return-void
.end method
