.class public final Lcom/exteragram/messenger/utils/ui/UIUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/exteragram/messenger/utils/ui/UIUtil;

.field private static final nowPlayingPattern:[F


# direct methods
.method public static synthetic $r8$lambda$GVXzkPo4s2J0htStrNO_L2DdycM(Lkotlin/jvm/functions/Function1;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/utils/ui/UIUtil;->applyScaleStateListAnimator$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RGvokeN_aAPjUBh4yeW4UrgcAX0(Lkotlin/jvm/functions/Function1;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/utils/ui/UIUtil;->applyScaleStateListAnimator$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hl85-AWD2jXLpmUTmwUZzMtMAPk(Landroid/view/View;IZFFZF)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/exteragram/messenger/utils/ui/UIUtil;->applyScaleStateListAnimator$lambda$0(Landroid/view/View;IZFFZF)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/utils/ui/UIUtil;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/ui/UIUtil;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/utils/ui/UIUtil;->INSTANCE:Lcom/exteragram/messenger/utils/ui/UIUtil;

    const/16 v0, 0x30

    .line 183
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 162
    sput-object v0, Lcom/exteragram/messenger/utils/ui/UIUtil;->nowPlayingPattern:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x3f500000    # -5.5f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x3eb33333    # 0.35f
        -0x3f500000    # -5.5f
        -0x3e600000    # -20.0f
        0x41a00000    # 20.0f
        0x3eb33333    # 0.35f
        -0x3df00000    # -36.0f
        -0x3dd80000    # -42.0f
        0x41b00000    # 22.0f
        0x3ec00000    # 0.375f
        -0x3df00000    # -36.0f
        0x0
        0x41c80000    # 25.0f
        0x3ed9999a    # 0.425f
        -0x3df00000    # -36.0f
        0x42280000    # 42.0f
        0x41b00000    # 22.0f
        0x3ec00000    # 0.375f
        -0x3d740000    # -70.0f
        0x41b00000    # 22.0f
        0x41b80000    # 23.0f
        0x3eb33333    # 0.35f
        -0x3d740000    # -70.0f
        -0x3e500000    # -22.0f
        0x41b80000    # 23.0f
        0x3eb33333    # 0.35f
        -0x3d3a0000    # -99.0f
        0x42380000    # 46.0f
        0x41a80000    # 21.0f
        0x3e8ccccd    # 0.275f
        -0x3d3a0000    # -99.0f
        0x0
        0x41b00000    # 22.0f
        0x3ea66666    # 0.325f
        -0x3d3a0000    # -99.0f
        -0x3dc80000    # -46.0f
        0x41a80000    # 21.0f
        0x3e8ccccd    # 0.275f
        -0x3d000000    # -128.0f
        -0x3e480000    # -23.0f
        0x41a00000    # 20.0f
        0x3e666666    # 0.225f
        -0x3d000000    # -128.0f
        0x41b80000    # 23.0f
        0x41a00000    # 20.0f
        0x3e666666    # 0.225f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic adjustHsl$default(Lcom/exteragram/messenger/utils/ui/UIUtil;IFFILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/high16 p3, -0x40800000    # -1.0f

    .line 152
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/exteragram/messenger/utils/ui/UIUtil;->adjustHsl(IFF)I

    move-result p0

    return p0
.end method

.method public static final applyScaleStateListAnimator(Landroid/view/View;FZZIFF)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, p4

    sub-float v6, p1, v0

    .line 55
    new-instance v1, Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v5, p1

    move v4, p2

    move v7, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;IZFFZ)V

    .line 67
    new-instance p0, Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda1;

    invoke-direct {p0, v1}, Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lcom/exteragram/messenger/utils/ui/UIUtil$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, p5, p6, p0, p1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FFLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final applyScaleStateListAnimator$lambda$0(Landroid/view/View;IZFFZF)Lkotlin/Unit;
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_4

    .line 57
    iget-object p0, p0, Lorg/telegram/ui/Cells/BaseCell$RippleDrawableSafe;->mask:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;

    :cond_1
    if-eqz v1, :cond_4

    int-to-float p0, p1

    mul-float/2addr p0, p6

    const/4 p1, 0x0

    .line 59
    invoke-virtual {v1, p1, p0, p1, p0}, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->setPadding(FFFF)V

    if-eqz p2, :cond_2

    sub-float p1, p3, p0

    goto :goto_1

    :cond_2
    mul-float p1, p4, p6

    :goto_1
    if-eqz p5, :cond_3

    sub-float/2addr p3, p0

    goto :goto_2

    :cond_3
    mul-float p3, p4, p6

    .line 63
    :goto_2
    invoke-virtual {v1, p1, p3}, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->setRadius(FF)V

    .line 66
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final applyScaleStateListAnimator$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Float;)V
    .locals 0

    .line 67
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final applyScaleStateListAnimator$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Float;)V
    .locals 0

    .line 67
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final createCircleDrawableWithIcon(Landroid/content/Context;II)Lorg/telegram/ui/Components/CombinedDrawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    :cond_0
    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {p1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 118
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 121
    new-instance p1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    return-object p1
.end method

.method public static final createFabBackground(III)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    .line 80
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    const/4 v0, -0x1

    const v1, 0x3dcccccd    # 0.1f

    .line 79
    invoke-static {p2, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    .line 85
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    .line 86
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    .line 85
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 84
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 77
    :goto_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 94
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->squareFab:Z

    if-eqz v0, :cond_1

    mul-int/lit8 p0, p0, 0x10

    int-to-float p0, p0

    const/high16 v0, 0x42600000    # 56.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_1

    :cond_1
    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    .line 101
    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    .line 100
    invoke-static {p0, p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p1, "createSimpleSelectorRoundRectDrawable(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "drawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 88
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 146
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method


# virtual methods
.method public final adjustHsl(IFF)I
    .locals 3

    const/4 v0, 0x3

    .line 153
    new-array v0, v0, [F

    .line 154
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 156
    aget v2, v0, p1

    mul-float/2addr v2, p3

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p3

    aput p3, v0, p1

    :cond_0
    const/4 p1, 0x2

    .line 158
    aget p3, v0, p1

    mul-float/2addr p3, p2

    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p2

    aput p2, v0, p1

    .line 159
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p1

    return p1
.end method

.method public final drawNowPlayingPattern(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFF)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    sget-object v1, Lcom/exteragram/messenger/utils/ui/UIUtil;->nowPlayingPattern:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 197
    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    .line 198
    aget v3, v1, v3

    add-int/lit8 v4, v0, 0x2

    .line 199
    aget v4, v1, v4

    add-int/lit8 v5, v0, 0x3

    .line 200
    aget v1, v1, v5

    .line 203
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v5, p3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-float v6, p4, v7

    .line 204
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v8, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    div-float/2addr v9, v7

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 205
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr v2, p3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    div-float/2addr v9, v7

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 206
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v6, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    div-float/2addr v3, v7

    add-float/2addr v6, v3

    float-to-int v3, v6

    .line 202
    invoke-virtual {p2, v5, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, p5

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 208
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
