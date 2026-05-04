.class Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchGradientDrawable"
.end annotation


# instance fields
.field private color1:I

.field private color2:I

.field private gradient:[Landroid/graphics/Shader;

.field private gradientMatrix:Landroid/graphics/Matrix;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private final paint:Landroid/graphics/Paint;

.field private r:F

.field private final rect:Landroid/graphics/RectF;

.field private swapGradient:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 9

    .line 10527
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 10518
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    .line 10519
    new-array v0, v0, [Landroid/graphics/Shader;

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradient:[Landroid/graphics/Shader;

    .line 10520
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    .line 10521
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;)V

    const-wide/16 v6, 0x1a4

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLjava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->swapGradient:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 10522
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->rect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 10525
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->r:F

    .line 10528
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->type:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 10552
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10553
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 10554
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->swapGradient:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    const/4 v2, 0x0

    .line 10555
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradient:[Landroid/graphics/Shader;

    array-length v4, v3

    const/high16 v5, 0x43110000    # 145.0f

    if-ge v2, v4, :cond_3

    .line 10556
    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    int-to-float v3, v2

    sub-float/2addr v3, v0

    .line 10557
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v1, v3

    float-to-double v3, v3

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    goto :goto_2

    .line 10560
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 10561
    iget v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 10562
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 10564
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 10566
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradient:[Landroid/graphics/Shader;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 10567
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradient:[Landroid/graphics/Shader;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 10568
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10569
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->rect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->r:F

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10572
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 10573
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10574
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10575
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->rect:Landroid/graphics/RectF;

    .line 10579
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v0, 0x43910000    # 290.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object v2, p1

    .line 10575
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;FFFF)V

    .line 10583
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColors(II)V
    .locals 12

    .line 10532
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->color1:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->color2:I

    if-ne v0, p2, :cond_0

    return-void

    .line 10533
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->gradient:[Landroid/graphics/Shader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-object v3, v0, v2

    aput-object v3, v0, v1

    .line 10534
    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->type:I

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 10535
    new-instance v4, Landroid/graphics/LinearGradient;

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->color1:I

    iput p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->color2:I

    filled-new-array {p1, p2}, [I

    move-result-object v9

    new-array v10, v3, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    aput-object v4, v0, v2

    goto :goto_0

    .line 10537
    :cond_1
    new-instance v5, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x43aa0000    # 340.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v8, v1

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->color1:I

    iput p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->color2:I

    filled-new-array {p1, p2}, [I

    move-result-object v9

    new-array v10, v3, [F

    fill-array-data v10, :array_1

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    aput-object v5, v0, v2

    .line 10539
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->swapGradient:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->force(F)V

    .line 10540
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 10543
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$SwitchGradientDrawable;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
