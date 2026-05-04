.class Lorg/telegram/ui/Components/ViewPagerFixed$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabsViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyReorder(Ljava/util/ArrayList;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->applyReorder(Ljava/util/ArrayList;)V

    return-void
.end method

.method public canPerformActions()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->-$$Nest$fgettabsAnimationInProgress(Lorg/telegram/ui/Components/ViewPagerFixed;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->-$$Nest$fgetstartedTracking(Lorg/telegram/ui/Components/ViewPagerFixed;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canReorder(I)Z
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 376
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->canReorder(I)Z

    move-result p1

    return p1
.end method

.method public invalidateBlur()V
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->invalidateBlur()V

    return-void
.end method

.method public needsTab(I)Z
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->adapter:Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 329
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;->needsTab(I)Z

    move-result p1

    return p1
.end method

.method public onPageScrolled(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 335
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->swapViews()V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->-$$Nest$fgetviewTypes(Lorg/telegram/ui/Components/ViewPagerFixed;)[I

    move-result-object p1

    aget p1, p1, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v0, 0x0

    aput-object v0, p1, v3

    .line 342
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget v0, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabScrollEnd(I)V

    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v4, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    return-void

    .line 348
    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->-$$Nest$fgetanimatingForward(Lorg/telegram/ui/Components/ViewPagerFixed;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v4, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v4, v3

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, p1

    mul-float/2addr v4, v0

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v4, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v3, v4, v3

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v0, p1

    mul-float/2addr v4, v0

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    .line 355
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->-$$Nest$fputanimatingForward(Lorg/telegram/ui/Components/ViewPagerFixed;Z)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iput p1, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->nextPosition:I

    const/4 v1, 0x1

    .line 313
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->-$$Nest$mupdateViewForIndex(Lorg/telegram/ui/Components/ViewPagerFixed;I)V

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabPageSelected(IZ)V

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 317
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$4;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v2, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    int-to-float p2, v0

    .line 319
    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    return-void

    :cond_1
    neg-int p2, v0

    int-to-float p2, p2

    .line 321
    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    :cond_2
    return-void
.end method

.method public onSamePageSelected()V
    .locals 0

    return-void
.end method
