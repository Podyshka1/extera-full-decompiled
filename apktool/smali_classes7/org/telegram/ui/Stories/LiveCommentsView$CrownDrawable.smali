.class public Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/LiveCommentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrownDrawable"
.end annotation


# instance fields
.field private final crown:Landroid/graphics/drawable/Drawable;

.field private final scale:F

.field private final text:Lorg/telegram/ui/Components/Text;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 2040
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 2041
    iput v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->scale:F

    .line 2042
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->filled_stream_crown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    .line 2043
    new-instance p1, Lorg/telegram/ui/Components/Text;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fonts/num.otf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->text:Lorg/telegram/ui/Components/Text;

    .line 2044
    iget-object p1, p1, Lorg/telegram/ui/Components/Text;->paint:Landroid/text/TextPaint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 2049
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2050
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    const/16 v8, 0xff

    const/16 v9, 0x1f

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2051
    iget-object v2, v0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2052
    iget-object v2, v0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2053
    iget-object v10, v0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v12, v2, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const v2, 0x3e19999a    # 0.15f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v13, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v15, v1, v2

    const/4 v14, -0x1

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 2054
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 2069
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 2064
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 2059
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 2074
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 2079
    iget-object v0, p0, Lorg/telegram/ui/Stories/LiveCommentsView$CrownDrawable;->crown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
