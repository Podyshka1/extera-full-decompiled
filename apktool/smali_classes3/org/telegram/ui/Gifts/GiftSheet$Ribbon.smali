.class public Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ribbon"
.end annotation


# instance fields
.field public final drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2150
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2147
    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    .line 2151
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 2191
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2192
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/high16 p1, 0x42480000    # 50.0f

    .line 2186
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V
    .locals 2

    .line 2175
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;ZZ)V

    .line 2176
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 2163
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setColor(I)V

    return-void
.end method

.method public setColors(II)V
    .locals 1

    .line 2171
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setColors(II)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 2167
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setStrokeColor(I)V

    return-void
.end method

.method public setText(ILjava/lang/CharSequence;Z)V
    .locals 1

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setText(ILjava/lang/CharSequence;Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 2155
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    if-eqz p2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setText(ILjava/lang/CharSequence;Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 2181
    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$Ribbon;->drawable:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
