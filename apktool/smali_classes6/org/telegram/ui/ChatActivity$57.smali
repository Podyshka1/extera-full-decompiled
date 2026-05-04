.class Lorg/telegram/ui/ChatActivity$57;
.super Lorg/telegram/ui/Components/TopicsTabsView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createTopicsTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$xjbXAis5JuFLahl0vsPnluEi7DE(Lorg/telegram/ui/ChatActivity$57;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$57;->lambda$updateSidemenuPosition$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 10049
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/TopicsTabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$updateSidemenuPosition$0(Landroid/view/View;)V
    .locals 3

    .line 10055
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    .line 10056
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 10057
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misAllChats(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isAllChats:Z

    .line 10058
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenued:Z

    .line 10059
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenuEnabled(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    .line 10060
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    if-eq v2, v1, :cond_0

    .line 10061
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isSideMenuEnabled:Z

    .line 10062
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 10063
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->relayout()V

    if-ltz p1, :cond_0

    .line 10065
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 10068
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->sideMenuAlpha:F

    .line 10069
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    .line 10070
    iget v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->sideMenuWidth:I

    if-eq v1, p1, :cond_5

    .line 10071
    iput p1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->sideMenuWidth:I

    .line 10072
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateTranslation()V

    .line 10073
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void

    .line 10075
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_2

    .line 10076
    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 10077
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misAllChats(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;->isAllChats:Z

    .line 10078
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenued:Z

    .line 10079
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenuEnabled(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;->isSideMenuEnabled:Z

    .line 10080
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuAlpha:F

    .line 10081
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    .line 10082
    iget v1, p1, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    if-eq v1, v0, :cond_5

    .line 10083
    iput v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;->sideMenuWidth:I

    .line 10084
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void

    .line 10086
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatUnreadCell;

    if-eqz v0, :cond_3

    .line 10087
    check-cast p1, Lorg/telegram/ui/Cells/ChatUnreadCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatUnreadCell;->getTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 10088
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/Cells/BotAskCell;

    if-eqz v0, :cond_4

    .line 10089
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 10090
    :cond_4
    instance-of v0, p1, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v0, :cond_5

    .line 10091
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method


# virtual methods
.method public updateSidemenuPosition()V
    .locals 5

    .line 10052
    invoke-super {p0}, Lorg/telegram/ui/Components/TopicsTabsView;->updateSidemenuPosition()V

    .line 10053
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 10054
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$57$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$57$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$57;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 10094
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatActivityTopPanelLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10095
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatActivityTopPanelLayout;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/telegram/ui/Components/ChatActivityTopPanelLayout;->setPadding(IIII)V

    .line 10097
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 10098
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 10100
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingTopicSeparator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TopicSeparator$Cell;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10101
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingTopicSeparator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TopicSeparator$Cell;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 10103
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10104
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 10106
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$57;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckUi_topFade(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
