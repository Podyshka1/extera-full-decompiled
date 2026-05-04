.class public Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private fadeHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private checkBounds()V
    .locals 4

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->fadeHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->checkBounds()V

    return-void
.end method

.method public setFadeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 20
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->checkBounds()V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFadeHeight(I)V
    .locals 1

    .line 25
    iget v0, p0, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->fadeHeight:I

    if-eq v0, p1, :cond_0

    .line 26
    iput p1, p0, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->fadeHeight:I

    .line 27
    invoke-direct {p0}, Lorg/telegram/ui/Components/chat/ChatActivityTopFadeView;->checkBounds()V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
