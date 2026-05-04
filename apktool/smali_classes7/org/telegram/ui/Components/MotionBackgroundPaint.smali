.class public Lorg/telegram/ui/Components/MotionBackgroundPaint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;
    }
.end annotation


# instance fields
.field private alphaShader:Lorg/telegram/messenger/utils/ColorShader;

.field private alphaShaderLastAlpha:I

.field private colorShader:Lorg/telegram/messenger/utils/ColorShader;

.field private colorShaderLastColor:I

.field private final gradientShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

.field private final paint:Landroid/graphics/Paint;

.field private final patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final tmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->paint:Landroid/graphics/Paint;

    .line 28
    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;-><init>(Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->gradientShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    .line 29
    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;-><init>(Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    .line 126
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpMatrix:Landroid/graphics/Matrix;

    .line 127
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpRectF:Landroid/graphics/RectF;

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 38
    invoke-static {}, Lorg/telegram/ui/Components/MotionBackgroundPaint$$ExternalSyntheticApiModelOutline2;->m()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method public applyGradientMatrix(Landroid/graphics/RectF;)V
    .locals 4

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->gradientShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget v2, v1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->width:I

    int-to-float v2, v2

    iget v1, v1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->height:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpRectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->gradientShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object p1, p1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public applyPatternMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object v0, v0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public applyPatternMatrix(Landroid/graphics/RectF;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget v2, v1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->width:I

    int-to-float v2, v2

    iget v1, v1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->height:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpRectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object p1, p1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getPaint(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)Landroid/graphics/Paint;
    .locals 3

    if-ltz p5, :cond_0

    .line 48
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p4

    mul-int/2addr v0, p5

    div-int/lit16 v0, v0, 0x639c

    invoke-static {p3, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    const/16 p4, 0xff

    goto :goto_0

    :cond_0
    neg-int p3, p5

    mul-int/2addr p4, p3

    .line 52
    div-int/lit8 p4, p4, 0x64

    const/high16 p3, -0x1000000

    .line 57
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->colorShaderLastColor:I

    const/4 v1, 0x1

    if-ne v0, p3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->colorShader:Lorg/telegram/messenger/utils/ColorShader;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    iput p3, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->colorShaderLastColor:I

    .line 59
    new-instance v0, Lorg/telegram/messenger/utils/ColorShader;

    invoke-direct {v0, p3}, Lorg/telegram/messenger/utils/ColorShader;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->colorShader:Lorg/telegram/messenger/utils/ColorShader;

    move p3, v1

    .line 62
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->alphaShaderLastAlpha:I

    if-ne v0, p4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->alphaShader:Lorg/telegram/messenger/utils/ColorShader;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, p3

    goto :goto_4

    .line 63
    :cond_4
    :goto_3
    iput p4, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->alphaShaderLastAlpha:I

    .line 64
    new-instance p3, Lorg/telegram/messenger/utils/ColorShader;

    const/4 v0, -0x1

    invoke-static {v0, p4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p4

    invoke-direct {p3, p4}, Lorg/telegram/messenger/utils/ColorShader;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->alphaShader:Lorg/telegram/messenger/utils/ColorShader;

    .line 68
    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->gradientShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->setup(Landroid/graphics/Bitmap;)Z

    move-result p1

    or-int/2addr p1, v1

    .line 69
    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->setup(Landroid/graphics/Bitmap;)Z

    move-result p2

    or-int/2addr p1, p2

    if-eqz p1, :cond_7

    if-ltz p5, :cond_6

    .line 73
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_5

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Components/MotionBackgroundPaint$$ExternalSyntheticApiModelOutline1;->m()V

    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->gradientShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object p2, p2, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    new-instance p3, Landroid/graphics/ComposeShader;

    iget-object p4, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->colorShader:Lorg/telegram/messenger/utils/ColorShader;

    iget-object p5, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object p5, p5, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, p5, v0}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-static {}, Lorg/telegram/ui/Cells/PatternCell$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/BlendMode;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundPaint$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/BlendMode;)Landroid/graphics/ComposeShader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_5

    .line 82
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/ComposeShader;

    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->gradientShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object p3, p3, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    new-instance p4, Landroid/graphics/ComposeShader;

    iget-object p5, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->colorShader:Lorg/telegram/messenger/utils/ColorShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object v0, v0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p5, v0, v1}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4, p5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_5

    .line 91
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/ComposeShader;

    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->colorShader:Lorg/telegram/messenger/utils/ColorShader;

    new-instance p4, Landroid/graphics/ComposeShader;

    new-instance p5, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->gradientShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object v0, v0, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->patternShader:Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;

    iget-object v1, v1, Lorg/telegram/ui/Components/MotionBackgroundPaint$BitmapShaderState;->shader:Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->alphaShader:Lorg/telegram/messenger/utils/ColorShader;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p5, v0, v1}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4, p5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    :cond_7
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundPaint;->paint:Landroid/graphics/Paint;

    return-object p1
.end method
