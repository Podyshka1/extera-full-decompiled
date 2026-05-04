.class Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;->createScrollView(Landroid/content/Context;)Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final alphaFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;

.field topShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private wasCanScrollVertically:Z


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;Landroid/content/Context;)V
    .locals 2

    .line 149
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->this$0:Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v0, 0x15e

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->alphaFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 166
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 167
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->alphaFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 175
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->topShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 156
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onNestedScroll(Landroid/view/View;IIII)V

    move-object p1, p0

    const/4 p2, -0x1

    .line 157
    invoke-virtual {p0, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    .line 158
    iget-boolean p3, p1, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->wasCanScrollVertically:Z

    if-eq p3, p2, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 160
    iput-boolean p2, p1, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper$1;->wasCanScrollVertically:Z

    :cond_0
    return-void
.end method
