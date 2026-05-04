.class Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickersRollView"
.end annotation


# instance fields
.field private a:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

.field private aIsFinish:Z

.field private aT:F

.field private b:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

.field private bIsFinish:Z

.field private bT:F

.field private bgA:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

.field private bgAIsFinish:Z

.field private bgAT:F

.field private bgB:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

.field private bgBIsFinish:Z

.field private bgBT:F

.field private bgC:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

.field private bgCIsFinish:Z

.field private bgCT:F

.field private c:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

.field private cIsFinish:Z

.field private cT:F

.field private final camera:Landroid/graphics/Camera;

.field private final clip:Lorg/telegram/ui/GradientClip;

.field private lastBlurRx:I

.field private final rect:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1796
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1858
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->lastBlurRx:I

    .line 1875
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->camera:Landroid/graphics/Camera;

    .line 1920
    new-instance p1, Lorg/telegram/ui/GradientClip;

    invoke-direct {p1}, Lorg/telegram/ui/GradientClip;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->clip:Lorg/telegram/ui/GradientClip;

    .line 1921
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->rect:Landroid/graphics/RectF;

    .line 1797
    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FFF[I[I[I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move/from16 v5, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    if-eqz v8, :cond_9

    .line 1923
    iget-object v1, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v1, p3, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    .line 1926
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v2, v12, v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v13

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, p4

    const/high16 v3, 0x43340000    # 180.0f

    .line 1928
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p4, v2

    mul-float/2addr v1, v14

    const v4, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v4

    sub-float v15, v3, v1

    const/high16 v1, 0x43300000    # 176.0f

    .line 1930
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v2

    sub-float v2, v15, v14

    add-float v4, v15, v14

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v3, 0x0

    move v12, v1

    move-object/from16 v1, p1

    .line 1932
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1934
    iget-object v1, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->backgroundMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1935
    iget-object v1, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->backgroundMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v15, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1936
    iget-object v1, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->backgroundGradient:Landroid/graphics/RadialGradient;

    iget-object v3, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->backgroundMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1937
    iget-object v1, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v13

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 1938
    iget-object v6, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->backgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1940
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x42b40000    # 90.0f

    .line 1941
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    .line 1942
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->rect:Landroid/graphics/RectF;

    add-float v7, v2, v3

    const/4 v12, 0x0

    invoke-virtual {v6, v2, v12, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1943
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->rect:Landroid/graphics/RectF;

    const/4 v15, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v6, v1, v7, v15, v12}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 1944
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->rect:Landroid/graphics/RectF;

    sub-float v3, v4, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1945
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->clip:Lorg/telegram/ui/GradientClip;

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x2

    invoke-virtual {v3, v1, v5, v6, v12}, Lorg/telegram/ui/GradientClip;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IF)V

    .line 1946
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1948
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    move v1, v15

    .line 1950
    :goto_0
    array-length v3, v9

    if-ge v1, v3, :cond_3

    int-to-float v3, v1

    .line 1951
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    array-length v6, v9

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    cmpg-float v5, v3, v2

    if-ltz v5, :cond_2

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    sub-float v5, v3, v2

    div-float/2addr v5, v14

    .line 1952
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v5

    sub-float v6, v4, v14

    sub-float/2addr v3, v6

    div-float/2addr v3, v14

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v3, v12, v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v7

    .line 1953
    :goto_2
    aget v5, v9, v1

    iget v6, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->textColor:I

    mul-float/2addr v3, v13

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v3

    aput v3, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v15

    .line 1955
    :goto_3
    array-length v3, v10

    if-ge v1, v3, :cond_6

    int-to-float v3, v1

    .line 1956
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    array-length v6, v10

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    cmpg-float v5, v3, v2

    if-ltz v5, :cond_5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_4

    goto :goto_4

    :cond_4
    sub-float v5, v3, v2

    div-float/2addr v5, v14

    .line 1957
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v5

    sub-float v6, v4, v14

    sub-float/2addr v3, v6

    div-float/2addr v3, v14

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v3, v12, v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_5

    :cond_5
    :goto_4
    move v3, v7

    .line 1958
    :goto_5
    aget v5, v10, v1

    iget v6, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->backgroundColor:I

    mul-float/2addr v3, v13

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-static {v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v3

    aput v3, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1960
    :cond_6
    :goto_6
    array-length v1, v11

    if-ge v15, v1, :cond_9

    int-to-float v1, v15

    .line 1961
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v3, v5

    mul-float/2addr v1, v3

    cmpg-float v3, v1, v2

    if-ltz v3, :cond_7

    cmpl-float v3, v1, v4

    if-lez v3, :cond_8

    :cond_7
    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    sub-float v3, v1, v2

    div-float/2addr v3, v14

    .line 1962
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v3

    sub-float v5, v4, v14

    sub-float/2addr v1, v5

    div-float/2addr v1, v14

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v1, v12, v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_8

    :goto_7
    move v1, v7

    .line 1963
    :goto_8
    aget v3, v11, v15

    iget v5, v8, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;->patternColor:I

    mul-float/2addr v1, v13

    invoke-static {v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    aput v1, v11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_9
    :goto_9
    return-void
.end method

.method private drawSticker(Landroid/graphics/Canvas;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/high16 v3, 0x3f000000    # 0.5f

    move/from16 v4, p3

    if-eqz p4, :cond_1

    .line 1879
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1882
    :cond_1
    iget-object v5, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    .line 1883
    iget-object v6, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    .line 1884
    iget-object v7, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v7

    .line 1885
    iget-object v8, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v8

    .line 1886
    iget-object v9, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v9

    sub-float/2addr v4, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float/2addr v4, v3

    .line 1892
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v3, v10, v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result v3

    .line 1894
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    const/high16 v13, 0x435c0000    # 220.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v4

    sub-float/2addr v11, v13

    const/high16 v13, 0x42a00000    # 80.0f

    .line 1895
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f59999a    # 0.85f

    .line 1897
    invoke-static {v14, v10, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    const/high16 v14, 0x43200000    # 160.0f

    .line 1898
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    .line 1900
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    div-float v15, v14, v12

    mul-float/2addr v15, v4

    add-float/2addr v15, v11

    .line 1901
    invoke-virtual {v1, v15, v13}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 p3, v12

    .line 1902
    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->camera:Landroid/graphics/Camera;

    invoke-virtual {v12}, Landroid/graphics/Camera;->save()V

    .line 1903
    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->camera:Landroid/graphics/Camera;

    const/high16 v16, -0x3e100000    # -30.0f

    mul-float v4, v4, v16

    invoke-virtual {v12, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1904
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    .line 1905
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    neg-float v4, v15

    neg-float v12, v13

    .line 1906
    invoke-virtual {v1, v4, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1907
    iget-object v4, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    mul-float/2addr v14, v10

    div-float v10, v14, p3

    sub-float/2addr v11, v10

    sub-float/2addr v13, v10

    invoke-virtual {v4, v11, v13, v14, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1913
    iget-object v4, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1914
    iget-object v3, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1915
    iget-object v3, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 1916
    iget-object v2, v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1917
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1802
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->a:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->aT:F

    iget-boolean v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->aIsFinish:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->drawSticker(Landroid/graphics/Canvas;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZ)V

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->b:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bT:F

    iget-boolean v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bIsFinish:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->drawSticker(Landroid/graphics/Canvas;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZ)V

    .line 1804
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->c:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->cT:F

    iget-boolean v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->cIsFinish:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->drawSticker(Landroid/graphics/Canvas;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZ)V

    return-void
.end method

.method public drawBackgrounds(Landroid/graphics/Canvas;FF[I[I[I)V
    .locals 9

    .line 1968
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgA:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgAT:F

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->drawBackground(Landroid/graphics/Canvas;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FFF[I[I[I)V

    .line 1969
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgB:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgBT:F

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->drawBackground(Landroid/graphics/Canvas;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FFF[I[I[I)V

    .line 1970
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgC:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgCT:F

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->drawBackground(Landroid/graphics/Canvas;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FFF[I[I[I)V

    return-void
.end method

.method public hasBackgrounds()Z
    .locals 1

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgA:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgB:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgC:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetDrawing()V
    .locals 4

    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->a:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->b:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->c:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgA:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgB:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgC:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    .line 1817
    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->c:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->b:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->a:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    const/4 v3, 0x0

    .line 1818
    iput v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->cT:F

    iput v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bT:F

    iput v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->aT:F

    .line 1819
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->cIsFinish:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bIsFinish:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->aIsFinish:Z

    .line 1821
    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgC:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgB:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgA:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    .line 1822
    iput v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgCT:F

    iput v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgBT:F

    iput v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgAT:F

    .line 1823
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgCIsFinish:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgBIsFinish:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgAIsFinish:Z

    if-eqz v0, :cond_2

    .line 1825
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setDrawing(Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FZ)V
    .locals 0

    .line 1837
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->a:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    .line 1838
    iput-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->b:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    .line 1839
    iput-object p7, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->c:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    .line 1840
    iput p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->aT:F

    .line 1841
    iput p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bT:F

    .line 1842
    iput p8, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->cT:F

    .line 1843
    iput-boolean p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->aIsFinish:Z

    .line 1844
    iput-boolean p6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bIsFinish:Z

    .line 1845
    iput-boolean p9, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->cIsFinish:Z

    .line 1846
    iput-object p10, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgA:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    .line 1847
    iput-object p13, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgB:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    move-object/from16 p1, p16

    .line 1848
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgC:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    .line 1849
    iput p11, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgAT:F

    .line 1850
    iput p14, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgBT:F

    move/from16 p1, p17

    .line 1851
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgCT:F

    .line 1852
    iput-boolean p12, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgAIsFinish:Z

    .line 1853
    iput-boolean p15, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgBIsFinish:Z

    move/from16 p1, p18

    .line 1854
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->bgCIsFinish:Z

    .line 1855
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
