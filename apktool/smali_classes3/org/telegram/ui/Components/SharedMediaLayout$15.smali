.class Lorg/telegram/ui/Components/SharedMediaLayout$15;
.super Lorg/telegram/ui/ProfileStoriesCollectionTabs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$p4Qac-H5Atr5_JgbuLsYFqZf3go(Lorg/telegram/ui/Components/SharedMediaLayout$15;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$15;->lambda$updatedReordering$0(Z)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/ui/ProfileStoriesCollectionTabs$Delegate;)V
    .locals 0

    .line 2633
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/ProfileStoriesCollectionTabs;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Lorg/telegram/ui/ProfileStoriesCollectionTabs$Delegate;)V

    return-void
.end method

.method private synthetic lambda$updatedReordering$0(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2643
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->saveItem:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onVisibilityChange(F)V
    .locals 9

    .line 2651
    invoke-super {p0, p1}, Lorg/telegram/ui/ProfileStoriesCollectionTabs;->onVisibilityChange(F)V

    .line 2652
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2653
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 2654
    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2655
    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    .line 2656
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v6, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    .line 2657
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetPagePaddingTop(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    .line 2658
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    .line 2659
    invoke-virtual {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->isStoriesView()Z

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mgetPagePaddingBottom(Lorg/telegram/ui/Components/SharedMediaLayout;Z)I

    move-result v7

    iput v7, v2, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;->hintPaddingBottom:I

    .line 2655
    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2664
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mcheckUi_topPanelLayoutY(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    return-void
.end method

.method protected updatedReordering(Z)V
    .locals 4

    .line 2637
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->saveItem:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2638
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->saveItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2639
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3ecccccd    # 0.4f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 2640
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2641
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$15$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$15$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$15;Z)V

    .line 2642
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2645
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2646
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$15;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mupdateOptionsSearch(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    return-void
.end method
