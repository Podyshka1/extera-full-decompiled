.class public Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final bitmapMatrix:Landroid/graphics/Matrix;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private colorStaticLast:I

.field private final colorStaticPaint:Landroid/graphics/Paint;

.field private composeShader:Landroid/graphics/Shader;

.field private final drawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private fadeHeight:I

.field private gradientShader:Landroid/graphics/Shader;

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private final maskFadeGradientPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matrixTmp:Landroid/graphics/Matrix;

.field private opacity:Z

.field private shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V
    .locals 4

    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->maskFadeGradientPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 42
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrixTmp:Landroid/graphics/Matrix;

    .line 47
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapPaint:Landroid/graphics/Paint;

    .line 85
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->colorStaticPaint:Landroid/graphics/Paint;

    .line 55
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->drawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 56
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 57
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 58
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->setFadeHeight(IZ)V

    return-void
.end method

.method private static createGradient(IZ)Landroid/graphics/LinearGradient;
    .locals 11

    .line 198
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 201
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 202
    invoke-static {p0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    mul-int/lit8 v1, v0, 0x60

    div-int/lit16 v1, v1, 0xff

    .line 203
    invoke-static {p0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    mul-int/lit16 v3, v0, 0xb0

    div-int/lit16 v3, v3, 0xff

    .line 204
    invoke-static {p0, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    mul-int/lit16 v0, v0, 0xe8

    div-int/lit16 v0, v0, 0xff

    .line 205
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    filled-new-array {p1, v1, v3, p0}, [I

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v2

    .line 209
    :cond_0
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 210
    invoke-static {p0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    mul-int/lit8 v1, v0, 0x60

    div-int/lit16 v1, v1, 0xff

    .line 211
    invoke-static {p0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    mul-int/lit16 v2, v0, 0xb0

    div-int/lit16 v2, v2, 0xff

    .line 212
    invoke-static {p0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    mul-int/lit16 v4, v0, 0xe8

    div-int/lit16 v4, v4, 0xff

    .line 213
    invoke-static {p0, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    mul-int/lit16 v0, v0, 0xff

    div-int/lit16 v0, v0, 0xff

    .line 214
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    filled-new-array {p1, v1, v2, v4, p0}, [I

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 90
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->drawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getUnwrappedSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object v1

    .line 96
    instance-of v2, v1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 99
    check-cast v1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->getColor()I

    move-result v1

    .line 100
    iget v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->colorStaticLast:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v2, :cond_2

    .line 101
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->opacity:Z

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->createGradient(IZ)Landroid/graphics/LinearGradient;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 102
    iput v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->colorStaticLast:I

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->colorStaticPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->fadeHeight:I

    if-gez v1, :cond_3

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->fadeHeight:I

    add-int v3, v1, v2

    .line 111
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrixTmp:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrixTmp:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrixTmp:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->colorStaticPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 119
    :cond_4
    instance-of v2, v1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    if-eqz v2, :cond_e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v2, v4, :cond_e

    .line 122
    check-cast v1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    .line 123
    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_0
    return-void

    .line 130
    :cond_5
    iget v5, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->colorStaticLast:I

    const/4 v6, 0x1

    const/high16 v7, -0x1000000

    if-ne v5, v7, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->gradientShader:Landroid/graphics/Shader;

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    move v5, v3

    goto :goto_2

    .line 131
    :cond_7
    :goto_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->opacity:Z

    invoke-static {v7, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->createGradient(IZ)Landroid/graphics/LinearGradient;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->gradientShader:Landroid/graphics/Shader;

    .line 132
    iput v7, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->colorStaticLast:I

    move v5, v6

    .line 136
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->lastBitmap:Landroid/graphics/Bitmap;

    if-eq v7, v4, :cond_8

    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_4

    .line 137
    :cond_9
    :goto_3
    iput-object v4, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->lastBitmap:Landroid/graphics/Bitmap;

    .line 138
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v4, v7, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    const/16 v4, 0x21

    if-lt v2, v4, :cond_a

    const/4 v2, 0x2

    .line 140
    invoke-virtual {v5, v2}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    :cond_a
    :goto_4
    if-nez v6, :cond_b

    .line 145
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->composeShader:Landroid/graphics/Shader;

    if-nez v2, :cond_c

    .line 146
    :cond_b
    new-instance v2, Landroid/graphics/ComposeShader;

    iget-object v4, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->gradientShader:Landroid/graphics/Shader;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5, v6}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->composeShader:Landroid/graphics/Shader;

    .line 147
    iget-object v4, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 151
    :cond_c
    iget v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->fadeHeight:I

    if-gez v2, :cond_d

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->fadeHeight:I

    add-int/2addr v3, v2

    .line 155
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrixTmp:Landroid/graphics/Matrix;

    iget-object v4, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 156
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrixTmp:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 157
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->gradientShader:Landroid/graphics/Shader;

    iget-object v3, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrixTmp:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 159
    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->drawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getSourceOffsetX()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->drawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getSourceOffsetY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    .line 170
    :cond_e
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p1

    .line 172
    iget v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->fadeHeight:I

    if-gez v1, :cond_f

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->fadeHeight:I

    add-int v3, v1, v2

    .line 176
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->drawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    neg-int v1, v3

    int-to-float v6, v1

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v3

    int-to-float v8, v0

    iget-object v9, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->maskFadeGradientPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 179
    invoke-virtual {v4, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->drawable:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

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

.method public setFadeHeight(IZ)V
    .locals 2

    .line 62
    iget v0, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->fadeHeight:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->opacity:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 66
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->fadeHeight:I

    .line 67
    iput-boolean p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->opacity:Z

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->maskFadeGradientPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->createGradient(IZ)Landroid/graphics/LinearGradient;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->colorStaticPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 71
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 72
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    if-gez p1, :cond_1

    .line 74
    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrix:Landroid/graphics/Matrix;

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 76
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->shader:Landroid/graphics/Shader;

    iget-object p2, p0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
