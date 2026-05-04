.class Lorg/telegram/ui/Components/ReactionsContainerLayout$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .line 373
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-le p2, p3, :cond_2

    .line 376
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 377
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object p2

    const/4 p3, 0x0

    aget p2, p2, p3

    .line 379
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 380
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 381
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v3

    aget v3, v3, p3

    sub-int/2addr v3, p2

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 384
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v1, v3

    const v5, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v3, v5

    const v6, 0x3f19999a    # 0.6f

    add-float/2addr v3, v6

    .line 385
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v1

    .line 386
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v7, v2, v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$msetChildScale(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V

    .line 388
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 389
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 390
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v3

    aget p3, v3, p3

    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p3, p1

    sub-int/2addr p2, p3

    int-to-float p1, p2

    .line 393
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v1, p1

    mul-float/2addr p1, v5

    add-float/2addr p1, v6

    .line 394
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    move p1, v1

    .line 395
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2, v2, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$msetChildScale(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V

    :cond_2
    move p1, v0

    .line 397
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_3

    .line 398
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 399
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p3, p2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->-$$Nest$msetChildScale(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 401
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
