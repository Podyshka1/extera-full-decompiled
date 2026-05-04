.class public Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RippleRadMaskDrawable"
.end annotation


# instance fields
.field invalidatePath:Z

.field private paddingBottom:F

.field private paddingLeft:F

.field private paddingRight:F

.field private paddingTop:F

.field private path:Landroid/graphics/Path;

.field private radii:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 6089
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;-><init>(FFIIII)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 6093
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;-><init>(FFFFIIII)V

    return-void
.end method

.method public constructor <init>(FFFFIIII)V
    .locals 2

    .line 6100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 6079
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    const/16 v0, 0x8

    .line 6080
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    const/4 v1, 0x1

    .line 6081
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 6101
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 6102
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x3

    aput p2, p1, v0

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 6103
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    aput p2, p1, p3

    const/4 p3, 0x4

    aput p2, p1, p3

    .line 6104
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    aput p2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    int-to-float p1, p5

    .line 6105
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingLeft:F

    int-to-float p1, p6

    .line 6106
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingTop:F

    int-to-float p1, p7

    .line 6107
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingRight:F

    int-to-float p1, p8

    .line 6108
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingBottom:F

    return-void
.end method

.method public constructor <init>(FFIIII)V
    .locals 9

    move v2, p1

    move v4, p2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 6097
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;-><init>(FFFFIIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 6140
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6141
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 6142
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6143
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6144
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingLeft:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingTop:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingRight:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingBottom:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6145
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 6147
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->path:Landroid/graphics/Path;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetmaskPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 6135
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setPadding(FFFF)V
    .locals 0

    .line 6125
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingLeft:F

    .line 6126
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingTop:F

    .line 6127
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingRight:F

    .line 6128
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->paddingBottom:F

    const/4 p1, 0x1

    .line 6129
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 6130
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(FF)V
    .locals 0

    .line 6113
    invoke-virtual {p0, p1, p1, p2, p2}, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->setRadius(FFFF)V

    return-void
.end method

.method public setRadius(FFFF)V
    .locals 3

    .line 6116
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 6117
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x3

    aput p2, p1, v0

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 6118
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    aput p2, p1, p3

    const/4 p3, 0x4

    aput p2, p1, p3

    .line 6119
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    aput p2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    .line 6120
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$RippleRadMaskDrawable;->invalidatePath:Z

    .line 6121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
