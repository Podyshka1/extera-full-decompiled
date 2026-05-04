.class public Lorg/telegram/messenger/Emoji$EmojiSpan;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiSpan"
.end annotation


# instance fields
.field public drawn:Z

.field public emoji:Ljava/lang/String;

.field public fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public lastDrawX:F

.field public lastDrawY:F

.field public scale:F

.field public size:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 815
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 810
    iput p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 811
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    .line 816
    iput-object p3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p3, :cond_0

    .line 818
    iget p2, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    if-nez p2, :cond_0

    .line 820
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 10

    move/from16 v0, p6

    .line 877
    iget v1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    iget v2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p5

    iput v1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->lastDrawX:F

    int-to-float v1, v0

    sub-int v3, p8, v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 878
    iput v1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->lastDrawY:F

    const/4 v1, 0x1

    .line 879
    iput-boolean v1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->drawn:Z

    .line 882
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xff

    if-eq v3, v5, :cond_0

    sget-boolean v3, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    if-eqz v3, :cond_0

    .line 884
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 887
    :goto_0
    sget v6, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    iget v7, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    int-to-float v8, v7

    iget v9, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    int-to-float v7, v7

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    div-float/2addr v8, v2

    sub-float/2addr v6, v8

    const/4 v2, 0x0

    cmpl-float v7, v6, v2

    if-eqz v7, :cond_1

    .line 890
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 891
    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_1
    move v1, v4

    .line 893
    :goto_1
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    if-eqz v1, :cond_2

    .line 895
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    if-eqz v3, :cond_3

    .line 898
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 913
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 914
    :cond_1
    check-cast p1, Lorg/telegram/messenger/Emoji$EmojiSpan;

    .line 915
    iget v2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    iget v3, p1, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    iget v3, p1, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->emoji:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/messenger/Emoji$EmojiSpan;->emoji:Ljava/lang/String;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 8

    if-nez p5, :cond_0

    .line 843
    new-instance p5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    :cond_0
    move-object v5, p5

    .line 846
    iget p5, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    iget v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    int-to-float v0, v0

    mul-float/2addr p5, v0

    float-to-int p5, p5

    .line 847
    iget-object v6, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 848
    invoke-super/range {v0 .. v5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 850
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 p3, 0x41200000    # 10.0f

    .line 851
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    neg-int p4, p3

    sub-int/2addr p4, p2

    .line 852
    iput p4, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p3, p2

    .line 853
    iput p3, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 854
    iput p4, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 855
    iput v7, v5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 856
    iput p3, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return p1

    .line 860
    :cond_1
    iget p1, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 861
    iget p1, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 863
    iget p1, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p1, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 864
    iget p1, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 865
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 866
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v7, v7, p5, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return p5
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    .line 831
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_0

    .line 833
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    if-nez p1, :cond_0

    const/high16 p1, 0x41a00000    # 20.0f

    .line 835
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    :cond_0
    return-void
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V
    .locals 0

    .line 826
    iput-object p1, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 827
    iput p2, p0, Lorg/telegram/messenger/Emoji$EmojiSpan;->size:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 904
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    const v1, 0x10ffffff

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    and-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->placeholderColor:I

    .line 907
    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/ImageSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
