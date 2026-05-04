.class Lorg/telegram/ui/Components/SharedMediaLayout$31;
.super Lorg/telegram/ui/Components/SearchTagsList;
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
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 0

    .line 3588
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Components/SearchTagsList;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method


# virtual methods
.method protected onShownUpdate(Z)V
    .locals 4

    .line 3611
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3612
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 3613
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    sub-float v0, v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v2

    const v3, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3614
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 3615
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollSlidingTextTabStrip:Lorg/telegram/ui/Components/SharedMediaLayout$ScrollSlidingTextTabStripInner;

    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z
    .locals 5

    .line 3591
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3592
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputsearchingReaction(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 3593
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3594
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearchingReaction(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputsearchWas(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 3595
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mswitchToCurrentSelectedMode(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 3596
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v1

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 3597
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsavedMessagesSearchAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3598
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsavedMessagesSearchAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearchingReaction(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->search(Ljava/lang/String;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 3600
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_2

    .line 3601
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 3602
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsavedMessagesContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ChatActivityContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3603
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsavedMessagesContainer(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ChatActivityContainer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->setTagFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    :cond_5
    :goto_2
    return v4
.end method

.method public updateTags(Z)V
    .locals 3

    .line 3620
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->updateTags(Z)V

    .line 3621
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSelectedTab()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSelectedTab()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchTagsList:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchTagsList;->hasFilters()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchTagsList;->show(Z)V

    .line 3622
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemIcon:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_3

    .line 3623
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchTagsList;->hasFilters()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$drawable;->navbar_search_tag:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    :goto_1
    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(IZ)V

    .line 3625
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3626
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->searchTagsList:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchTagsList;->hasFilters()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$31;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSelectedTab()I

    move-result v0

    if-ne v0, v1, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->SavedTagSearchHint:I

    goto :goto_2

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->Search:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
