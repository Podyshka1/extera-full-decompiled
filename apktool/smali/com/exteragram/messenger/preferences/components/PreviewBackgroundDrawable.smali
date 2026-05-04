.class public final Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final radius:F

.field private final rectF:Landroid/graphics/RectF;

.field private selectionProgress:F

.field private final strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 30
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iput-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    .line 34
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->radius:F

    return-void
.end method

.method public synthetic constructor <init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    .line 24
    :cond_0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;-><init>(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/exteragram/messenger/preferences/components/PreviewColors;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-static {}, Lcom/exteragram/messenger/preferences/components/PreviewColors;->getOutlineColor()I

    move-result v0

    .line 49
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 50
    iget v2, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->selectionProgress:F

    .line 47
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->strokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->selectionProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v3

    .line 56
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    .line 57
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 58
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 59
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 56
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->radius:F

    iget-object v2, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 64
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->radius:F

    iget-object v2, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 75
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 76
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setSelectionProgress(F)V
    .locals 1

    .line 38
    iget v0, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->selectionProgress:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iput p1, p0, Lcom/exteragram/messenger/preferences/components/PreviewBackgroundDrawable;->selectionProgress:F

    .line 40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
