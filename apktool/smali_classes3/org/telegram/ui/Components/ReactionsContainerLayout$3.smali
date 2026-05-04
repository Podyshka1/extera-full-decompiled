.class Lorg/telegram/ui/Components/ReactionsContainerLayout$3;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
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
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;IZ)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 8

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez p1, :cond_5

    .line 291
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v5, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    .line 292
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v4

    .line 293
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v7, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    int-to-float p1, p1

    add-float/2addr v7, p1

    iput v7, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    .line 294
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result p1

    cmpl-float v4, v4, v1

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eq v4, p1, :cond_2

    .line 299
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :catch_0
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v4, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    cmpg-float v5, v4, v6

    if-gez v5, :cond_3

    float-to-int v4, v4

    .line 304
    iput v6, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    goto :goto_2

    :cond_3
    move v4, v2

    .line 308
    :goto_2
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 311
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    move p1, v4

    .line 313
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    if-lez p1, :cond_c

    if-nez p2, :cond_c

    .line 314
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p3, p3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p3

    if-ne p3, v3, :cond_c

    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 315
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p3, p3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_6

    .line 316
    invoke-virtual {p3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 317
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p3, p3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 320
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result p3

    cmpl-float p3, p3, v1

    if-lez p3, :cond_7

    const v4, 0x3d4ccccd    # 0.05f

    goto :goto_3

    :cond_7
    const v4, 0x3f19999a    # 0.6f

    .line 326
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v6, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    int-to-float p1, p1

    mul-float/2addr p1, v4

    add-float/2addr v6, p1

    iput v6, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    .line 327
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result p1

    if-lez p3, :cond_8

    move p3, v3

    goto :goto_4

    :cond_8
    move p3, v2

    :goto_4
    cmpl-float p1, p1, v1

    if-lez p1, :cond_9

    move v2, v3

    :cond_9
    if-eq p3, v2, :cond_a

    .line 332
    :try_start_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :catch_1
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_b

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 338
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_c
    return p2
.end method
