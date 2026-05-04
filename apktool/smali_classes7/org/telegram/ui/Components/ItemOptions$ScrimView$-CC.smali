.class public abstract synthetic Lorg/telegram/ui/Components/ItemOptions$ScrimView$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getBounds(Lorg/telegram/ui/Components/ItemOptions$ScrimView;Landroid/graphics/RectF;)V
    .locals 2

    .line 1935
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1936
    check-cast p0, Landroid/view/View;

    .line 1937
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method
