.class public Lorg/telegram/ui/Components/blur3/StrokeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private alpha:F

.field private colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

.field public nonRound:Z

.field private padding:I

.field private final paintFill:Landroid/graphics/Paint;

.field private final paintStrokeBottom:Landroid/graphics/Paint;

.field private final paintStrokeTop:Landroid/graphics/Paint;

.field public radius:F

.field private final rect:Landroid/graphics/RectF;

.field protected strokeColorBottom:I

.field protected strokeColorTop:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->alpha:F

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->rect:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintFill:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeTop:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeBottom:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 75
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    .line 76
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 77
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->padding:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 78
    iget-object v3, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->rect:Landroid/graphics/RectF;

    sub-float v4, v0, v2

    sub-float v5, v1, v2

    add-float v6, v0, v2

    add-float v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
    iget-boolean v3, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->nonRound:Z

    if-eqz v3, :cond_0

    .line 81
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 82
    iget v2, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->radius:F

    :cond_0
    move v5, v2

    .line 85
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintFill:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 86
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->strokeColorTop:I

    if-eqz v0, :cond_2

    .line 89
    iget-object v4, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeTop:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 91
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->strokeColorBottom:I

    if-eqz p1, :cond_3

    .line 92
    iget-object v4, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->rect:Landroid/graphics/RectF;

    const p1, 0x3f2aaaab

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeBottom:Landroid/graphics/Paint;

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->drawStroke(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->alpha:F

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->updateColors()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColorProvider(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    .line 47
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeTop:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeBottom:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->updateColors()V

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 41
    iput p1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->padding:I

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->glareOnElements:Z

    if-eqz v1, :cond_1

    .line 57
    invoke-interface {v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;->getStrokeColorTop()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->alpha:F

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->strokeColorTop:I

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->colorProvider:Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;->getStrokeColorBottom()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->alpha:F

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->strokeColorBottom:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->strokeColorTop:I

    .line 61
    iput v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->strokeColorBottom:I

    .line 64
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeTop:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->strokeColorTop:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeTop:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeBottom:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->strokeColorBottom:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/StrokeDrawable;->paintStrokeBottom:Landroid/graphics/Paint;

    const v1, 0x3f2aaaab

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
