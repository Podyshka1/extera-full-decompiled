.class Lorg/telegram/ui/ChatActivity$SearchItemListener;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchItemListener"
.end annotation


# instance fields
.field private searchAnimationProgress:F

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private whiteActionBar:Z


# direct methods
.method public static synthetic $r8$lambda$92KCjZYcvZOv4hPy6nU6Zoy-7C8(Lorg/telegram/ui/ChatActivity$SearchItemListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$SearchItemListener;->lambda$onSearchExpand$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$TJZnHTcnblOaWiQkAvMxFDMNNPk(Lorg/telegram/ui/ChatActivity$SearchItemListener;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$SearchItemListener;->lambda$onSearchPressed$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lf0-T90wLq9O9Qqf4REJMTg86zI(Lorg/telegram/ui/ChatActivity$SearchItemListener;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$SearchItemListener;->lambda$onSearchCollapse$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yUcANh9Sp7CMlJm4QwrW6Go_hxE(Lorg/telegram/ui/ChatActivity$SearchItemListener;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$SearchItemListener;->lambda$onSearchExpand$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 38109
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$SearchItemListener;-><init>(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private synthetic lambda$onSearchCollapse$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 38262
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$SearchItemListener;->setSearchAnimationProgress(F)V

    return-void
.end method

.method private synthetic lambda$onSearchExpand$1()V
    .locals 2

    .line 38300
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->searchWas:Z

    .line 38301
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 38302
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 38303
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->removeKeyboardPositionBeforeTransition()V

    return-void
.end method

.method private synthetic lambda$onSearchExpand$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 38311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$SearchItemListener;->setSearchAnimationProgress(F)V

    return-void
.end method

.method private synthetic lambda$onSearchPressed$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 38370
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$SearchItemListener;->setSearchAnimationProgress(F)V

    return-void
.end method


# virtual methods
.method public canClearCaption()Z
    .locals 1

    .line 38438
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canCollapseSearch()Z
    .locals 5

    .line 38113
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethashtagHistoryView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HashtagHistoryView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HashtagHistoryView;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 38116
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz v3, :cond_3

    .line 38118
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v3

    .line 38119
    instance-of v4, v3, Lorg/telegram/ui/ChatActivityContainer;

    if-eqz v4, :cond_1

    .line 38120
    check-cast v3, Lorg/telegram/ui/ChatActivityContainer;

    iget-object v0, v3, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 38123
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 38124
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowMessagesSearchListView(Lorg/telegram/ui/ChatActivity;Z)V

    return v2

    .line 38126
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getCurrentPosition()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 38127
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    return v2

    .line 38131
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 38132
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowMessagesSearchListView(Lorg/telegram/ui/ChatActivity;Z)V

    return v2

    :cond_4
    return v1
.end method

.method public forceShowClear()Z
    .locals 1

    .line 38466
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingForUser(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    return v0
.end method

.method public onCaptionCleared()V
    .locals 8

    .line 38443
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateSearchContainer(Lorg/telegram/ui/ChatActivity;)V

    .line 38444
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingUserMessages(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingChatMessages(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 38449
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingForUser(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 38450
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    .line 38451
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingForUser(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38452
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    .line 38454
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSupportedTags(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->SavedTagSearchHint:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->Search:I

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 38455
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchCalendarButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38456
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchUserButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 38457
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchUserButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38459
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingUserMessages(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 38460
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingChatMessages(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void

    .line 38445
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchUserButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 38446
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchUserButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_5
    return-void
.end method

.method public onSearchCollapse()V
    .locals 10

    .line 38153
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearching(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38154
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38155
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchUpDownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38156
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchCalendarButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38157
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchCalendarButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38159
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchUserButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38160
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchUserButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38162
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingForUser(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38163
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    .line 38164
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingForUser(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38166
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->setReversed(Z)V

    .line 38167
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchingMentions(Z)V

    .line 38168
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckUi_botMenuPosition(Lorg/telegram/ui/ChatActivity;)V

    .line 38169
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingUserMessages(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 38170
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingChatMessages(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 38171
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingHashtag(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 38172
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSupportedTags(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/messenger/R$string;->SavedTagSearchHint:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->Search:I

    goto :goto_0

    :goto_1
    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 38173
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldCaption(Ljava/lang/CharSequence;)V

    .line 38174
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const v4, 0x3f733333    # 0.95f

    invoke-static {v0, v2, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 38175
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditTextItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    const/16 v4, 0x8

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditTextItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 38176
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 38177
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38179
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditTextItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 38180
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditTextItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 38181
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckEditTextItemMenu(Lorg/telegram/ui/ChatActivity;)V

    .line 38183
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetattachItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 38184
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetattachItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 38186
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetotherIcon(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ComposeDrawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 38187
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetotherIcon(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ComposeDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ComposeDrawable;->setIconVisible(Z)V

    .line 38189
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38190
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38192
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaudioCallIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowAudioCallAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38193
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaudioCallIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto/16 :goto_2

    .line 38195
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSlowModeTimer()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 38196
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 38197
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38199
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditTextItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 38200
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditTextItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 38202
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetattachItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 38203
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetattachItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 38205
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetotherIcon(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ComposeDrawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 38206
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetotherIcon(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ComposeDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ComposeDrawable;->setIconVisible(Z)V

    .line 38208
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 38209
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38211
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaudioCallIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowAudioCallAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38212
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaudioCallIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto/16 :goto_2

    .line 38215
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 38216
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38218
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaudioCallIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowAudioCallAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 38219
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaudioCallIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 38221
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 38222
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38224
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditTextItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 38225
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgeteditTextItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 38227
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetattachItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 38228
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetattachItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 38230
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetotherIcon(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ComposeDrawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 38231
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetotherIcon(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ComposeDrawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ComposeDrawable;->setIconVisible(Z)V

    .line 38234
    :cond_16
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 38235
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_17

    .line 38236
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    .line 38237
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputrequestClearSearchPages(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_3

    .line 38239
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->clearViews()V

    .line 38242
    :cond_18
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eq v0, v4, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getRepliesCount()I

    move-result v0

    const/16 v6, 0xa

    if-ge v0, v6, :cond_1b

    .line 38243
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38245
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchItemVisible(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38246
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->clearFoundMessageObjects()V

    .line 38247
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchType(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1c

    .line 38248
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/HashtagSearchController;->clearSearchResults(I)V

    goto :goto_4

    .line 38250
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16000(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/HashtagSearchController;->clearSearchResults()V

    .line 38252
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 38253
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->notifyDataSetChanged()V

    .line 38255
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mremoveSelectedMessageHighlight(Lorg/telegram/ui/ChatActivity;)V

    .line 38256
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V

    .line 38257
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePinnedMessageView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38258
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->updateTopPanel(Z)V

    .line 38259
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V

    .line 38261
    iget v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v0, v5, v1

    const/4 v0, 0x0

    aput v0, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 38262
    new-instance v6, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$SearchItemListener;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38263
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x140

    .line 38264
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38265
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 38267
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38268
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38269
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38270
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchListEmptyView(Lorg/telegram/ui/ChatActivity;)V

    .line 38272
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v3, v0, Lorg/telegram/ui/ChatActivity;->searchingReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 38273
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchUpDownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38274
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38275
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v0, :cond_1e

    .line 38276
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchTagsList;->clear()V

    .line 38277
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SearchTagsList;->show(Z)V

    .line 38279
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz v0, :cond_1f

    .line 38280
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatSearchTabs;->show(Z)V

    .line 38282
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetFilterMessages(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38283
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethashtagHistoryView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HashtagHistoryView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HashtagHistoryView;->show(Z)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 7

    .line 38288
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearching(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38289
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38290
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchUpDownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38291
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/ChatActivity;->preventReopenSearchWithText:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 38292
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->openSearchWithText(Ljava/lang/String;)V

    .line 38294
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetopenSearchKeyboard(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38295
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->saveKeyboardPositionBeforeTransition()V

    .line 38296
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v2, :cond_3

    .line 38297
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16100(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 38299
    :cond_3
    new-instance v0, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$SearchItemListener;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 38305
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mhideSendButtonHints(Lorg/telegram/ui/ChatActivity;)V

    .line 38308
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->whiteActionBar:Z

    .line 38309
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->updateTopPanel(Z)V

    .line 38310
    iget v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v2

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 38311
    new-instance v3, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$SearchItemListener;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38312
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x140

    .line 38313
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38314
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 38315
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v3, :cond_8

    .line 38316
    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v0, :cond_7

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SearchTagsList;->hasFilters()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/SearchTagsList;->show(Z)V

    .line 38319
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 38320
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    :cond_9
    return-void
.end method

.method public onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 38141
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 38142
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz p1, :cond_0

    .line 38143
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchTagsList;->clear()V

    .line 38145
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/ChatActivity;->searchingReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v0, 0x1

    .line 38146
    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchUpDownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38147
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38148
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetFilterMessages(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .locals 13

    .line 38354
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->searchWas:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 38355
    invoke-static {v0, v3, v3, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchButtons(Lorg/telegram/ui/ChatActivity;III)V

    .line 38359
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingQuery(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 38360
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 38362
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 38363
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/HashtagActivity;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 38366
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 38367
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingHashtag(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 38368
    iput-boolean v1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->whiteActionBar:Z

    .line 38369
    iget p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p1, v0, v3

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 38370
    new-instance v0, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$SearchItemListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38371
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x140

    .line 38372
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38373
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 38374
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v0, :cond_4

    .line 38375
    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchTagsList;->hasFilters()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->show(Z)V

    .line 38378
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingHashtag(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 38379
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v3, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mresolveDefaultHashtagSearchPage(Lorg/telegram/ui/ChatActivity;ZZ)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputdefaultSearchPage(Lorg/telegram/ui/ChatActivity;I)V

    .line 38380
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckHashtagStories(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38381
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17000(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/HashtagSearchController;->putToHistory(Ljava/lang/String;)V

    .line 38382
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethashtagHistoryView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HashtagHistoryView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/HashtagHistoryView;->update()V

    .line 38383
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object p1

    .line 38384
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchType(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 38385
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/HashtagSearchController;->clearSearchResults(I)V

    goto :goto_2

    .line 38387
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/HashtagSearchController;->getInstance(I)Lorg/telegram/messenger/HashtagSearchController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/HashtagSearchController;->clearSearchResults()V

    .line 38389
    :goto_2
    instance-of v0, p1, Lorg/telegram/ui/ChatActivityContainer;

    if-eqz v0, :cond_6

    .line 38390
    check-cast p1, Lorg/telegram/ui/ChatActivityContainer;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivityContainer;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatActivity;->updateSearchingHashtag(Ljava/lang/String;)V

    .line 38392
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchListEmptyView(Lorg/telegram/ui/ChatActivity;)V

    .line 38393
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethashtagSearchEmptyView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    .line 38394
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowMessagesSearchListView(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_3

    .line 38396
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingHashtag(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 38397
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz p1, :cond_8

    .line 38398
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ChatSearchTabs;->show(Z)V

    .line 38399
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getHashtagTabsHeight()I

    move-result v0

    invoke-virtual {p1, v3, v3, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 38400
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchListEmptyView(Lorg/telegram/ui/ChatActivity;)V

    .line 38402
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getCurrentPosition()I

    move-result p1

    if-eqz p1, :cond_9

    .line 38403
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    :cond_9
    move v1, v3

    .line 38406
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz p1, :cond_a

    .line 38407
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatSearchTabs;->show(Z)V

    .line 38409
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getCurrentPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 38410
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatSearchTabs;->tabs:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdefaultSearchPage(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    .line 38413
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingQuery(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingUserMessages(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingChatMessages(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, p1, Lorg/telegram/ui/ChatActivity;->searchingReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/MediaDataController;->searchMessagesInChat(Ljava/lang/String;JJIIJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 8

    .line 38418
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38419
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowMessagesSearchListView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38421
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateSearchContainer(Lorg/telegram/ui/ChatActivity;)V

    .line 38422
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingForUser(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38423
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    goto :goto_0

    .line 38424
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingUserMessages(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingChatMessages(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchUserButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->SearchFrom:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38425
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchUserButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 38427
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 38428
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    .line 38429
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethashtagHistoryView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HashtagHistoryView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/HashtagHistoryView;->isShowing()Z

    move-result p1

    if-eq v1, p1, :cond_4

    .line 38430
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethashtagHistoryView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HashtagHistoryView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/HashtagHistoryView;->show(Z)V

    .line 38431
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V

    :cond_4
    return-void
.end method

.method public setSearchAnimationProgress(F)V
    .locals 6

    .line 38328
    iput p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    .line 38329
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->whiteActionBar:Z

    if-eqz p1, :cond_0

    .line 38330
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    .line 38331
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    invoke-static {p1, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 38332
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 38334
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    .line 38335
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 38336
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    invoke-static {p1, v0, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v3, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 38338
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    invoke-static {v0, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 38339
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    invoke-virtual {p1, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 38340
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchTextColor(IZ)V

    .line 38341
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$16800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->searchAnimationProgress:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchCursorColor(I)V

    .line 38343
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38344
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isLightStatusBar()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 38347
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 38348
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public showClearForCaption()Z
    .locals 1

    .line 38471
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
