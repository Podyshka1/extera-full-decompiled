.class public Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;
    }
.end annotation


# static fields
.field public static final ALPHAS:[F

.field public static final MAX_PARTICLES_PER_ENTITY:I

.field public static final PARTICLES_PER_CHARACTER:I

.field private static lazyLayoutLines:Ljava/util/WeakHashMap;

.field private static final particlePoints:[[F

.field private static final tempPath:Landroid/graphics/Path;

.field private static xRefPaint:Landroid/graphics/Paint;


# instance fields
.field private bitmapSize:I

.field public drawPoints:Z

.field private enableAlpha:Z

.field public insideQuote:Z

.field private invalidateParent:Z

.field private isLowDevice:Z

.field private lastColor:I

.field private lastDrawTime:J

.field private mAlpha:I

.field private mParent:Landroid/view/View;

.field private maxParticles:I

.field private onRippleEndCallback:Ljava/lang/Runnable;

.field private final particlePaints:[Landroid/graphics/Paint;

.field private final particleRands:[F

.field private final particles:Ljava/util/ArrayList;

.field private final particlesPool:Ljava/util/Stack;

.field private final renderCount:[I

.field private reverseAnimator:Z

.field private rippleAnimator:Landroid/animation/ValueAnimator;

.field private rippleInterpolator:Landroid/animation/TimeInterpolator;

.field private rippleMaxRadius:F

.field private rippleProgress:F

.field private rippleX:F

.field private rippleY:F

.field private shouldInvalidateColor:Z

.field private spaces:Ljava/util/List;

.field private suppressUpdates:Z

.field private visibleRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$DlWWdeTSSSqeRn6DubqCDzjPfOU(F)F
    .locals 0

    .line 0
    return p0
.end method

.method public static synthetic $r8$lambda$N8ytR3ySi21HT7mRWRap1udeyGg(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lambda$startRipple$1(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmaxParticles(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonRippleEndCallback(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparticles(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparticlesPool(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)Ljava/util/Stack;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputonRippleEndCallback(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrippleAnimator(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$smaddSpoilerRangeInternal(Landroid/view/View;Landroid/text/Layout;FFFFLjava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilerRangeInternal(Landroid/view/View;Landroid/text/Layout;FFFFLjava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 61
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->measureMaxParticlesCount()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->MAX_PARTICLES_PER_ENTITY:I

    .line 62
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->measureParticlesPerCharacter()I

    move-result v1

    sput v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->PARTICLES_PER_CHARACTER:I

    const/4 v1, 0x3

    .line 67
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    sput-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    .line 74
    array-length v1, v1

    mul-int/lit8 v0, v0, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v1, v2, v0

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 134
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 70
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    .line 72
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    const/16 v1, 0xe

    .line 75
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    .line 76
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    .line 89
    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    const/16 v0, 0xff

    .line 96
    iput v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    .line 98
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 136
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    aput-object v3, v2, v1

    if-nez v1, :cond_0

    .line 138
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    const v3, 0x3fb33333    # 1.4f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 142
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->isLowDevice:Z

    .line 149
    iput-boolean v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    .line 150
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    return-void
.end method

.method private static addSpoilerRangeInternal(Landroid/view/View;Landroid/text/Layout;FFFFLjava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    .line 650
    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p6, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {p6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    .line 651
    :goto_1
    iput-boolean v0, p6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->insideQuote:Z

    if-eqz p10, :cond_3

    add-float v1, p3, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 654
    :goto_2
    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 655
    invoke-virtual {p10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/QuoteSpan$Block;

    .line 656
    iget v3, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->top:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v2, v2, Lorg/telegram/ui/Components/QuoteSpan$Block;->bottom:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    const/4 p10, 0x1

    .line 657
    iput-boolean p10, p6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->insideQuote:Z

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/high16 p10, -0x40800000    # -1.0f

    .line 662
    invoke-virtual {p6, p10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setRippleProgress(F)V

    int-to-float p8, p8

    .line 663
    invoke-static {p2, p8}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    float-to-int p3, p3

    if-gtz p9, :cond_4

    const/high16 p8, 0x4f000000

    goto :goto_4

    :cond_4
    int-to-float p8, p9

    :goto_4
    invoke-static {p4, p8}, Ljava/lang/Math;->min(FF)F

    move-result p4

    float-to-int p4, p4

    float-to-int p5, p5

    invoke-virtual {p6, p2, p3, p4, p5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 664
    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p6, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 665
    sget-object p1, Lorg/telegram/ui/Components/Easings;->easeInQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p6, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setRippleInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 666
    invoke-virtual {p6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->updateMaxParticles()V

    if-eqz p0, :cond_5

    .line 668
    invoke-virtual {p6, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setParentView(Landroid/view/View;)V

    .line 670
    :cond_5
    invoke-interface {p7, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addSpoilerRangesInternal(Landroid/view/View;Landroid/text/Layout;IIIILjava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 8

    .line 641
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;-><init>(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;IILjava/util/ArrayList;)V

    invoke-virtual {p1, p4, p5, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 14

    move-object/from16 v9, p4

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 616
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v3, 0x0

    invoke-interface {v9, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Lorg/telegram/ui/Components/TextStyleSpan;

    move v11, v3

    :goto_0
    const/16 v0, 0x64

    .line 617
    array-length v2, v10

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 618
    aget-object v0, v10, v11

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    aget-object v0, v10, v11

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 620
    aget-object v0, v10, v11

    invoke-interface {v9, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/4 v0, -0x1

    move/from16 v12, p2

    move/from16 v13, p3

    if-ne v12, v0, :cond_2

    if-ne v13, v0, :cond_2

    .line 625
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 626
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    const v3, 0x7fffffff

    const/high16 v6, -0x80000000

    :goto_1
    if-gt v0, v2, :cond_1

    .line 628
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 629
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    move v3, v6

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v6, p5

    goto :goto_2

    :cond_2
    move v2, v12

    move v3, v13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 632
    :goto_2
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilerRangesInternal(Landroid/view/View;Landroid/text/Layout;IIIILjava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_3
    move/from16 v12, p2

    move/from16 v13, p3

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 635
    :cond_4
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-eqz p5, :cond_5

    .line 636
    invoke-virtual/range {p5 .. p5}, Ljava/util/AbstractCollection;->clear()V

    :cond_5
    :goto_4
    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V
    .locals 9

    .line 585
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 594
    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V
    .locals 1

    .line 579
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Landroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;)V
    .locals 9

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 562
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-lez v0, :cond_0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 567
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-lez v0, :cond_0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILandroid/text/Spanned;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static clipOutCanvas(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 8

    .line 677
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    .line 678
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 679
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 680
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 681
    sget-object v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private generateRandomLocation(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)V
    .locals 2

    .line 459
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    .line 460
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputy(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    return-void
.end method

.method private isOutOfBounds(IIIIFF)Z
    .locals 1

    int-to-float p1, p1

    cmpg-float p1, p5, p1

    const/4 v0, 0x1

    if-ltz p1, :cond_3

    int-to-float p1, p3

    cmpl-float p1, p5, p1

    if-gtz p1, :cond_3

    const/high16 p1, 0x40200000    # 2.5f

    .line 446
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    cmpg-float p2, p6, p2

    if-ltz p2, :cond_3

    .line 447
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p4, p1

    int-to-float p1, p4

    cmpl-float p1, p6, p1

    if-lez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move p2, p1

    .line 450
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 451
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->spaces:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/RectF;

    invoke-virtual {p3, p5, p6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private synthetic lambda$startRipple$1(ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 214
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 215
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setAlpha(I)V

    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public static layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V
    .locals 10

    .line 688
    instance-of v0, p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SimplerCanvas;

    if-eqz v0, :cond_4

    .line 689
    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 690
    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 691
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lazyLayoutLines:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 692
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lazyLayoutLines:Ljava/util/WeakHashMap;

    .line 694
    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lazyLayoutLines:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 699
    new-instance v5, Landroid/graphics/RectF;

    .line 700
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    .line 701
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    int-to-float v7, v7

    .line 702
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    .line 703
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 699
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 706
    :cond_1
    sget-object v3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lazyLayoutLines:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 710
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 713
    :cond_3
    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 715
    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static measureMaxParticlesCount()I
    .locals 2

    .line 124
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const/16 v0, 0x96

    return v0
.end method

.method private static measureParticlesPerCharacter()I
    .locals 2

    .line 113
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0xa

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public static renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    if-eqz v4, :cond_16

    .line 736
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_d

    .line 740
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/Layout;

    const/4 v13, 0x0

    if-eqz v6, :cond_1

    .line 742
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_1

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_7

    .line 743
    :cond_1
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v15, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 744
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_4

    .line 745
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spanned;

    .line 746
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v6, v13, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/telegram/ui/Components/TextStyleSpan;

    move v8, v13

    :goto_0
    const/16 v9, 0x64

    .line 747
    array-length v10, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 748
    aget-object v9, v7, v8

    .line 749
    invoke-virtual {v9}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 750
    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 751
    const-class v14, Landroid/text/style/ReplacementSpan;

    invoke-interface {v6, v10, v11, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/ReplacementSpan;

    array-length v12, v14

    :goto_1
    if-ge v13, v12, :cond_2

    move-object/from16 v16, v7

    aget-object v7, v14, v13

    move/from16 v17, v8

    .line 752
    new-instance v8, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$3;

    invoke-direct {v8, v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$3;-><init>(Landroid/text/style/ReplacementSpan;)V

    move/from16 v18, v12

    .line 761
    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    move/from16 v19, v13

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v20, v14

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v14

    .line 752
    invoke-virtual {v15, v8, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 762
    invoke-virtual {v15, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v19, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v17

    move/from16 v12, v18

    move-object/from16 v14, v20

    goto :goto_1

    :cond_2
    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 765
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v15, v7, v10, v11, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 766
    invoke-virtual {v15, v9}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object/from16 v16, v7

    move/from16 v17, v8

    :goto_2
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v7, v16

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    .line 773
    new-instance v14, Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v16

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v17

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const v6, 0x3fd47ae1    # 1.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/16 v21, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v6

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    :goto_3
    move-object/from16 v7, p4

    move-object v6, v14

    goto :goto_4

    .line 774
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_6

    .line 775
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v15, v9, v6, v7, v8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 776
    invoke-virtual {v6, v7}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 777
    invoke-virtual {v6, v9}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 778
    invoke-virtual {v3}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 779
    invoke-virtual {v3}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v7

    invoke-virtual {v3}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 780
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v6

    move-object/from16 v7, p4

    goto :goto_4

    .line 782
    :cond_6
    new-instance v14, Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v16

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v17

    invoke-virtual {v3}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v18

    invoke-virtual {v3}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v19

    invoke-virtual {v3}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v20

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_3

    .line 784
    :goto_4
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 787
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v12, 0x0

    if-nez v7, :cond_8

    .line 788
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move/from16 v7, p3

    int-to-float v7, v7

    .line 789
    invoke-virtual {v5, v12, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 790
    invoke-virtual {v6, v5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 791
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 793
    :cond_8
    invoke-static {v3, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 796
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    .line 797
    sget-object v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 798
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 799
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 800
    sget-object v13, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v14, v8

    iget v8, v7, Landroid/graphics/Rect;->top:I

    int-to-float v15, v8

    iget v8, v7, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v17, v7

    move/from16 v16, v8

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_6

    .line 802
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    if-nez v6, :cond_b

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget v6, v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_b

    .line 803
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 804
    sget-object v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 805
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 806
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 807
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 809
    :cond_a
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 810
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v12, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 811
    invoke-static {v3, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    .line 812
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    const/4 v8, 0x0

    .line 816
    :cond_b
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget v6, v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_c

    const/4 v13, 0x1

    goto :goto_7

    :cond_c
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_e

    .line 818
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-eqz p9, :cond_d

    .line 819
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_d

    .line 820
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    :cond_d
    int-to-float v8, v6

    .line 822
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v9, v6

    const/4 v10, 0x0

    const/16 v11, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_8

    .line 824
    :cond_e
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 826
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v12, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 827
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    move/from16 v8, p1

    .line 828
    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setInvalidateParent(Z)V

    .line 829
    invoke-virtual {v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getParentView()Landroid/view/View;

    move-result-object v9

    if-eq v9, v0, :cond_f

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setParentView(Landroid/view/View;)V

    .line 830
    :cond_f
    invoke-virtual {v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    if-ne v2, v9, :cond_10

    .line 831
    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    :goto_a
    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    goto :goto_b

    :cond_10
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    goto :goto_a

    :goto_b
    invoke-virtual {v7}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRippleProgress()F

    move-result v10

    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v1, v9, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    goto :goto_c

    .line 833
    :cond_11
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 835
    :goto_c
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    :cond_12
    if-eqz v13, :cond_14

    .line 839
    sget-object v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v8, 0x0

    .line 840
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 841
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_13

    .line 842
    new-instance v1, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 843
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 844
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 846
    :cond_13
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 848
    :cond_14
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    return-void

    .line 737
    :cond_16
    :goto_d
    invoke-static {v3, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->layoutDrawMaybe(Landroid/text/Layout;Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 305
    iget-boolean v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->drawPoints:Z

    if-eqz v1, :cond_17

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 307
    iget-wide v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastDrawTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x22

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v7, v3

    .line 310
    iput-wide v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastDrawTime:J

    .line 312
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v8, 0x0

    move v5, v8

    .line 313
    :goto_0
    sget-object v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 314
    iget-object v6, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderCount:[I

    aput v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v9, v8

    .line 316
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v9, v5, :cond_4

    .line 317
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    .line 319
    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetcurrentTime(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v5

    int-to-float v11, v7

    add-float/2addr v5, v11

    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetlifeTime(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputcurrentTime(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    .line 320
    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetcurrentTime(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v5

    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetlifeTime(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-gez v5, :cond_2

    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v5

    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->isOutOfBounds(IIIIFF)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 329
    :cond_1
    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetvelocity(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v5

    mul-float/2addr v5, v11

    const/high16 v6, 0x43fa0000    # 500.0f

    div-float/2addr v5, v6

    .line 330
    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v6

    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetvecX(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v11

    mul-float/2addr v11, v5

    add-float/2addr v6, v11

    invoke-static {v10, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    .line 331
    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v6

    invoke-static {v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetvecY(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v11

    mul-float/2addr v11, v5

    add-float/2addr v6, v11

    invoke-static {v10, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputy(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    goto :goto_3

    .line 321
    :cond_2
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge v5, v6, :cond_3

    .line 322
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v5, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v9, v9, -0x1

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 334
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge v5, v6, :cond_9

    .line 335
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v7, v6, v5

    .line 336
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    const/high16 v9, -0x40800000    # -1.0f

    invoke-static {v5, v9}, Ljava/util/Arrays;->fill([FF)V

    move v10, v8

    :goto_4
    if-ge v10, v7, :cond_9

    .line 338
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particleRands:[F

    rem-int/lit8 v6, v10, 0xe

    aget v11, v5, v6

    cmpl-float v12, v11, v9

    if-nez v12, :cond_5

    .line 340
    sget-object v11, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v11

    aput v11, v5, v6

    .line 343
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    :goto_5
    move-object v12, v5

    goto :goto_6

    :cond_6
    new-instance v5, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect-IA;)V

    goto :goto_5

    :goto_6
    move v5, v8

    .line 346
    :goto_7
    invoke-direct {v0, v12, v10}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->generateRandomLocation(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)V

    add-int/lit8 v13, v5, 0x1

    .line 348
    invoke-static {v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v5

    invoke-static {v12}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->isOutOfBounds(IIIIFF)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x4

    if-lt v13, v5, :cond_7

    goto :goto_8

    :cond_7
    move v5, v13

    goto :goto_7

    :cond_8
    :goto_8
    float-to-double v5, v11

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v15

    sub-double/2addr v5, v13

    .line 352
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 353
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 355
    invoke-static {v12, v13}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputvecX(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    .line 356
    invoke-static {v12, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputvecY(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    const/4 v5, 0x0

    .line 358
    invoke-static {v12, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputcurrentTime(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    .line 360
    sget-object v5, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x3e8

    int-to-float v5, v5

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputlifeTime(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v11, v5

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v11, v5

    .line 361
    invoke-static {v12, v11}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputvelocity(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;F)V

    .line 362
    sget-object v5, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    sget-object v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v12, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fputalpha(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;I)V

    .line 363
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 368
    :cond_9
    iget-boolean v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    if-eqz v1, :cond_a

    move v1, v8

    goto :goto_9

    :cond_a
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    sget-object v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 370
    iget-object v2, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move v3, v8

    move v4, v3

    .line 371
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_16

    .line 372
    iget-object v5, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    if-eqz v5, :cond_15

    .line 374
    iget-object v6, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    if-eqz v6, :cond_b

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v7

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    invoke-virtual {v6, v7, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_b
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetalpha(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)I

    move-result v6

    if-eq v6, v1, :cond_c

    iget-boolean v6, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->enableAlpha:Z

    if-eqz v6, :cond_c

    goto/16 :goto_c

    .line 378
    :cond_c
    sget-object v6, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v7, v6, v1

    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-lt v4, v9, :cond_d

    goto/16 :goto_c

    .line 381
    :cond_d
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    aput v9, v7, v4

    .line 382
    aget-object v7, v6, v1

    add-int/lit8 v9, v4, 0x1

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v7, v4, 0x2

    .line 384
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    cmpg-float v9, v9, v2

    if-gez v9, :cond_f

    .line 385
    aget-object v9, v6, v1

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    if-lt v7, v10, :cond_e

    move v4, v7

    goto/16 :goto_c

    .line 388
    :cond_e
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v10

    iget v11, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v9, v7

    .line 389
    aget-object v7, v6, v1

    add-int/lit8 v9, v4, 0x3

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v4, v4, 0x4

    goto :goto_b

    :cond_f
    move v4, v7

    .line 392
    :goto_b
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v7

    iget v9, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v9, v9

    sub-float/2addr v9, v2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_11

    .line 393
    aget-object v7, v6, v1

    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-lt v4, v9, :cond_10

    goto :goto_c

    .line 396
    :cond_10
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    iget v10, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v7, v4

    .line 397
    aget-object v7, v6, v1

    add-int/lit8 v9, v4, 0x1

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v4, v4, 0x2

    .line 400
    :cond_11
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_13

    .line 401
    aget-object v7, v6, v1

    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-lt v4, v9, :cond_12

    goto :goto_c

    .line 404
    :cond_12
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    aput v9, v7, v4

    .line 405
    aget-object v7, v6, v1

    add-int/lit8 v9, v4, 0x1

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v10

    iget v11, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v7, v9

    add-int/lit8 v4, v4, 0x2

    .line 408
    :cond_13
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v7

    iget v9, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v9, v9

    sub-float/2addr v9, v2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_15

    .line 409
    aget-object v7, v6, v1

    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-lt v4, v9, :cond_14

    goto :goto_c

    .line 412
    :cond_14
    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v9

    aput v9, v7, v4

    .line 413
    aget-object v6, v6, v1

    add-int/lit8 v7, v4, 0x1

    invoke-static {v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v5

    iget v9, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x2

    :cond_15
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 417
    :cond_16
    sget-object v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePoints:[[F

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v3, v3, v1

    move-object/from16 v9, p1

    invoke-virtual {v9, v2, v8, v4, v3}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_17
    move-object/from16 v9, p1

    .line 420
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 421
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 422
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v12, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v1

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x80

    .line 423
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 424
    invoke-virtual {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    .line 425
    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->getInstance()Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffectBitmapFactory;->checkUpdate()V

    :cond_18
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    return-object v0
.end method

.method public getRipplePath(Landroid/graphics/Path;)V
    .locals 6

    .line 258
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleX:F

    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleY:F

    iget v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getRippleProgress()F
    .locals 1

    .line 265
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    return v0
.end method

.method public invalidateSelf()V
    .locals 2

    .line 465
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateParent:Z

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 471
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Cells/BaseCell;

    if-eqz v1, :cond_1

    .line 472
    check-cast v0, Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/BaseCell;->invalidateLite()V

    return-void

    .line 474
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .line 497
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    const/4 v0, 0x0

    .line 498
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 499
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    aget v1, v1, v0

    int-to-float v3, p1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 292
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 293
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    .line 294
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgetx(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result p4

    float-to-int p4, p4

    invoke-static {p2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;->-$$Nest$fgety(Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, p4, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p3

    if-nez p3, :cond_1

    .line 295
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 297
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    if-ge p3, p4, :cond_0

    .line 298
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setColor(I)V
    .locals 4

    .line 516
    iget v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    .line 517
    :goto_0
    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 518
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mAlpha:I

    int-to-float v3, v3

    aget v1, v1, v0

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->lastColor:I

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 506
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInvalidateParent(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateParent:Z

    return-void
.end method

.method public setMaxParticlesCount(I)V
    .locals 3

    .line 547
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->maxParticles:I

    .line 548
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlesPool:Ljava/util/Stack;

    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$Particle;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnRippleEndCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->onRippleEndCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->mParent:Landroid/view/View;

    return-void
.end method

.method public setRippleInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setRippleProgress(F)V
    .locals 1

    .line 281
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 972
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->bitmapSize:I

    return-void
.end method

.method public setSuppressUpdates(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->suppressUpdates:Z

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public setVisibleBounds(FFFF)V
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->visibleRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 437
    :cond_2
    :goto_0
    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 438
    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 439
    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 440
    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public shouldInvalidateColor()Z
    .locals 2

    .line 272
    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    const/4 v1, 0x0

    .line 273
    iput-boolean v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->shouldInvalidateColor:Z

    return v0
.end method

.method public startRipple(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFFZ)V

    return-void
.end method

.method public startRipple(FFFZ)V
    .locals 2

    .line 202
    iput p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleX:F

    .line 203
    iput p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleY:F

    .line 204
    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, p1

    .line 205
    :goto_0
    iput p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    .line 206
    iput-boolean p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->reverseAnimator:Z

    .line 208
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1

    .line 209
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 210
    :cond_1
    iget-boolean p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->reverseAnimator:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    const/16 p3, 0xff

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->particlePaints:[Landroid/graphics/Paint;

    sget-object v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->ALPHAS:[F

    array-length v1, v1

    sub-int/2addr v1, v0

    aget-object p3, p3, v1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    .line 211
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleProgress:F

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p4, 0x0

    aput v1, p2, p4

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleMaxRadius:F

    const p4, 0x3e99999a    # 0.3f

    mul-float/2addr p2, p4

    const/high16 p4, 0x437a0000    # 250.0f

    const v0, 0x44098000    # 550.0f

    invoke-static {p2, p4, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    .line 212
    iget-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->invalidateSelf()V

    return-void
.end method

.method public updateMaxParticles()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    div-int/2addr v0, v1

    sget v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->PARTICLES_PER_CHARACTER:I

    mul-int/2addr v0, v1

    sget v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->MAX_PARTICLES_PER_ENTITY:I

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setMaxParticlesCount(I)V

    return-void
.end method
