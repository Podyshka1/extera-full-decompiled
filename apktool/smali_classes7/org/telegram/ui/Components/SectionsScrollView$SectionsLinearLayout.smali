.class public Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SectionsScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionsLinearLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 212
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/SectionsScrollView;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SectionsScrollView;

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 220
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/SectionsScrollView;->-$$Nest$mclipChild(Lorg/telegram/ui/Components/SectionsScrollView;Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 225
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 230
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/SectionsScrollView;

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
