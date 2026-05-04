.class public Lorg/telegram/messenger/utils/OnPostDrawView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/utils/OnPostDrawView$InvalidateCallback;
    }
.end annotation


# instance fields
.field private final callback:Lorg/telegram/messenger/utils/OnPostDrawView$InvalidateCallback;

.field private invalidateFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/utils/OnPostDrawView$InvalidateCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lorg/telegram/messenger/utils/OnPostDrawView;->invalidateFlags:I

    .line 32
    iput-object p2, p0, Lorg/telegram/messenger/utils/OnPostDrawView;->callback:Lorg/telegram/messenger/utils/OnPostDrawView$InvalidateCallback;

    return-void
.end method


# virtual methods
.method public bringToFrontIfNeeded()V
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 49
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 53
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public invalidate(I)V
    .locals 1

    .line 24
    iget v0, p0, Lorg/telegram/messenger/utils/OnPostDrawView;->invalidateFlags:I

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/utils/OnPostDrawView;->invalidateFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/utils/OnPostDrawView;->invalidateFlags:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object p1, p0, Lorg/telegram/messenger/utils/OnPostDrawView;->callback:Lorg/telegram/messenger/utils/OnPostDrawView$InvalidateCallback;

    iget v0, p0, Lorg/telegram/messenger/utils/OnPostDrawView;->invalidateFlags:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/utils/OnPostDrawView$InvalidateCallback;->onPostDraw(I)V

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lorg/telegram/messenger/utils/OnPostDrawView;->invalidateFlags:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x1

    .line 37
    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->measureSpecExactly(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->measureSpecExactly(I)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
