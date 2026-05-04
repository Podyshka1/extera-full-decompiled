.class Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$2;
.super Lorg/telegram/ui/Components/Premium/StarParticlesView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;Landroid/content/Context;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 99
    invoke-super {p0}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->onAttachedToWindow()V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->-$$Nest$fgetstarParticlesView(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 105
    invoke-super {p0}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->onDetachedFromWindow()V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell$2;->this$0:Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->-$$Nest$fgetstarParticlesView(Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;)Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->setPaused(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 93
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->onMeasure(II)V

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
