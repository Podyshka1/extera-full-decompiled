.class public abstract Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;
    }
.end annotation


# static fields
.field private static tmpPath:Landroid/graphics/Path;

.field private static final tmpRadii:[F


# instance fields
.field protected alpha:I

.field private final backgroundBitmapFill:Landroid/graphics/Paint;

.field private final backgroundBitmapPaint:Landroid/graphics/Paint;

.field protected backgroundColor:I

.field private final backgroundColorPaint:Landroid/graphics/Paint;

.field private final bitmapInShader:Ljava/lang/ref/WeakReference;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private final bitmapShaderMatrix:Landroid/graphics/Matrix;

.field protected final boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

.field private final cmpRectF1:Landroid/graphics/RectF;

.field private final cmpRectF2:Landroid/graphics/RectF;

.field protected colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

.field protected inAppKeyboardOptimization:Z

.field private ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private ninePatchDrawableHash:J

.field private final ninePatchDrawablePadding:Landroid/graphics/Rect;

.field private final ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

.field private final paintStrokeFill:Landroid/graphics/Paint;

.field protected shadowAlpha:F

.field protected shadowColor:I

.field protected shadowLayerDx:F

.field protected shadowLayerDy:F

.field protected shadowLayerRadius:F

.field private final shadowPaint:Landroid/graphics/Paint;

.field protected sourceOffsetX:F

.field protected sourceOffsetY:F

.field protected strokeColorBottom:I

.field protected strokeColorFull:I

.field protected strokeColorTop:I

.field private viewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static bridge synthetic -$$Nest$sfgettmpRadii()[F
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->tmpRadii:[F

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smradiiAreSame([F)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->radiiAreSame([F)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 229
    new-array v0, v0, [F

    sput-object v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->tmpRadii:[F

    .line 373
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->tmpPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 230
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    invoke-direct {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    const/16 v1, 0xff

    .line 404
    iput v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 518
    iput v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowAlpha:F

    .line 562
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColorPaint:Landroid/graphics/Paint;

    .line 563
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->paintStrokeFill:Landroid/graphics/Paint;

    .line 565
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundBitmapPaint:Landroid/graphics/Paint;

    .line 566
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundBitmapFill:Landroid/graphics/Paint;

    .line 567
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    .line 568
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapShaderMatrix:Landroid/graphics/Matrix;

    .line 569
    new-instance v5, Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapInShader:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    .line 573
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 742
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->cmpRectF1:Landroid/graphics/RectF;

    .line 743
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->cmpRectF2:Landroid/graphics/RectF;

    .line 771
    new-instance v2, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    invoke-direct {v2}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    .line 772
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawablePadding:Landroid/graphics/Rect;

    .line 56
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthTop:F

    const v2, 0x3f2aaaab

    .line 57
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthBottom:F

    .line 59
    iput v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthFull:F

    .line 61
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    const v0, 0x3eaaaaab

    .line 63
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    return-void
.end method

.method private checkNinePatchDrawable(I)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 7

    .line 777
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->start()V

    .line 778
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->add(J)V

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->add(J)V

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->add([F)V

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->addF(F)V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->addF(F)V

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->addF(F)V

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchHashBuilder:Lorg/telegram/ui/Components/blur3/Blur3HashImpl;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/Blur3HashImpl;->get()J

    move-result-wide v0

    .line 786
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawableHash:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 787
    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawableHash:J

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    iget v3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    iget v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    iget v5, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    iget v6, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    move v1, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/blur3/utils/NinePatchBuilder;->createNinePatch(I[FFIFF)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 799
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    return-object p1
.end method

.method private dispatchSourceRelativePositionChange()V
    .locals 2

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->cmpRectF1:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getPositionRelativeSource(Landroid/graphics/RectF;)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->cmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->cmpRectF2:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->cmpRectF2:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->cmpRectF1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->cmpRectF1:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onSourceRelativePositionChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private drawSourceAny(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 579
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 583
    :cond_0
    iget v3, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    .line 584
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-lez v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    if-ne v2, v3, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowAlpha:F

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 585
    iget-object v4, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    iget v6, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    iget v8, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    iget v9, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v4, v5, v6, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 586
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v4, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    iget-boolean v5, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->inAppKeyboardOptimization:Z

    invoke-virtual {v2, v1, v4, v5}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 589
    :cond_1
    iget v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetX:F

    .line 590
    iget v4, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetY:F

    .line 591
    iget-object v5, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v5, v5, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v6

    add-float/2addr v8, v2

    .line 592
    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v9

    add-float/2addr v10, v4

    .line 593
    iget v11, v5, Landroid/graphics/Rect;->right:I

    int-to-float v12, v11

    add-float/2addr v12, v2

    .line 594
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v2

    add-float v13, v5, v4

    .line 596
    iget v4, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    if-eq v4, v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v14, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    if-eqz v14, :cond_3

    int-to-float v3, v6

    int-to-float v5, v9

    int-to-float v6, v11

    int-to-float v2, v2

    move v15, v5

    move v5, v2

    move v2, v3

    move v3, v15

    move v15, v6

    move v6, v4

    move v4, v15

    .line 598
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    .line 602
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 603
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 604
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    neg-float v2, v8

    neg-float v3, v10

    .line 608
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v2, v1

    move v3, v8

    move v4, v10

    move v5, v12

    move v6, v13

    move-object/from16 v1, p2

    .line 609
    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->draw(Landroid/graphics/Canvas;FFFF)V

    move-object v1, v2

    .line 610
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 612
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_4

    .line 613
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    iget-object v2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v3, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 617
    :cond_4
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStrokeInternalIfNeeded(Landroid/graphics/Canvas;)V

    if-eqz v14, :cond_5

    .line 620
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_2
    return-void
.end method

.method private drawSourceBitmap(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;)V
    .locals 8

    .line 662
    invoke-virtual {p2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapInShader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 668
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 670
    iput-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 671
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 675
    :cond_1
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 676
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->checkNinePatchDrawable(I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 678
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawablePadding:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 684
    iget v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 685
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 686
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    const/16 v3, 0xff

    if-ne v1, v3, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowAlpha:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 687
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    iget v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    iget v5, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    iget v6, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->inAppKeyboardOptimization:Z

    invoke-virtual {v1, p1, v2, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 692
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    if-lez v0, :cond_4

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 694
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapShaderMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetX:F

    neg-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetY:F

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 695
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->bitmapShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 696
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundBitmapPaint:Landroid/graphics/Paint;

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 697
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 700
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    .line 701
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_5

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundBitmapFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 703
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundBitmapFill:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 706
    :cond_5
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStrokeInternalIfNeeded(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSourceColor(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;)V
    .locals 0

    .line 625
    invoke-virtual {p2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->getColor()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSourceColorImpl(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method private drawSourceColorImpl(Landroid/graphics/Canvas;I)V
    .locals 6

    .line 629
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    invoke-static {v0, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p2

    .line 630
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 634
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->checkNinePatchDrawable(I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object p2, p2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->ninePatchDrawablePadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v2

    invoke-virtual {v0, v1, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 642
    iget p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 643
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 645
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStrokeInternalIfNeeded(Landroid/graphics/Canvas;)V

    return-void

    .line 649
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    .line 650
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    const/16 v2, 0xff

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowAlpha:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 651
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    iget v3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    iget v4, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    iget v5, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    invoke-static {v5, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->inAppKeyboardOptimization:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 655
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 658
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStrokeInternalIfNeeded(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawSourceRenderNode(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;)V
    .locals 1

    .line 734
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->getFallbackSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSource(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    :cond_0
    return-void
.end method

.method public static drawStroke(Landroid/graphics/Canvas;FFFFFFZLandroid/graphics/Paint;)V
    .locals 8

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p6, v3

    .line 482
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    if-eqz p7, :cond_0

    sub-float v5, p1, v4

    move v6, v3

    add-float v3, p3, v4

    mul-float/2addr v6, p5

    add-float/2addr v6, p2

    .line 484
    invoke-static {v6, p2, p4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    invoke-virtual {p0, v5, p2, v3, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_1

    add-float v2, p2, v4

    add-float/2addr v4, p4

    move v6, p5

    move-object v0, p0

    move-object/from16 v7, p8

    move v1, v5

    move v5, p5

    .line 485
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move v6, v3

    sub-float v2, p1, v4

    mul-float v3, p5, v6

    sub-float v3, p4, v3

    .line 495
    invoke-static {v3, p2, p4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    add-float v5, p3, v4

    invoke-virtual {p0, v2, v3, v5, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v3

    if-eqz v3, :cond_1

    sub-float v1, p2, v4

    sub-float v4, p4, v4

    move v6, p5

    move v0, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    move-object/from16 v7, p8

    move v3, v5

    move v5, p5

    .line 496
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 506
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static drawStroke(Landroid/graphics/Canvas;FFFF[FFZLandroid/graphics/Paint;)V
    .locals 10

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p7, :cond_1

    .line 436
    aget v8, p5, v7

    aget v9, p5, v6

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    const/4 v8, 0x2

    aget v8, p5, v8

    cmpl-float v9, v9, v8

    if-nez v9, :cond_0

    const/4 v9, 0x3

    aget v9, p5, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_0

    .line 437
    :cond_1
    aget v8, p5, v5

    const/4 v9, 0x5

    aget v9, p5, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    const/4 v8, 0x6

    aget v8, p5, v8

    cmpl-float v9, v9, v8

    if-nez v9, :cond_0

    const/4 v9, 0x7

    aget v9, p5, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, p6, v8

    if-eqz p7, :cond_3

    if-eqz v6, :cond_5

    .line 443
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 444
    aget v5, p5, v7

    mul-float/2addr v5, v8

    add-float/2addr v5, p2

    invoke-static {v5, p2, p4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    invoke-virtual {p0, p1, p2, p3, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v5

    if-eqz v5, :cond_2

    sub-float v1, p1, v9

    add-float v2, p2, v9

    add-float v3, p3, v9

    add-float v4, p4, v9

    .line 445
    aget v5, p5, v7

    move v6, v5

    move-object v0, p0

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 454
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    if-eqz v6, :cond_5

    .line 458
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 459
    aget v6, p5, v5

    mul-float/2addr v6, v8

    sub-float v6, p4, v6

    invoke-static {v6, p2, p4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v6

    invoke-virtual {p0, p1, v6, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_4

    sub-float v1, p1, v9

    sub-float v2, p2, v9

    add-float v3, p3, v9

    sub-float v4, p4, v9

    .line 460
    aget v5, p5, v5

    move v6, v5

    move-object v0, p0

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 469
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public static drawStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9

    .line 476
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStroke(Landroid/graphics/Canvas;FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawStrokeInternalIfNeeded(Landroid/graphics/Canvas;)V
    .locals 4

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->useFullStroke:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_0

    .line 711
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorFull:I

    iget v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 713
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 714
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->paintStrokeFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokePathTop:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->paintStrokeFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 718
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorTop:I

    iget v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 719
    iget v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorBottom:I

    iget v3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 721
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 722
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->paintStrokeFill:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokePathTop:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->paintStrokeFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 725
    :cond_1
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->paintStrokeFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokePathBottom:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->paintStrokeFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected static getOutline(Landroid/graphics/Outline;Landroid/graphics/Rect;[F)V
    .locals 8

    .line 375
    invoke-static {p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->radiiAreSame([F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 378
    aget p2, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 380
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->tmpPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 381
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->tmpPath:Landroid/graphics/Path;

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 385
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->tmpPath:Landroid/graphics/Path;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 390
    sget-object p1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private static radiiAreSame([F)Z
    .locals 4

    const/4 v0, 0x0

    .line 395
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aget v3, p0, v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget v3, p0, v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    aget v3, p0, v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    aget v3, p0, v3

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x7

    aget p0, p0, v3

    cmpl-float p0, v1, p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v0
.end method


# virtual methods
.method protected drawSource(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V
    .locals 2

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    const/4 p2, 0x0

    .line 545
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSourceColorImpl(Landroid/graphics/Canvas;I)V

    return-void

    .line 549
    :cond_1
    instance-of v0, p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    if-eqz v0, :cond_2

    .line 550
    check-cast p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSourceColor(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;)V

    return-void

    .line 551
    :cond_2
    instance-of v0, p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    if-eqz v0, :cond_3

    .line 552
    check-cast p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSourceBitmap(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;)V

    return-void

    .line 553
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    instance-of v0, p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    if-eqz v0, :cond_4

    .line 554
    check-cast p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSourceRenderNode(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;)V

    return-void

    .line 555
    :cond_4
    instance-of v0, p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    if-eqz v0, :cond_5

    .line 556
    check-cast p2, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;->getSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSource(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    return-void

    :cond_5
    if-eqz p2, :cond_6

    .line 558
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawSourceAny(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public enableInAppKeyboardOptimization()V
    .locals 1

    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->inAppKeyboardOptimization:Z

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 413
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPaddedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPositionRelativeSource(Landroid/graphics/RectF;)V
    .locals 2

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 759
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetX:F

    iget v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public abstract getSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;
.end method

.method public getSourceOffsetX()F
    .locals 1

    .line 78
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetX:F

    return v0
.end method

.method public getSourceOffsetY()F
    .locals 1

    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetY:F

    return v0
.end method

.method public getUnwrappedSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;
    .locals 2

    .line 172
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object v0

    .line 173
    :goto_0
    instance-of v1, v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;->getSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getViewOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->viewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$1;-><init>(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->viewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->viewOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method

.method protected onBoundPropsChanged()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->dispatchSourceRelativePositionChange()V

    return-void
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->build()V

    .line 156
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onBoundPropsChanged()V

    return-void
.end method

.method protected onSourceOffsetChange(FF)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->dispatchSourceRelativePositionChange()V

    return-void
.end method

.method protected onSourceRelativePositionChanged(Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 408
    iput p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 2

    .line 188
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    .line 189
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->updateColors()V

    .line 191
    instance-of v0, p1, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    if-eqz v0, :cond_1

    .line 192
    check-cast p1, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    .line 193
    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;->getStrokeWidthTop()F

    move-result v0

    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;->getStrokeWidthBottom()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setStrokeWidth(FF)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->useFullStroke:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 195
    invoke-virtual {p0, p1, p1, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setShadowParams(FFF)V

    return-object p0

    .line 197
    :cond_0
    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;->getShadowRadius()F

    move-result v0

    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;->getShadowDx()F

    move-result v1

    invoke-interface {p1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;->getShadowDy()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setShadowParams(FFF)V

    :cond_1
    return-object p0
.end method

.method public setIntensity(F)V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iput p1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->liquidIntensity:F

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onBoundPropsChanged()V

    return-void
.end method

.method public setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->padding:I

    if-eq v1, p1, :cond_0

    .line 91
    iput p1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->padding:I

    .line 92
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->build()V

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onBoundPropsChanged()V

    :cond_0
    return-object p0
.end method

.method public setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->shaderRadii:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->build()V

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onBoundPropsChanged()V

    return-object p0
.end method

.method public setRadius(FFFF)V
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x3

    .line 110
    aput p2, v1, p1

    const/4 p1, 0x2

    aput p2, v1, p1

    const/4 p1, 0x5

    .line 111
    aput p3, v1, p1

    const/4 p1, 0x4

    aput p3, v1, p1

    const/4 p1, 0x7

    .line 112
    aput p4, v1, p1

    const/4 p1, 0x6

    aput p4, v1, p1

    .line 113
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->build()V

    .line 115
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onBoundPropsChanged()V

    return-void
.end method

.method public setRadius(FFFFZ)V
    .locals 10

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v3, 0x0

    aput p1, v1, v3

    const/4 v4, 0x3

    .line 120
    aput p2, v1, v4

    const/4 v5, 0x2

    aput p2, v1, v5

    const/4 v6, 0x0

    if-eqz p5, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, p3

    :goto_0
    const/4 v8, 0x5

    .line 121
    aput v7, v1, v8

    const/4 v9, 0x4

    aput v7, v1, v9

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    const/4 p5, 0x7

    .line 122
    aput v6, v1, p5

    const/4 v7, 0x6

    aput v6, v1, v7

    .line 123
    iget-object v1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->shaderRadii:[F

    aput p1, v1, v2

    aput p1, v1, v3

    .line 124
    aput p2, v1, v4

    aput p2, v1, v5

    .line 125
    aput p3, v1, v8

    aput p3, v1, v9

    .line 126
    aput p4, v1, p5

    aput p4, v1, v7

    .line 127
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->build()V

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onBoundPropsChanged()V

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 0

    .line 527
    iput p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowAlpha:F

    return-void
.end method

.method public setShadowParams(FFF)V
    .locals 0

    .line 521
    iput p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerRadius:F

    .line 522
    iput p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDx:F

    .line 523
    iput p3, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowLayerDy:F

    return-void
.end method

.method public setSourceOffset(FF)V
    .locals 1

    .line 70
    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 71
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetX:F

    .line 72
    iput p2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->sourceOffsetY:F

    .line 73
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onSourceOffsetChange(FF)V

    return-void
.end method

.method public setStrokeWidth(FF)V
    .locals 1

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iput p1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthTop:F

    .line 532
    iput p2, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->strokeWidthBottom:F

    return-void
.end method

.method public setThickness(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iput p1, v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->liquidThickness:I

    .line 134
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->onBoundPropsChanged()V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->glareOnElements:Z

    xor-int/lit8 v1, v0, 0x1

    .line 209
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->useFullStroke:Z

    if-eq v3, v1, :cond_1

    .line 210
    iput-boolean v1, v2, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->useFullStroke:Z

    .line 211
    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->build()V

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    invoke-interface {v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;->getBackgroundColor()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->backgroundColor:I

    .line 215
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    invoke-interface {v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;->getShadowColor()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->shadowColor:I

    .line 216
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    invoke-interface {v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;->getStrokeColorTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorTop:I

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    invoke-interface {v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;->getStrokeColorBottom()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorBottom:I

    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;->getStrokeColorFull()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->strokeColorFull:I

    .line 223
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
