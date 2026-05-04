.class public Lorg/telegram/ui/Components/LoadingSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private drawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private paint:Landroid/graphics/Paint;

.field private scaleY:F

.field private size:I

.field private view:Landroid/view/View;

.field public yOffset:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 26
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lorg/telegram/ui/Components/LoadingSpan;->scaleY:F

    .line 34
    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->view:Landroid/view/View;

    .line 35
    iput p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->size:I

    .line 36
    iput p3, p0, Lorg/telegram/ui/Components/LoadingSpan;->yOffset:I

    .line 37
    new-instance p1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p2, 0x40800000    # 4.0f

    .line 38
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3

    .line 88
    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    float-to-int p3, p5

    int-to-float p4, p6

    const/high16 p5, 0x40000000    # 2.0f

    .line 90
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p7

    sub-int p7, p8, p7

    sub-int/2addr p7, p6

    int-to-float p7, p7

    div-float/2addr p7, p5

    iget v0, p0, Lorg/telegram/ui/Components/LoadingSpan;->scaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr p7, v0

    add-float/2addr p4, p7

    iget p7, p0, Lorg/telegram/ui/Components/LoadingSpan;->yOffset:I

    int-to-float p7, p7

    add-float/2addr p4, p7

    float-to-int p4, p4

    iget p7, p0, Lorg/telegram/ui/Components/LoadingSpan;->size:I

    add-int/2addr p7, p3

    .line 92
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p8, v0

    int-to-float v0, v0

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p8, v2

    sub-int/2addr p8, p6

    int-to-float p6, p8

    div-float/2addr p6, p5

    iget p5, p0, Lorg/telegram/ui/Components/LoadingSpan;->scaleY:F

    sub-float/2addr v1, p5

    mul-float/2addr p6, v1

    sub-float/2addr v0, p6

    iget p5, p0, Lorg/telegram/ui/Components/LoadingSpan;->yOffset:I

    int-to-float p5, p5

    add-float/2addr v0, p5

    float-to-int p5, v0

    .line 88
    invoke-virtual {p2, p3, p4, p7, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p9, :cond_0

    .line 95
    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 97
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->view:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    if-eqz p5, :cond_0

    .line 70
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 71
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 72
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 73
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->leading:F

    float-to-int p3, p3

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 74
    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-int p2, p2

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 76
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->paint:Landroid/graphics/Paint;

    .line 77
    iget-object p2, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object p3, p2, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    if-nez p3, :cond_1

    iget-object p3, p2, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    if-nez p3, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    const p4, 0x3dcccccd    # 0.1f

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    const/high16 p4, 0x3e800000    # 0.25f

    invoke-static {p1, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    .line 78
    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    .line 83
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->size:I

    return p1
.end method

.method public setColors(II)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/LoadingDrawable;->color1:Ljava/lang/Integer;

    .line 54
    iget-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->drawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Components/LoadingDrawable;->color2:Ljava/lang/Integer;

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 58
    iput p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->scaleY:F

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Components/LoadingSpan;->view:Landroid/view/View;

    return-void
.end method
