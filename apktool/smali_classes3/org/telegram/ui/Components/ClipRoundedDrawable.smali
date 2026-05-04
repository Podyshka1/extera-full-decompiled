.class public Lorg/telegram/ui/Components/ClipRoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private R:I

.field private callback:Landroid/graphics/drawable/Drawable$Callback;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private hasRadius:Z

.field private path:Landroid/graphics/Path;

.field private radii:[F

.field private tempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Lorg/telegram/ui/Components/ClipRoundedDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ClipRoundedDrawable$1;-><init>(Lorg/telegram/ui/Components/ClipRoundedDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->tempBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->hasRadius:Z

    const/16 v0, 0x8

    .line 57
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->radii:[F

    .line 82
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x416312cfe0000000L    # 9999999.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->R:I

    .line 36
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updatePath()V
    .locals 4

    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->hasRadius:Z

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->path:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 115
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->tempBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->tempBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 123
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->hasRadius:Z

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    invoke-direct {p0}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->updatePath()V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 170
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 162
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 47
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 50
    iget-object p1, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public setRadii(FFFF)V
    .locals 6

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->radii:[F

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x0

    aput v2, v0, v4

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->radii:[F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v5, 0x3

    aput v2, v0, v5

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->radii:[F

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v5, 0x5

    aput v2, v0, v5

    const/4 v5, 0x4

    aput v2, v0, v5

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->radii:[F

    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v5, 0x7

    aput v2, v0, v5

    const/4 v5, 0x6

    aput v2, v0, v5

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    cmpl-float p1, p2, v1

    if-gtz p1, :cond_1

    cmpl-float p1, p3, v1

    if-gtz p1, :cond_1

    cmpl-float p1, p4, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    .line 78
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ClipRoundedDrawable;->hasRadius:Z

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Components/ClipRoundedDrawable;->updatePath()V

    return-void
.end method
