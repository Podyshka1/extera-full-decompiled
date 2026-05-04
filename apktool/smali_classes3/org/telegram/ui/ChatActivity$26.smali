.class Lorg/telegram/ui/ChatActivity$26;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scrollUp:Z

.field private final scrollValue:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private totalDy:F


# direct methods
.method public static synthetic $r8$lambda$AG9fAsrbH0HuDeUjZs1HhW-8eY4(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckBotMessageHint(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lCbSKfZH-Vk7VdrHeYaGzRCHde4(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckSavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 6891
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 6893
    iput p1, p0, Lorg/telegram/ui/ChatActivity$26;->totalDy:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 6895
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$26;->scrollValue:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 9

    const/16 p1, 0x200

    .line 6912
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 6900
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6901
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v3

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v4

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintX(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintY(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    .line 6902
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpollHintCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 6904
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollingFloatingDate(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6905
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollingFloatingTopic(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6906
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollingChatListView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6907
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcheckTextureViewPosition(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6908
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mhideFloatingDateView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6909
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mhideFloatingTopicView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6910
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-nez p2, :cond_1

    .line 6911
    sput-boolean v2, Lorg/telegram/ui/ChatActivity;->scrolling:Z

    .line 6912
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6914
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->startSpoilers:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6915
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 6916
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->stopScrolling()V

    .line 6917
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V

    .line 6918
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateMergedVisibleBlurredPositionsAndSources(Lorg/telegram/ui/ChatActivity;I)V

    .line 6919
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollByTouch(Lorg/telegram/ui/ChatActivity;Z)V

    return-void

    .line 6921
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgroupEmojiPackHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgroupEmojiPackHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6922
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgroupEmojiPackHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 6924
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchOtherButton(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchOtherButton(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6925
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_4
    const/4 v3, 0x2

    if-ne p2, v3, :cond_5

    .line 6928
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputwasManualScroll(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6929
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollingChatListView(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_1

    :cond_5
    if-ne p2, v2, :cond_8

    .line 6931
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->hideKeyboardOnScroll:Z

    if-eqz p2, :cond_7

    .line 6932
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6933
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 6934
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 6935
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    .line 6938
    :cond_7
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpollHintCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 6939
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputwasManualScroll(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6940
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollingFloatingDate(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6941
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollingFloatingTopic(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6942
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcheckTextureViewPosition(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6943
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollingChatListView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6945
    :cond_8
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-nez p2, :cond_9

    .line 6946
    sput-boolean v1, Lorg/telegram/ui/ChatActivity;->scrolling:Z

    .line 6947
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6949
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopSpoilers:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6951
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectionReactionsOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectionReactionsOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 6952
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectionReactionsOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->setHiddenByScroll(Z)V

    :cond_a
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .line 6959
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6960
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-eqz v0, :cond_0

    .line 6961
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->updateBlurContent()V

    .line 6963
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListThanosEffect(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6964
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListThanosEffect(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/ThanosEffect;->scroll(II)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 6966
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/ChatActivity$26;->scrollUp:Z

    .line 6967
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eqz p3, :cond_3

    .line 6968
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollByTouch(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    if-ne v4, v1, :cond_b

    .line 6969
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforceNextPinnedMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-eqz v4, :cond_b

    .line 6970
    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$26;->scrollUp:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforceScrollToFirst(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 6972
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v4

    if-nez v4, :cond_b

    if-eq v2, v3, :cond_b

    .line 6973
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-lt v4, v2, :cond_9

    .line 6977
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 6978
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_6

    .line 6979
    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    goto :goto_2

    .line 6980
    :cond_6
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v7, :cond_7

    .line 6981
    check-cast v6, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 6984
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforceNextPinnedMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-ne v6, v7, :cond_8

    move v4, v1

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_9
    move v4, v0

    :goto_3
    if-nez v4, :cond_b

    if-eqz v5, :cond_b

    .line 6990
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforceNextPinnedMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 6991
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputforceNextPinnedMessageId(Lorg/telegram/ui/ChatActivity;I)V

    goto :goto_5

    .line 6971
    :cond_a
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputforceNextPinnedMessageId(Lorg/telegram/ui/ChatActivity;I)V

    .line 6996
    :cond_b
    :goto_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, v1, :cond_c

    .line 6997
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputforceScrollToFirst(Lorg/telegram/ui/ChatActivity;Z)V

    .line 6998
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwasManualScroll(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz p3, :cond_c

    .line 6999
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputwasManualScroll(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_c
    if-eqz p3, :cond_d

    .line 7003
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateMergedVisibleBlurredPositionsAndSources(Lorg/telegram/ui/ChatActivity;I)V

    .line 7004
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->invalidateBlur()V

    .line 7005
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mhideHints(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_d
    const p1, 0x7fffffff

    if-eqz p3, :cond_f

    .line 7007
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollingFloatingDate(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcurrentFloatingTopIsNotMessage(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 7008
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v4, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-eq v5, p1, :cond_e

    .line 7009
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mremoveSelectedMessageHighlight(Lorg/telegram/ui/ChatActivity;)V

    .line 7010
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V

    .line 7012
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowFloatingDateView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7014
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misAllChats(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz p3, :cond_11

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollingFloatingTopic(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcurrentFloatingTopIsNotMessage(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 7015
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v4, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-eq v5, p1, :cond_10

    .line 7016
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mremoveSelectedMessageHighlight(Lorg/telegram/ui/ChatActivity;)V

    .line 7017
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V

    .line 7019
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowFloatingTopicView(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7021
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckScrollForLoad(Lorg/telegram/ui/ChatActivity;Z)V

    if-eq v2, v3, :cond_14

    if-nez v2, :cond_12

    .line 7023
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforwardEndReached(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object p1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_12

    if-ltz p3, :cond_14

    .line 7025
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcanShowPagedownButton(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7026
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_6

    .line 7029
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsideControlsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->isButtonVisible(I)Z

    move-result p1

    const/4 v2, 0x0

    if-lez p3, :cond_13

    if-nez p1, :cond_14

    .line 7034
    iget p1, p0, Lorg/telegram/ui/ChatActivity$26;->totalDy:F

    int-to-float v3, p3

    add-float/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/ChatActivity$26;->totalDy:F

    .line 7035
    iget v3, p0, Lorg/telegram/ui/ChatActivity$26;->scrollValue:I

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_14

    .line 7036
    iput v2, p0, Lorg/telegram/ui/ChatActivity$26;->totalDy:F

    .line 7037
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcanShowPagedownButton(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7038
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7039
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpagedownButtonShowedByScroll(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_6

    .line 7043
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpagedownButtonShowedByScroll(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz p1, :cond_14

    .line 7044
    iget p1, p0, Lorg/telegram/ui/ChatActivity$26;->totalDy:F

    int-to-float v3, p3

    add-float/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/ChatActivity$26;->totalDy:F

    .line 7045
    iget v3, p0, Lorg/telegram/ui/ChatActivity$26;->scrollValue:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_14

    .line 7046
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcanShowPagedownButton(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7047
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonVisibility(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7048
    iput v2, p0, Lorg/telegram/ui/ChatActivity$26;->totalDy:F

    .line 7054
    :cond_14
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 7055
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onParentScrolled()V

    .line 7056
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onScrolled(I)V

    .line 7057
    invoke-static {p3}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->onScrolled(I)V

    .line 7058
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 7059
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    .line 7062
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckTranslation(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7064
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    if-eqz p1, :cond_17

    .line 7065
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 7066
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    goto :goto_7

    .line 7067
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHintShown(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 7068
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputlastScrollTime(Lorg/telegram/ui/ChatActivity;J)V

    .line 7069
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 7070
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity;)V

    invoke-static {v0, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 7073
    :cond_17
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 7074
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 7076
    :cond_18
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotMessageHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotMessageHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 7077
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotMessageHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    goto :goto_8

    .line 7079
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 7080
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity$26$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity;)V

    invoke-static {v0, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 7082
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 7083
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 7085
    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_1b

    .line 7086
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideHints()V

    .line 7088
    :cond_1b
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstarReactionsOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stars/StarReactionsOverlay;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 7089
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetstarReactionsOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stars/StarReactionsOverlay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1c
    return-void
.end method
