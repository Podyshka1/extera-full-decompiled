.class public Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityFragmentView"
.end annotation


# instance fields
.field backgroundColor:I

.field backgroundPaint:Landroid/graphics/Paint;

.field drawCaptionAfter:Ljava/util/ArrayList;

.field drawNamesAfter:Ljava/util/ArrayList;

.field drawReactionsAfter:Ljava/util/ArrayList;

.field drawTimeAfter:Ljava/util/ArrayList;

.field inputFieldHeight:I

.field lastHeight:I

.field lastWidth:I

.field private pressActionBar:Z

.field private pressTime:J

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private x:F

.field private y:F


# direct methods
.method public static synthetic $r8$lambda$_3P4477ikkiMUOlYnwRwqylOlNE()V
    .locals 1

    const/4 v0, 0x1

    .line 17508
    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrent(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yauNCAOrmsffrfYtM7O3DfSwAjM(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lambda$onMeasure$1(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNonNoveTranslation(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->setNonNoveTranslation(F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 0

    .line 17162
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 17163
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    const/4 p2, 0x0

    .line 17377
    iput p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    .line 17382
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    .line 17383
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    .line 17384
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    .line 17385
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawReactionsAfter:Ljava/util/ArrayList;

    .line 17164
    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;

    invoke-direct {p2, p0, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;Landroid/view/View;Lorg/telegram/ui/ChatActivity;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    return-void
.end method

.method private drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 11

    .line 17759
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 17760
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 17761
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 17762
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldDrawAlphaLayer()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17763
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v8, v7, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentMaxBottomInset()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetinputIslandHeightCurrent(Lorg/telegram/ui/ChatActivity;)F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1, v4, p2, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 17764
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x1

    .line 17765
    invoke-virtual {p3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v4, 0x0

    if-nez p4, :cond_2

    .line 17767
    invoke-virtual {p3, p1, v3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    :cond_1
    :goto_1
    move-object v7, p1

    move-object v5, p3

    goto/16 :goto_4

    :cond_2
    if-ne p4, p2, :cond_3

    .line 17769
    invoke-virtual {p3, p1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawNamesLayout(Landroid/graphics/Canvas;F)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-ne p4, v5, :cond_5

    .line 17771
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p4

    iget p4, p4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr p4, p2

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    move p2, v4

    :goto_2
    invoke-virtual {p3, p1, p2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCaptionLayout(Landroid/graphics/Canvas;ZF)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    if-ne p4, v5, :cond_7

    .line 17773
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p4

    iget p4, p4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr p4, p2

    if-nez p4, :cond_6

    goto :goto_3

    :cond_6
    move p2, v4

    .line 17774
    :goto_3
    invoke-virtual {p3, p1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawCommentLayout(Landroid/graphics/Canvas;F)V

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 17776
    invoke-virtual {p3, p1, v3, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawReactionsLayout(Landroid/graphics/Canvas;FLjava/lang/Integer;)V

    goto :goto_1

    :cond_7
    const/4 v3, 0x4

    if-ne p4, v3, :cond_1

    .line 17779
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p4

    if-eqz p4, :cond_8

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p4

    iget p4, p4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr p2, p4

    if-nez p2, :cond_8

    goto :goto_1

    .line 17781
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 17782
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result p4

    mul-float/2addr p2, p4

    const p4, 0x3e4ccccd    # 0.2f

    div-float v10, p2, p4

    .line 17784
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17785
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimProgressDirection(Lorg/telegram/ui/ChatActivity;)Z

    move-result p4

    invoke-virtual {p3, p1, p2, v10, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawScrimReaction(Landroid/graphics/Canvas;Ljava/lang/Integer;FZ)V

    .line 17786
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17788
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17790
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17791
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReactionOffset(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v9

    move-object v6, p0

    move-object v7, p1

    move-object v5, p3

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawScrimReactionPreview(Landroid/view/View;Landroid/graphics/Canvas;ILjava/lang/Integer;F)V

    .line 17792
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 17796
    :goto_4
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 17797
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private synthetic lambda$onMeasure$1(I)V
    .locals 2

    .line 18612
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollToOffsetOnRecreate(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private setNonNoveTranslation(F)V
    .locals 3

    .line 18752
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 18753
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$12500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 18754
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettagSelector(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 18755
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettagSelector(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SearchTagsList;->getCurrentHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 18757
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesSearchHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18758
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesSearchHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 18760
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18761
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 18763
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz p1, :cond_4

    .line 18764
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setTranslationY(F)V

    .line 18766
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->topicsTabs:Lorg/telegram/ui/Components/TopicsTabsView;

    if-eqz p1, :cond_5

    .line 18767
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 18769
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz p1, :cond_6

    .line 18770
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setTranslationY(F)V

    .line 18772
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 18773
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 18774
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcontentPanTranslation(Lorg/telegram/ui/ChatActivity;F)V

    .line 18775
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcontentPanTranslationT(Lorg/telegram/ui/ChatActivity;F)V

    .line 18776
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundTranslation(I)V

    .line 18777
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-eqz p1, :cond_7

    .line 18778
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->updateBlurContent()V

    .line 18780
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz p1, :cond_8

    .line 18781
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->onPanTranslationUpdate(F)V

    .line 18783
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 18784
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/BluredView;->drawable:Lorg/telegram/ui/Components/BlurBehindDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BlurBehindDrawable;->onPanTranslationUpdate(F)V

    .line 18786
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setFragmentPanTranslationOffset(I)V

    .line 18787
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 17452
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 17453
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/bots/BotCommandsMenuContainer;

    if-ne p1, p3, :cond_0

    .line 17454
    move-object p3, p1

    check-cast p3, Lorg/telegram/ui/bots/BotCommandsMenuContainer;

    .line 17455
    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetglassBackgroundDrawableFactory(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    move-result-object p2

    iget-object v0, p3, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredBackgroundColorProviderWhite(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProviderThemed;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p2

    .line 17456
    invoke-virtual {p3, p2}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->setBackgroundDrawable(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    .line 17458
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-ne p1, p3, :cond_1

    .line 17459
    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetglassBackgroundDrawableFactory(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->setBlurredBackgroundFactory(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v1, p0

    .line 17843
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkAnimation()V

    .line 17844
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 17845
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetinvalidateMessagesVisiblePart(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17846
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputinvalidateMessagesVisiblePart(Lorg/telegram/ui/ChatActivity;Z)V

    .line 17847
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ChatActivity;->updateMessagesVisiblePart(Z)V

    .line 17849
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v12, v12}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 17850
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdatePagedownButtonsPosition(Lorg/telegram/ui/ChatActivity;)V

    .line 17851
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscheduledOrNoSoundHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscheduledOrNoSoundHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17852
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscheduledOrNoSoundHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->updatePosition()V

    .line 17854
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscheduledHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscheduledHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17855
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscheduledHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->updatePosition()V

    .line 17858
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetswitchingFromTopics(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const v13, 0x3e4ccccd    # 0.2f

    const/high16 v14, 0x437f0000    # 255.0f

    if-eqz v0, :cond_4

    .line 17859
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetswitchingFromTopicsProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    mul-float/2addr v0, v14

    float-to-int v7, v0

    const/16 v8, 0x1f

    const/4 v3, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    .line 17860
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetswitchingFromTopicsProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v3, v13

    const v4, 0x3f4ccccd    # 0.8f

    add-float/2addr v3, v4

    .line 17861
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v2, v3, v3, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_0
    move v15, v0

    goto :goto_1

    :cond_4
    move-object/from16 v2, p1

    const/4 v0, -0x1

    goto :goto_0

    .line 17863
    :goto_1
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 17880
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimateSendingViews(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v12

    :goto_2
    const/4 v9, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-ge v3, v0, :cond_c

    .line 17881
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimateSendingViews(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 17882
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    if-eqz v5, :cond_b

    .line 17884
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 17885
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$9400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lorg/telegram/ui/Components/SearchTagsList;->getCurrentHeight()I

    move-result v7

    goto :goto_3

    :cond_5
    move v7, v12

    :goto_3
    add-int/2addr v6, v7

    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatSearchTabs;->getCurrentHeight()I

    move-result v7

    goto :goto_4

    :cond_6
    move v7, v12

    :goto_4
    add-int/2addr v6, v7

    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_7
    move v7, v12

    :goto_5
    add-int/2addr v6, v7

    goto :goto_6

    :cond_8
    move v6, v12

    :goto_6
    int-to-float v6, v6

    .line 17886
    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v7, v7, Lorg/telegram/ui/ChatActivity;->paddingTopHeight:F

    add-float/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v6, v7, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 17887
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    .line 17888
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->pointTmp2:[I

    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17889
    aget v7, v7, v8

    int-to-float v7, v7

    .line 17890
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iget v9, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->progress:F

    sub-float v16, v16, v9

    mul-float v8, v8, v16

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    .line 17891
    iget-object v8, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewVisible()F

    move-result v8

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 17892
    iget-boolean v8, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->fromPreview:Z

    if-nez v8, :cond_9

    .line 17893
    iget v8, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentX:F

    iget v9, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->y:F

    int-to-float v7, v7

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    add-float/2addr v7, v10

    iget v10, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->progress:F

    invoke-static {v9, v7, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    invoke-virtual {v2, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 17895
    :cond_9
    iget v8, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentX:F

    iget v9, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->y:F

    int-to-float v7, v7

    iget v10, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->progress:F

    invoke-static {v9, v7, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    invoke-virtual {v2, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17897
    :goto_7
    iget v7, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->currentScale:F

    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 17898
    iget-boolean v7, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->fromPreview:Z

    if-nez v7, :cond_a

    .line 17899
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17901
    :cond_a
    iget v5, v5, Lorg/telegram/messenger/MessageObject$SendAnimationData;->timeAlpha:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setTimeAlpha(F)V

    .line 17902
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Cells/BaseCell;->draw(Landroid/graphics/Canvas;)V

    .line 17903
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 17906
    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    .line 17907
    :cond_d
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 17908
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 17909
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmap(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 17910
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 17911
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapShader(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 17912
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v3, v14

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17913
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 17915
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float/2addr v2, v14

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    goto :goto_8

    :cond_f
    move/from16 v3, v16

    :goto_8
    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17916
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 17920
    :cond_10
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReactionAnimated(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 17921
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 17924
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/high16 v17, 0x41a00000    # 20.0f

    if-eqz v0, :cond_57

    .line 17925
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsideControlsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;

    move-result-object v2

    if-ne v0, v2, :cond_14

    .line 17926
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpg-float v0, v0, v16

    if-gez v0, :cond_13

    .line 17927
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float/2addr v2, v14

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float v3, v16, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17928
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_12
    :goto_a
    move/from16 v23, v9

    move/from16 v21, v14

    move-object v14, v1

    goto/16 :goto_2d

    :cond_13
    move-object/from16 v2, p1

    goto :goto_a

    .line 17930
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    const/4 v10, 0x2

    if-eqz v0, :cond_17

    .line 17931
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 17932
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpg-float v2, v2, v16

    if-gez v2, :cond_15

    .line 17933
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v6, v2

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float/2addr v2, v14

    float-to-int v7, v2

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_b

    :cond_15
    move-object/from16 v2, p1

    .line 17935
    :goto_b
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17936
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$9800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v4

    if-ne v3, v4, :cond_16

    .line 17937
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v3, v10

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v4, v3

    .line 17938
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetactionBarBackgroundPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 17940
    :cond_16
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 17941
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 17943
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpg-float v0, v0, v16

    if-gez v0, :cond_12

    .line 17944
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v3, v14

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    sub-float v4, v16, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17945
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_17
    move-object/from16 v2, p1

    .line 17948
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v3, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    add-float/2addr v0, v4

    iget v3, v3, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 17950
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_18

    .line 17951
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v3

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    .line 17956
    :goto_c
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v12

    move v7, v6

    :goto_d
    if-ge v6, v5, :cond_47

    .line 17958
    iget-object v11, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 17963
    instance-of v4, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_19

    .line 17964
    move-object v4, v11

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 17966
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v19

    .line 17967
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v20

    move/from16 v21, v14

    move-object/from16 v10, v19

    move-object/from16 v14, v20

    move/from16 v19, v13

    const/4 v13, 0x0

    goto :goto_f

    .line 17972
    :cond_19
    instance-of v4, v11, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_1a

    move-object v4, v11

    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    :goto_e
    move/from16 v19, v13

    move/from16 v21, v14

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object v13, v4

    const/4 v4, 0x0

    .line 17974
    :goto_f
    iget-object v12, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v12}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v12

    if-eq v11, v12, :cond_1b

    if-eqz v3, :cond_1c

    if-ne v3, v10, :cond_1c

    :cond_1b
    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v10

    cmpl-float v10, v10, v9

    if-nez v10, :cond_1d

    :cond_1c
    move v12, v0

    move-object v14, v1

    move-object/from16 v18, v3

    move/from16 v25, v5

    move/from16 v27, v6

    move/from16 v23, v9

    const/16 v31, 0x0

    goto/16 :goto_22

    :cond_1d
    if-nez v7, :cond_26

    if-eqz v4, :cond_26

    if-eqz v3, :cond_26

    .line 17977
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v10, :cond_26

    .line 17978
    invoke-virtual {v10, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNonAnimationTranslationX(Z)F

    move-result v7

    .line 17980
    iget-object v10, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget v8, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v7

    const/high16 v22, 0x41100000    # 9.0f

    iget v12, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetLeft:F

    add-float/2addr v8, v12

    .line 17981
    iget v12, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->top:I

    int-to-float v12, v12

    iget v9, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetTop:F

    add-float/2addr v12, v9

    .line 17982
    iget v9, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->right:I

    int-to-float v9, v9

    add-float/2addr v9, v7

    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetRight:F

    add-float/2addr v9, v7

    .line 17983
    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->bottom:I

    int-to-float v7, v7

    move/from16 v24, v0

    iget v0, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->offsetBottom:F

    add-float/2addr v7, v0

    .line 17985
    iget-boolean v0, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->backgroundChangeBounds:Z

    if-nez v0, :cond_1e

    .line 17986
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v12, v0

    .line 17987
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v7, v0

    .line 17990
    :cond_1e
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v10, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v0, v0

    sub-float/2addr v10, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v10, v0

    cmpg-float v0, v12, v10

    if-gez v0, :cond_1f

    .line 17991
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v10, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingVisibleOffset:I

    int-to-float v0, v0

    sub-float/2addr v10, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v12, v10, v0

    .line 17994
    :cond_1f
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v0, v10

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_20

    .line 17995
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v7, v0

    .line 17999
    :cond_20
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v0, :cond_23

    move/from16 v25, v0

    .line 18000
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 18001
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    move-object/from16 v28, v0

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v29

    cmp-long v0, v26, v29

    if-nez v0, :cond_21

    const/16 v26, 0x0

    goto :goto_11

    :cond_21
    const/16 v26, 0x1

    .line 18002
    :goto_11
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v0

    aget-object v0, v0, v26

    move-object/from16 v26, v4

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_22

    const/4 v10, 0x0

    goto :goto_12

    :cond_22
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v25

    move-object/from16 v4, v26

    goto :goto_10

    :cond_23
    move-object/from16 v26, v4

    const/4 v10, 0x1

    .line 18008
    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18009
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v4

    .line 18010
    invoke-virtual {v4}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentMaxBottomInset()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetinputIslandHeightCurrent(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    sub-float/2addr v0, v4

    .line 18012
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 18013
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MentionsContainerView;->clipBottom()F

    move-result v4

    goto :goto_13

    :cond_24
    const/4 v4, 0x0

    :goto_13
    sub-float/2addr v0, v4

    .line 18015
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v4

    if-eqz v4, :cond_25

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MentionsContainerView;->clipTop()F

    move-result v4

    goto :goto_14

    :cond_25
    const/4 v4, 0x0

    :goto_14
    add-float v4, v24, v4

    move/from16 v25, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    move/from16 v27, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 18016
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v2, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18017
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    float-to-int v4, v8

    float-to-int v5, v12

    float-to-int v8, v9

    float-to-int v7, v7

    move/from16 v23, v6

    move v6, v8

    iget-boolean v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedTop:Z

    iget-boolean v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;->pinnedBotton:Z

    move-object v0, v11

    const/4 v11, 0x0

    move-object/from16 v20, v0

    move-object/from16 v18, v3

    move/from16 v0, v23

    move-object/from16 v12, v26

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackground(Landroid/graphics/Canvas;IIIIZZZI)V

    .line 18018
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v9, 0x1

    goto :goto_15

    :cond_26
    move/from16 v24, v0

    move-object/from16 v18, v3

    move-object v12, v4

    move/from16 v25, v5

    move/from16 v27, v6

    move v0, v9

    move-object/from16 v20, v11

    const/high16 v22, 0x41100000    # 9.0f

    move v9, v7

    :goto_15
    if-eqz v12, :cond_27

    .line 18022
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->isAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 18023
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 18026
    :cond_27
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 18028
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 18029
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v5

    .line 18030
    invoke-virtual {v5}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentMaxBottomInset()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetinputIslandHeightCurrent(Lorg/telegram/ui/ChatActivity;)F

    move-result v5

    sub-float/2addr v4, v5

    .line 18032
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 18035
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 18036
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/MentionsContainerView;->clipTop()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 18037
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/MentionsContainerView;->clipBottom()F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_16

    :cond_28
    move v5, v0

    move v6, v5

    .line 18039
    :goto_16
    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_29

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCommandsMenuContainer:Lorg/telegram/ui/bots/BotCommandsMenuContainer;

    if-eqz v7, :cond_29

    .line 18040
    invoke-virtual {v7}, Lorg/telegram/ui/bots/BotCommandsMenuContainer;->clipBottom()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_29
    add-float v5, v24, v5

    sub-float/2addr v4, v6

    if-eqz v12, :cond_2b

    .line 18045
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v6, :cond_2a

    goto :goto_18

    :cond_2a
    :goto_17
    move/from16 v32, v5

    move v5, v3

    move/from16 v3, v32

    goto :goto_19

    .line 18046
    :cond_2b
    :goto_18
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 18047
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 18048
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 18049
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_17

    .line 18052
    :goto_19
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetSideMenuWidth(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 18054
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewTask(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2c

    .line 18055
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewTask(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTodoIndex(I)I

    move-result v6

    .line 18056
    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonTop(I)F

    move-result v8

    add-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 18057
    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtonBottom(I)F

    move-result v6

    add-float/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_2c
    move v6, v4

    move v4, v3

    cmpg-float v10, v4, v6

    if-gez v10, :cond_34

    .line 18061
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v16

    if-eqz v3, :cond_2d

    .line 18062
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v3, v3, v21

    float-to-int v7, v3

    const/16 v8, 0x1f

    move v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move v11, v3

    move v3, v4

    move v8, v5

    move v4, v6

    goto :goto_1a

    :cond_2d
    move v11, v2

    move v3, v4

    move v8, v5

    move v4, v6

    move-object/from16 v2, p1

    .line 18064
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    :goto_1a
    if-eqz v12, :cond_2e

    const/4 v5, 0x1

    .line 18067
    invoke-virtual {v12, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    .line 18068
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setScrimReaction(Ljava/lang/Integer;)V

    goto :goto_1b

    :cond_2e
    const/4 v5, 0x1

    if-eqz v13, :cond_2f

    .line 18070
    invoke-virtual {v13, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->setInvalidatesParent(Z)V

    .line 18071
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->setScrimReaction(Ljava/lang/Integer;)V

    .line 18073
    :cond_2f
    :goto_1b
    invoke-virtual {v2, v11, v3, v8, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 18074
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v12, :cond_30

    if-nez v18, :cond_30

    .line 18075
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 18076
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18077
    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v5, 0x1

    .line 18078
    invoke-virtual {v12, v2, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 18079
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_30
    move-object/from16 v5, v20

    .line 18081
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v12, :cond_31

    .line 18082
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 18083
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18084
    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18085
    invoke-virtual {v12, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 18086
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_31
    if-eqz v13, :cond_32

    .line 18089
    invoke-virtual {v13, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 18092
    :cond_32
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    if-eqz v12, :cond_33

    const/4 v6, 0x0

    .line 18095
    invoke-virtual {v12, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidatesParent(Z)V

    const/4 v7, 0x0

    .line 18096
    invoke-virtual {v12, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setScrimReaction(Ljava/lang/Integer;)V

    goto :goto_1c

    :cond_33
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v13, :cond_35

    .line 18098
    invoke-virtual {v13, v6}, Lorg/telegram/ui/Cells/ChatActionCell;->setInvalidatesParent(Z)V

    .line 18099
    invoke-virtual {v13, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->setScrimReaction(Ljava/lang/Integer;)V

    goto :goto_1c

    :cond_34
    move v11, v2

    move v3, v4

    move v8, v5

    move v4, v6

    move-object/from16 v5, v20

    const/4 v7, 0x0

    move-object/from16 v2, p1

    :cond_35
    :goto_1c
    if-nez v14, :cond_36

    if-eqz v12, :cond_3f

    .line 18103
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-eqz v6, :cond_3f

    :cond_36
    if-eqz v14, :cond_37

    .line 18104
    iget-boolean v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v6, :cond_37

    iget-byte v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v6, :cond_3b

    iget-byte v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v6, :cond_3b

    :cond_37
    if-eqz v14, :cond_38

    .line 18105
    iget-boolean v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-eqz v6, :cond_39

    .line 18106
    :cond_38
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    if-eqz v14, :cond_3a

    .line 18108
    iget-byte v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v6, :cond_3b

    iget-byte v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-nez v6, :cond_3b

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasNameLayout()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 18109
    :cond_3a
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    if-eqz v14, :cond_3c

    .line 18112
    iget v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->captionFlag()I

    move-result v20

    and-int v6, v6, v20

    if-eqz v6, :cond_3d

    .line 18113
    :cond_3c
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    if-eqz v14, :cond_3e

    .line 18115
    iget v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v14, v6, 0x8

    if-eqz v14, :cond_3f

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3f

    .line 18116
    :cond_3e
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18119
    :cond_3f
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_44

    if-eqz v12, :cond_44

    if-nez v18, :cond_44

    .line 18120
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 18121
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 18122
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v13, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmap(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v6, v13

    .line 18123
    iget-object v13, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v13, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 18124
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapShader(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/BitmapShader;

    move-result-object v6

    iget-object v13, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 18125
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v6

    iget-object v13, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v13

    mul-float v13, v13, v21

    float-to-int v13, v13

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18126
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v14

    move/from16 v20, v3

    const/4 v3, 0x0

    move/from16 v22, v4

    const/4 v4, 0x0

    move/from16 v31, v20

    move-object/from16 v20, v5

    move v5, v6

    move v6, v13

    move/from16 v13, v31

    move-object/from16 v31, v7

    move-object v7, v14

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1d

    :cond_40
    move v13, v3

    move/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v31, v7

    .line 18128
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float v3, v3, v21

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18129
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v6, v2

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1d
    if-gez v10, :cond_43

    .line 18133
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    div-float v10, v2, v19

    .line 18135
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getAlpha()F

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    cmpg-float v3, v2, v16

    if-gez v3, :cond_41

    mul-float v2, v2, v21

    float-to-int v7, v2

    move v5, v8

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    move v3, v11

    move v4, v13

    move/from16 v6, v22

    .line 18137
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move v8, v5

    move v7, v6

    move v6, v4

    goto :goto_1e

    :cond_41
    move-object/from16 v2, p1

    move v6, v13

    move/from16 v7, v22

    .line 18139
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18141
    :goto_1e
    invoke-virtual {v2, v11, v6, v8, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 18142
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18143
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimProgressDirection(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    invoke-virtual {v12, v2, v3, v10, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawScrimReaction(Landroid/graphics/Canvas;Ljava/lang/Integer;FZ)V

    .line 18144
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 18146
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18147
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18148
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReactionOffset(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v23, v0

    move v5, v10

    move-object v0, v12

    move/from16 v12, v24

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawScrimReactionPreview(Landroid/view/View;Landroid/graphics/Canvas;ILjava/lang/Integer;F)V

    move-object v14, v1

    .line 18149
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_42
    move-object/from16 v2, p1

    goto/16 :goto_21

    :cond_43
    move/from16 v23, v0

    move/from16 v12, v24

    move-object/from16 v2, p1

    move-object v14, v1

    goto/16 :goto_21

    :cond_44
    move/from16 v23, v0

    move-object v14, v1

    move v6, v3

    move-object/from16 v20, v5

    move-object/from16 v31, v7

    move/from16 v12, v24

    move v7, v4

    .line 18151
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_42

    if-eqz v13, :cond_42

    .line 18152
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 18153
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 18154
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmap(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 18155
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 18156
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapShader(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 18157
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v21

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18158
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1f

    .line 18160
    :cond_45
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v21

    iget-object v2, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18161
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1f
    if-gez v10, :cond_42

    .line 18165
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float/2addr v0, v1

    div-float v10, v0, v19

    .line 18167
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getAlpha()F

    move-result v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v1, v0, v16

    if-gez v1, :cond_46

    mul-float v0, v0, v21

    float-to-int v5, v0

    move v4, v6

    const/16 v6, 0x1f

    move-object/from16 v0, p1

    move v2, v4

    move v4, v7

    move v3, v8

    move v1, v11

    .line 18169
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move v5, v3

    move v6, v4

    move v3, v1

    move v4, v2

    move-object v2, v0

    goto :goto_20

    :cond_46
    move-object/from16 v2, p1

    move v4, v6

    move v6, v7

    move v5, v8

    move v3, v11

    .line 18171
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18173
    :goto_20
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 18174
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18175
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimProgressDirection(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    invoke-virtual {v13, v2, v0, v10, v1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawScrimReaction(Landroid/graphics/Canvas;Ljava/lang/Integer;FZ)V

    .line 18176
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 18178
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18179
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18180
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReactionOffset(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v4

    move v5, v10

    move-object v0, v13

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/ChatActionCell;->drawScrimReactionPreview(Landroid/view/View;Landroid/graphics/Canvas;ILjava/lang/Integer;F)V

    .line 18181
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :goto_21
    move v7, v9

    :goto_22
    add-int/lit8 v6, v27, 0x1

    move v0, v12

    move-object v1, v14

    move-object/from16 v3, v18

    move/from16 v13, v19

    move/from16 v14, v21

    move/from16 v9, v23

    move/from16 v5, v25

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_47
    move v12, v0

    move-object/from16 v18, v3

    move/from16 v23, v9

    move/from16 v21, v14

    move-object v14, v1

    .line 18186
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_49

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v0, :cond_48

    .line 18189
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v7, 0x0

    invoke-direct {v14, v2, v12, v1, v7}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_48
    const/4 v7, 0x0

    .line 18191
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawTimeAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_24

    :cond_49
    const/4 v7, 0x0

    .line 18193
    :goto_24
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4b

    move v6, v7

    :goto_25
    if-ge v6, v0, :cond_4a

    .line 18196
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v5, 0x1

    invoke-direct {v14, v2, v12, v1, v5}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 18198
    :cond_4a
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawNamesAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18200
    :cond_4b
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    move v6, v7

    :goto_26
    if-ge v6, v0, :cond_4d

    .line 18203
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 18204
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v3

    if-nez v3, :cond_4c

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v3, :cond_4c

    const/4 v3, 0x2

    goto :goto_27

    :cond_4c
    const/4 v3, 0x2

    .line 18207
    invoke-direct {v14, v2, v12, v1, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    :goto_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 18209
    :cond_4d
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawCaptionAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18211
    :cond_4e
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_50

    move v6, v7

    :goto_28
    if-ge v6, v0, :cond_50

    .line 18214
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 18215
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v3

    if-nez v3, :cond_4f

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v3, :cond_4f

    goto :goto_29

    :cond_4f
    const/4 v3, 0x3

    .line 18218
    invoke-direct {v14, v2, v12, v1, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    :goto_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 18221
    :cond_50
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_52

    if-eqz v18, :cond_52

    .line 18222
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 18223
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 18224
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmap(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 18225
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 18226
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapShader(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 18227
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v21

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18228
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v2, p1

    goto :goto_2a

    .line 18230
    :cond_51
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v21

    iget-object v2, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18231
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v2, v0

    .line 18234
    :cond_52
    :goto_2a
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_55

    :goto_2b
    if-ge v7, v0, :cond_54

    .line 18237
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 18238
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentPosition()Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object v3

    if-nez v3, :cond_53

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateBackgroundBoundsInner:Z

    if-nez v3, :cond_53

    goto :goto_2c

    :cond_53
    const/4 v3, 0x4

    .line 18241
    invoke-direct {v14, v2, v12, v1, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChildElement(Landroid/graphics/Canvas;FLorg/telegram/ui/Cells/ChatMessageCell;I)V

    :goto_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 18243
    :cond_54
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawReactionsAfter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18247
    :cond_55
    :goto_2d
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewReaction(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_58

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpg-float v0, v0, v16

    if-gez v0, :cond_58

    .line 18248
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 18249
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 18250
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmap(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 18251
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 18252
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapShader(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurMatrix(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 18253
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v21

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18254
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimBlurBitmapPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v2, p1

    goto :goto_2e

    .line 18256
    :cond_56
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaintAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    mul-float v1, v1, v21

    iget-object v2, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimViewAlpha(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    sub-float v16, v16, v2

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18257
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimPaint(Lorg/telegram/ui/ChatActivity;)Landroid/graphics/Paint;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v2, v0

    goto :goto_2e

    :cond_57
    move-object/from16 v2, p1

    move/from16 v23, v9

    move/from16 v21, v14

    move-object v14, v1

    .line 18262
    :cond_58
    :goto_2e
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_59

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 18263
    :cond_59
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 18264
    :cond_5a
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsideControlsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18266
    :cond_5b
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 18267
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18269
    :cond_5c
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingTopicSeparator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TopicSeparator$Cell;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingTopicSeparator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TopicSeparator$Cell;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 18270
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingTopicSeparator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TopicSeparator$Cell;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18272
    :cond_5d
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    if-eqz v0, :cond_5e

    .line 18273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18275
    :cond_5e
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 18276
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18278
    :cond_5f
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgifHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 18279
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgifHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18281
    :cond_60
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemojiHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 18282
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemojiHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18284
    :cond_61
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_62

    .line 18285
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18287
    :cond_62
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopUndoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopUndoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_63

    .line 18288
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopUndoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18290
    :cond_63
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_64

    .line 18291
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18293
    :cond_64
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_65

    .line 18294
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18296
    :cond_65
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotMessageHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotMessageHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_66

    .line 18297
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbotMessageHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-super {v14, v2, v0, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 18299
    :cond_66
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_67

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->birthdayHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_67

    .line 18300
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18301
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->birthdayHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v3, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->birthdayHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18302
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->birthdayHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 18303
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 18307
    :cond_67
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfixedKeyboardHeight(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-lez v0, :cond_6a

    iget v0, v14, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 18308
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 18309
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_68

    .line 18310
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    .line 18312
    :cond_68
    iget v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundColor:I

    if-eq v1, v0, :cond_69

    .line 18313
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    iput v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18315
    :cond_69
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfixedKeyboardHeight(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object/from16 v32, v2

    move v2, v0

    move-object/from16 v0, v32

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v2, v0

    .line 18317
    :cond_6a
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->needDrawBottomPanel()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misBottomButtonHidden(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 18319
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;->getInputBubbleTop()F

    move-result v0

    float-to-int v0, v0

    .line 18320
    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;->getInputBubbleBottom()F

    move-result v1

    float-to-int v1, v1

    .line 18322
    iget-object v3, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    if-nez v3, :cond_6b

    move/from16 v9, v23

    goto :goto_2f

    :cond_6b
    iget-object v3, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingBottomOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v9

    :goto_2f
    iget-object v3, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v9, v3

    float-to-int v3, v9

    sub-int/2addr v0, v3

    .line 18323
    iget-object v3, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v3

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lorg/telegram/ui/ChatPullingDownDrawable;->drawBottomPanel(Landroid/graphics/Canvas;III)V

    .line 18325
    :cond_6c
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 18326
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    mul-float v0, v0, v21

    float-to-int v5, v0

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v2, v0

    .line 18327
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateToActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 18328
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 18331
    :cond_6d
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->draw(Landroid/graphics/Canvas;)V

    if-ltz v15, :cond_6e

    .line 18334
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 18336
    :cond_6e
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetswitchingFromTopics(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 18337
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 18338
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18339
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetswitchingFromTopicsProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    mul-float v0, v0, v21

    float-to-int v5, v0

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object v2, v0

    .line 18340
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 18341
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 18342
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    :cond_6f
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 18799
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18800
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return v2

    .line 18803
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    .line 18804
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyCloseImageView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v2

    .line 18807
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 17519
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInBubbleMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 17522
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    goto :goto_2

    .line 17520
    :cond_1
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    goto :goto_1

    .line 17524
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v5

    if-ne v3, v5, :cond_4

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5

    :cond_4
    return v4

    .line 17528
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputlastTouchY(Lorg/telegram/ui/ChatActivity;F)V

    .line 17529
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v2

    .line 17530
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 17531
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v5

    .line 17534
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 17537
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->checkOnTap(Landroid/view/MotionEvent;)Z

    move-result v3

    const/4 v6, 0x3

    if-eqz v3, :cond_7

    .line 17538
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 17542
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 17543
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchingHashtag(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethashtagHistoryView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HashtagHistoryView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HashtagHistoryView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_8

    .line 17544
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 17545
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ViewPagerFixed;->isTouch()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 17546
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_3

    .line 17549
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ViewPagerFixed;->resetTouch()V

    :cond_9
    move v3, v4

    .line 17553
    :cond_a
    :goto_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_b

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 17554
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 17555
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 17556
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 17557
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_c
    return v5

    .line 17563
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinchToZoomHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 17564
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinchToZoomHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/PinchToZoomHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 17567
    :cond_e
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->hasVisibleInstance()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 17568
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/AvatarPreviewer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v5

    .line 17572
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/ChatActivity;->allowExpandPreviewByClick:Z

    if-eqz v2, :cond_1d

    .line 17573
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-wide/16 v7, -0x1

    if-nez v2, :cond_17

    const/4 v2, 0x2

    .line 17575
    new-array v9, v2, [I

    .line 17576
    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17577
    new-array v10, v2, [I

    .line 17579
    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsideControlsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;

    move-result-object v11

    if-eqz v11, :cond_13

    move v11, v4

    :goto_4
    if-ge v11, v6, :cond_13

    if-nez v11, :cond_10

    move v12, v5

    goto :goto_5

    :cond_10
    if-ne v11, v5, :cond_11

    move v12, v2

    goto :goto_5

    :cond_11
    move v12, v6

    .line 17586
    :goto_5
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsideControlsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;

    move-result-object v13

    invoke-virtual {v13, v12, v10}, Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;->getButtonLocationInWindow(I[I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 17587
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    aget v13, v10, v4

    aget v14, v9, v4

    sub-int v15, v13, v14

    aget v16, v10, v5

    aget v17, v9, v5

    sub-int v2, v16, v17

    sub-int/2addr v13, v14

    const/high16 v14, 0x42600000    # 56.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v10, v5

    aget v16, v9, v5

    sub-int v14, v14, v16

    const/high16 v16, 0x42740000    # 61.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v14, v14, v16

    invoke-virtual {v12, v15, v2, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 17588
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v12, v2, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v5

    goto :goto_6

    :cond_12
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x2

    goto :goto_4

    :cond_13
    move v2, v4

    .line 17596
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v6, :cond_14

    .line 17597
    invoke-virtual {v6, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17598
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    aget v11, v10, v4

    aget v12, v9, v4

    sub-int v13, v11, v12

    aget v14, v10, v5

    aget v15, v9, v5

    sub-int/2addr v14, v15

    sub-int/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    aget v10, v10, v5

    aget v9, v9, v5

    sub-int/2addr v10, v9

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v9, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v10, v9

    invoke-virtual {v6, v13, v14, v11, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 17599
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_14

    move v6, v5

    goto :goto_7

    :cond_14
    move v6, v4

    :goto_7
    if-nez v2, :cond_16

    .line 17604
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->x:F

    .line 17605
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->y:F

    .line 17606
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    .line 17607
    iput-boolean v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressActionBar:Z

    .line 17608
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v2, :cond_15

    .line 17609
    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAvatarContainer;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :cond_15
    move v3, v5

    goto/16 :goto_9

    .line 17613
    :cond_16
    iput-wide v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    goto/16 :goto_9

    .line 17615
    :cond_17
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_1c

    .line 17616
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v2, :cond_18

    .line 17617
    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAvatarContainer;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 17619
    :cond_18
    iget-boolean v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressActionBar:Z

    if-nez v2, :cond_19

    iget v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->x:F

    iget v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->y:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-static {v2, v9, v10, v11}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v2

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v2, v2, v9

    if-gez v2, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    sub-long/2addr v9, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v11, v2

    cmp-long v2, v9, v11

    if-gtz v2, :cond_1b

    .line 17620
    :cond_19
    iget-boolean v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressActionBar:Z

    if-eqz v2, :cond_1a

    .line 17621
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    .line 17622
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    .line 17623
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_8

    .line 17625
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    .line 17627
    :goto_8
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 17629
    :cond_1b
    iput-wide v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    goto :goto_9

    .line 17630
    :cond_1c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_1d

    .line 17631
    iput-wide v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->pressTime:J

    .line 17635
    :cond_1d
    :goto_9
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v3, :cond_1e

    goto :goto_a

    :cond_1e
    return v4

    :cond_1f
    :goto_a
    return v5
.end method

.method public drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 7

    .line 17323
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p5, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p5}, Lorg/telegram/ui/ChatActivity;->access$7500(Lorg/telegram/ui/ChatActivity;)I

    move-result p5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {p5, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->checkBlurEnabled(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p5

    if-nez p5, :cond_1

    :cond_0
    move-object v2, p1

    goto :goto_2

    .line 17329
    :cond_1
    iget-object p5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p5, p5, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark()Z

    move-result p5

    if-nez p5, :cond_2

    const/16 p5, 0xd8

    goto :goto_0

    :cond_2
    const/16 p5, 0xb2

    .line 17334
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetglassBackgroundSourceFrostedRenderNode(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    neg-float v2, p2

    .line 17337
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17338
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v4, v0, p2

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float v6, v0, p2

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;->draw(Landroid/graphics/Canvas;FFFF)V

    .line 17344
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_3
    move-object v2, p1

    const/16 p5, 0xff

    .line 17349
    :goto_1
    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    .line 17350
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17351
    invoke-virtual {v2, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 17352
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 17324
    :goto_2
    invoke-virtual {v2, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 17651
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrimView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messageEnterTransitionContainer:Lorg/telegram/ui/MessageEnterTransitionContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/MessageEnterTransitionContainer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsideControlsButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivitySideControlsButtonsLayout;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingTopicSeparator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TopicSeparator$Cell;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    if-eq p2, v2, :cond_1d

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgifHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemojiHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eq p2, v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopUndoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    goto/16 :goto_8

    .line 17654
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 17657
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettoPullingDownTransition(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    if-ne p2, v0, :cond_3

    return v2

    .line 17660
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetswitchingFromTopics(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne p2, v0, :cond_4

    return v2

    .line 17663
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-ne p2, v0, :cond_5

    return v2

    :cond_5
    const v0, 0x4000003

    .line 17666
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 17668
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    .line 17669
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne p2, v0, :cond_7

    goto :goto_0

    .line 17671
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object v0

    if-ne p2, v0, :cond_7

    goto :goto_0

    :cond_7
    return v1

    .line 17676
    :cond_8
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BluredView;->fullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 17677
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    if-ne p2, v0, :cond_a

    :cond_9
    return v1

    .line 17683
    :cond_a
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 17685
    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    move v4, v2

    goto :goto_1

    :cond_c
    move v3, v1

    :cond_d
    move v4, v1

    .line 17686
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-ne p2, v5, :cond_12

    .line 17687
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17689
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_e

    .line 17690
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    goto :goto_2

    :cond_e
    move v2, v7

    .line 17692
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    neg-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_10

    .line 17693
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v0, v6, :cond_10

    .line 17694
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/ChatActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 17695
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 17696
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 17697
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17698
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 17699
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 17700
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize(Z)I

    move-result v4

    add-int/2addr v4, v0

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize(Z)I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual {v3, v0, v2, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17701
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_roundVideoShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17704
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    goto :goto_3

    .line 17706
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 17707
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 17708
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 17709
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 17710
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_11
    move p3, v1

    .line 17715
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 17717
    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v5

    if-ne p2, v5, :cond_13

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_13

    .line 17718
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-super {p0, p1, v5, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 17720
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    if-eqz v4, :cond_18

    .line 17721
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    if-ne p2, v4, :cond_18

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v0, v6, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 17722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17724
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_14

    .line 17725
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownAnimateProgress(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    mul-float/2addr v0, v4

    goto :goto_4

    :cond_14
    move v0, v7

    .line 17727
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v4

    neg-float v4, v4

    sub-float/2addr v4, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingBottomOffset(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    add-float/2addr v4, v0

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17728
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-super {p0, p1, v0, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 17729
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    if-eqz p3, :cond_17

    .line 17730
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17731
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr p4, v0

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v3, :cond_15

    .line 17733
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawRoundProgress(Landroid/graphics/Canvas;)V

    .line 17734
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17735
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_5

    .line 17737
    :cond_15
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOverlays(Landroid/graphics/Canvas;)V

    .line 17738
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->needDrawTime()Z

    move-result p3

    if-eqz p3, :cond_16

    .line 17739
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdrawLaterRoundProgressCell(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAlpha()F

    move-result p4

    invoke-virtual {p3, p1, p4, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawTime(Landroid/graphics/Canvas;FZ)V

    .line 17742
    :cond_16
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17744
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    move p3, v5

    .line 17747
    :goto_6
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    if-ne p2, p4, :cond_1c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 17748
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$9100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_1b

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTranslationY()F

    move-result p4

    float-to-int p4, p4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->actionBarSearchTags:Lorg/telegram/ui/Components/SearchTagsList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchTagsList;->getCurrentHeight()I

    move-result v0

    goto :goto_7

    :cond_19
    move v0, v1

    :goto_7
    add-int/2addr p4, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatSearchTabs;->getCurrentHeight()I

    move-result v1

    :cond_1a
    add-int/2addr v1, p4

    :cond_1b
    invoke-interface {p2, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_1c
    return p3

    :cond_1d
    :goto_8
    return v1
.end method

.method public drawList(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 7

    .line 17396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 17398
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->hasActiveEdgeEffects()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17399
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17400
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 17401
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 17402
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 17406
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17407
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 17408
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17409
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->drawChatBackgroundElements(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    const/4 v2, 0x0

    .line 17410
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 17411
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 17412
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v4, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mquickRejectChild(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 17416
    :cond_1
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_3

    .line 17417
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17418
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17419
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 17420
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInParent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 17421
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17422
    iget v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;->starsPriceTopPadding:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x1

    .line 17423
    invoke-virtual {v5, p1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawBackgroundInternal(Landroid/graphics/Canvas;Z)V

    .line 17424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17426
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17427
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6, p1, v4, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 17428
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasOutboundsContent()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17429
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17430
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17431
    invoke-virtual {v5, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 17432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 17434
    :cond_3
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v5, :cond_4

    .line 17435
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 17436
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6, p1, v4, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 17437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17438
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17439
    invoke-virtual {v5, p1}, Lorg/telegram/ui/Cells/ChatActionCell;->drawOutboundsContent(Landroid/graphics/Canvas;)V

    .line 17440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 17442
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v5

    invoke-virtual {v5, p1, v4, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 17445
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;->drawChatForegroundElements(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 17446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getBottomOffset()F
    .locals 1

    .line 17470
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getChatActivity()Lorg/telegram/ui/ChatActivity;
    .locals 1

    .line 17159
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method public getKeyboardHeight()I
    .locals 1

    .line 18632
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 18633
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    return v0
.end method

.method protected getListTranslationY()F
    .locals 1

    .line 17475
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method protected getNewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 18811
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 18812
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getNewDrawableMotion()Z
    .locals 1

    .line 18816
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->-$$Nest$fgetwallpaper(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18817
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getNewDrawableMotion()Z

    move-result v0

    return v0

    .line 18819
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->-$$Nest$fgetwallpaper(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->-$$Nest$fgetwallpaper(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollOffset()I
    .locals 1

    .line 17465
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public invalidateBlur()V
    .locals 0

    return-void
.end method

.method protected invalidateOptimized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isActionBarVisible()Z
    .locals 1

    .line 17755
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 17480
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 17481
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz v1, :cond_0

    .line 17482
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    goto :goto_0

    .line 17483
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSheet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17484
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->setResizableView(Landroid/widget/FrameLayout;)V

    .line 17486
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onAttach()V

    .line 17487
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAdjustPanLayoutHelper(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V

    .line 17488
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17489
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-wide v1, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 17490
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateTextureView(Lorg/telegram/ui/ChatActivity;Z)Landroid/view/TextureView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/ChatActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 17492
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17493
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->onAttach()V

    .line 17495
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 17500
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 17501
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    .line 17502
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17503
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpullingDownDrawable(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatPullingDownDrawable;->onDetach()V

    .line 17504
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpullingDownDrawable(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatPullingDownDrawable;)V

    .line 17506
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onDetachedFromWindow()V

    .line 17507
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const v0, 0x4000003

    .line 17640
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 17643
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BluredView;->fullyDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 17646
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 18638
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_21

    .line 18642
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 18643
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto/16 :goto_d

    .line 18646
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 18648
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 18649
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 18654
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const/16 v6, 0x33

    :cond_1
    and-int/lit8 v7, v6, 0x70

    const/4 v8, 0x7

    and-int/2addr v6, v8

    const/4 v9, 0x1

    if-eq v6, v9, :cond_3

    const/4 v9, 0x5

    if-eq v6, v9, :cond_2

    .line 18671
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    sub-int v6, p4, v4

    .line 18667
    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v6, v9

    goto :goto_2

    :cond_3
    sub-int v6, p4, p2

    sub-int/2addr v6, v4

    .line 18664
    div-int/lit8 v6, v6, 0x2

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :goto_2
    const/16 v9, 0x10

    if-eq v7, v9, :cond_6

    const/16 v9, 0x30

    if-eq v7, v9, :cond_5

    const/16 v9, 0x50

    if-eq v7, v9, :cond_4

    .line 18688
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_4
    sub-int v7, p5, p3

    sub-int/2addr v7, v5

    .line 18685
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int v3, v7, v3

    goto :goto_4

    .line 18676
    :cond_5
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v3, v7

    .line 18677
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$11600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    if-eq v2, v7, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    .line 18678
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_4

    :cond_6
    sub-int v7, p5, p3

    sub-int/2addr v7, v5

    .line 18682
    div-int/lit8 v7, v7, 0x2

    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 18691
    :cond_7
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v7

    if-eq v2, v7, :cond_1a

    iget-object v7, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-eq v2, v7, :cond_1a

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v7

    if-eq v2, v7, :cond_1a

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v7

    if-eq v2, v7, :cond_1a

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;->getFadeView()Landroid/view/View;

    move-result-object v7

    if-ne v2, v7, :cond_8

    goto/16 :goto_9

    .line 18693
    :cond_8
    instance-of v7, v2, Lorg/telegram/ui/Components/HintView;

    if-nez v7, :cond_1a

    instance-of v7, v2, Lorg/telegram/ui/Components/ChecksHintView;

    if-eqz v7, :cond_9

    goto/16 :goto_9

    .line 18695
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-ne v2, v7, :cond_b

    .line 18696
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    goto :goto_5

    :cond_a
    move v7, v0

    :goto_5
    add-int/2addr v3, v7

    goto/16 :goto_c

    .line 18697
    :cond_b
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 18698
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    .line 18701
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    goto/16 :goto_c

    .line 18699
    :cond_d
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v3, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_5

    .line 18703
    :cond_e
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v9, 0x40e00000    # 7.0f

    if-eqz v7, :cond_f

    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordCircleOrControlsView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 18704
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentMaxBottomInset()I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    const/high16 v7, 0x40400000    # 3.0f

    .line 18705
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    goto/16 :goto_c

    .line 18706
    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemojiButtonRed(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v7

    if-ne v2, v7, :cond_10

    .line 18707
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentMaxBottomInset()I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    :goto_7
    add-int/2addr v7, v8

    :goto_8
    sub-int/2addr v3, v7

    goto/16 :goto_c

    .line 18708
    :cond_10
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v7, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v9, :cond_11

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-ne v2, v9, :cond_11

    .line 18709
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentMaxBottomInset()I

    move-result v7

    const/high16 v8, 0x41100000    # 9.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_7

    .line 18710
    :cond_11
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgifHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v7

    if-eq v2, v7, :cond_1e

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvoiceHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v7

    if-eq v2, v7, :cond_1e

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmediaBanTooltip(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v7

    if-eq v2, v7, :cond_1e

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemojiHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v7

    if-ne v2, v7, :cond_12

    goto/16 :goto_b

    .line 18712
    :cond_12
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v7

    if-eq v2, v7, :cond_1d

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListThanosEffect(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v7

    if-eq v2, v7, :cond_1d

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v7

    if-eq v2, v7, :cond_1d

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingTopicSeparator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/TopicSeparator$Cell;

    move-result-object v7

    if-eq v2, v7, :cond_1d

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetinfoTopView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Cells/ChatActionCell;

    move-result-object v7

    if-ne v2, v7, :cond_13

    goto/16 :goto_a

    .line 18714
    :cond_13
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-ne v2, v7, :cond_14

    .line 18715
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v7

    if-eqz v7, :cond_1f

    const/high16 v7, 0x42400000    # 48.0f

    .line 18716
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_8

    .line 18718
    :cond_14
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    if-ne v2, v7, :cond_15

    .line 18719
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    goto/16 :goto_8

    .line 18720
    :cond_15
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoPlayerContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-ne v2, v7, :cond_16

    .line 18721
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto/16 :goto_c

    .line 18722
    :cond_16
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, v7, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-eq v2, v9, :cond_1a

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetoverlayView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v7

    if-eq v2, v7, :cond_1a

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetanimatingImageView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v7

    if-ne v2, v7, :cond_17

    goto :goto_9

    .line 18724
    :cond_17
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v7

    if-ne v2, v7, :cond_18

    .line 18725
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v7, v7, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    goto/16 :goto_8

    .line 18726
    :cond_18
    instance-of v7, v2, Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz v7, :cond_19

    .line 18727
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_c

    .line 18728
    :cond_19
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v7

    if-ne v2, v7, :cond_1b

    :cond_1a
    :goto_9
    move v3, v0

    goto :goto_c

    .line 18730
    :cond_1b
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-ne v2, v7, :cond_1f

    .line 18731
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v9, v7, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz v9, :cond_1f

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 18732
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    if-eq v7, v8, :cond_1c

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcontentPaddingTop(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    goto/16 :goto_5

    :cond_1c
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$12400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto/16 :goto_5

    .line 18713
    :cond_1d
    :goto_a
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v8, v7, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListViewPaddingsAnimator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->getCurrentAdditionalHeight()I

    move-result v7

    add-int/2addr v8, v7

    sub-int/2addr v3, v8

    goto :goto_c

    .line 18711
    :cond_1e
    :goto_b
    iget v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    goto/16 :goto_8

    :cond_1f
    :goto_c
    add-int/2addr v4, v6

    add-int/2addr v5, v3

    .line 18735
    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_20
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 18738
    :cond_21
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 18739
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 18740
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 18742
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_22

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->allowDrawContent:Z

    if-nez p1, :cond_22

    .line 18743
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 18746
    :cond_22
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 18748
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckUi_topFade(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 18352
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetinvalidateBlurredSourcesView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/utils/OnPostDrawView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/OnPostDrawView;->bringToFrontIfNeeded()V

    .line 18355
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 18356
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 18358
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnavbarContentSourceWallpaper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;->getSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    if-eqz v1, :cond_0

    .line 18359
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnavbarContentSourceWallpaper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;->getSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;

    .line 18360
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v6, v7, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceBitmap;->setParentSize(III)V

    .line 18362
    :cond_0
    iget v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lastWidth:I

    const/16 v8, 0x8

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v1, v6, :cond_f

    .line 18363
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputglobalIgnoreLayout(Lorg/telegram/ui/ChatActivity;Z)V

    move/from16 v2, p1

    .line 18364
    iput v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lastWidth:I

    .line 18365
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v3, :cond_2

    .line 18366
    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    .line 18367
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v3, v4, v11, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    const/high16 v3, 0x43180000    # 152.0f

    .line 18368
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v6, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    if-le v3, v1, :cond_1

    .line 18369
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowAudioCallAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    xor-int/2addr v3, v10

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_0

    .line 18371
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_0

    .line 18376
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;Z)V

    .line 18378
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/high16 v3, 0x42200000    # 40.0f

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowAudioCallAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 18383
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 18384
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .line 18379
    :cond_4
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 18380
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    const/high16 v3, 0x42c00000    # 96.0f

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18387
    :cond_6
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/16 v3, 0x28

    if-eqz v1, :cond_8

    .line 18388
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 18389
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 18391
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 18392
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_4

    .line 18395
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 18396
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 18398
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 18399
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 18402
    :cond_a
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaudioCallIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 18403
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaudioCallIconItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowAudioCallAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowSearchAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v11

    goto :goto_5

    :cond_b
    move v3, v8

    :goto_5
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 18405
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 18406
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    .line 18407
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetshowAudioCallAsIcon(Lorg/telegram/ui/ChatActivity;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_d

    .line 18408
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_6

    :cond_d
    if-eqz v1, :cond_e

    .line 18409
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->phone_calls_available:Z

    if-eqz v1, :cond_e

    .line 18410
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetheaderItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(IZ)V

    .line 18413
    :cond_e
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputglobalIgnoreLayout(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_7

    :cond_f
    move/from16 v2, p1

    .line 18416
    :goto_7
    invoke-virtual {v0, v6, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 18417
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v12, v7, v1

    .line 18419
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->webBotTitle:Landroid/widget/TextView;

    const/4 v13, 0x2

    const/high16 v14, 0x41a00000    # 20.0f

    if-eqz v1, :cond_11

    .line 18420
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 18421
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->webBotTitle:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v13, :cond_10

    const/high16 v3, 0x41900000    # 18.0f

    goto :goto_8

    :cond_10
    move v3, v14

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 18423
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 18424
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 18425
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    sub-int/2addr v12, v15

    .line 18428
    :cond_12
    iget v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    add-int/2addr v1, v2

    .line 18429
    iget v2, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-lt v2, v3, :cond_13

    move v2, v10

    goto :goto_9

    :cond_13
    move v2, v11

    .line 18430
    :goto_9
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lastHeight:I

    if-eq v3, v7, :cond_14

    .line 18431
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    .line 18433
    :cond_14
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->getKeyboardHeight()I

    move-result v3

    .line 18434
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfixedKeyboardHeight(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-lez v4, :cond_15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-gt v3, v4, :cond_15

    .line 18435
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfixedKeyboardHeight(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;I)V

    goto :goto_b

    .line 18437
    :cond_15
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-gt v3, v4, :cond_17

    .line 18438
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v5

    goto :goto_a

    :cond_16
    move v5, v11

    :goto_a
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;I)V

    goto :goto_b

    .line 18440
    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;I)V

    .line 18443
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setEmojiKeyboardHeight(I)V

    .line 18445
    iget v4, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-lt v4, v5, :cond_18

    move v4, v10

    goto :goto_c

    :cond_18
    move v4, v11

    .line 18447
    :goto_c
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v5

    if-eqz v5, :cond_1c

    if-eq v2, v4, :cond_1c

    move v2, v11

    .line 18448
    :goto_d
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1c

    .line 18449
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move/from16 v16, v9

    .line 18450
    instance-of v9, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v9, :cond_1b

    .line 18451
    move-object v9, v5

    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 18452
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    .line 18453
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v17

    if-eqz v17, :cond_1b

    move/from16 v17, v13

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 18454
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-ltz v5, :cond_1a

    .line 18456
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    move/from16 v18, v14

    iget v14, v13, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    sub-float/2addr v9, v14

    iget v14, v13, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    int-to-float v14, v14

    sub-float/2addr v9, v14

    iget v14, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    add-int/2addr v14, v13

    sub-int/2addr v14, v1

    int-to-float v1, v14

    add-float/2addr v9, v1

    if-eqz v4, :cond_19

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    goto :goto_e

    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize(Z)I

    move-result v1

    :goto_e
    int-to-float v1, v1

    sub-float/2addr v9, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v2, v5, v1, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    .line 18457
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 18458
    iget-object v1, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->delayAnimation()V

    goto :goto_11

    :cond_1a
    :goto_f
    move/from16 v18, v14

    goto :goto_10

    :cond_1b
    move/from16 v17, v13

    goto :goto_f

    :goto_10
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v16

    move/from16 v13, v17

    move/from16 v14, v18

    goto/16 :goto_d

    :cond_1c
    move/from16 v16, v9

    move/from16 v17, v13

    move/from16 v18, v14

    .line 18468
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->runEmojiPanelAnimation()V

    .line 18471
    :goto_11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 18472
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    move v13, v2

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 18474
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misBottomButtonHidden(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$11000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz v2, :cond_1d

    goto :goto_12

    .line 18477
    :cond_1d
    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    goto :goto_13

    .line 18475
    :cond_1e
    :goto_12
    iput v11, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    .line 18480
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iput v11, v1, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    .line 18481
    iput v11, v1, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    .line 18482
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v2, :cond_1f

    .line 18483
    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v1

    if-eqz v1, :cond_1f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1f

    .line 18484
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetrecommendedAdditionalSizeY(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    add-int/2addr v2, v15

    iput v2, v1, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    .line 18485
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetrecommendedAdditionalSizeY(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    :cond_1f
    move v14, v11

    :goto_14
    const/high16 v1, 0x40000000    # 2.0f

    if-ge v14, v9, :cond_3e

    .line 18489
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 18491
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v8, :cond_3d

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eq v2, v4, :cond_3d

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    if-ne v2, v3, :cond_20

    goto/16 :goto_1d

    .line 18494
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->backgroundView:Landroid/view/View;

    if-ne v2, v3, :cond_21

    .line 18495
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18496
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18497
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18498
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetblurredView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BluredView;

    move-result-object v3

    if-ne v2, v3, :cond_22

    .line 18500
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18501
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18502
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18503
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    if-eq v2, v3, :cond_3c

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListThanosEffect(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v3

    if-ne v2, v3, :cond_23

    goto/16 :goto_1c

    .line 18509
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne v2, v3, :cond_26

    .line 18510
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18511
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    sub-int v5, v12, v5

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v8

    if-eqz v8, :cond_24

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_15

    :cond_24
    move v8, v11

    :goto_15
    sub-int/2addr v5, v8

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isTopViewVisible()Z

    move-result v8

    if-eqz v8, :cond_25

    const/16 v8, 0x30

    goto :goto_16

    :cond_25
    move v8, v11

    :goto_16
    add-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18512
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18513
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    if-ne v2, v4, :cond_27

    .line 18514
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18515
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18516
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v4, Lorg/telegram/ui/ChatActivity;->instantCameraView:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentMaxBottomInset()I

    move-result v4

    const/high16 v19, 0x41400000    # 12.0f

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetinputIslandHeightTarget(Lorg/telegram/ui/ChatActivity;)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 18517
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 18516
    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/InstantCameraView;->setInternalPadding(I)V

    .line 18519
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    :cond_27
    const/high16 v19, 0x41400000    # 12.0f

    .line 18520
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetoverlayView(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_28

    .line 18521
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18522
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v4

    .line 18523
    invoke-virtual {v4}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentMaxBottomInset()I

    move-result v4

    sub-int v4, v7, v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetinputIslandHeightTarget(Lorg/telegram/ui/ChatActivity;)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 18525
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 18522
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18526
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18527
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne v2, v3, :cond_29

    .line 18528
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18529
    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18530
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18531
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchListContainer(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne v2, v3, :cond_2b

    .line 18532
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18534
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v4, v4, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz v4, :cond_2a

    move v4, v11

    goto :goto_17

    :cond_2a
    move v4, v15

    :goto_17
    sub-int v4, v7, v4

    const/high16 v5, 0x42680000    # 58.0f

    .line 18535
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v5

    .line 18536
    invoke-virtual {v5}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->getCurrentNavigationBarInset()I

    move-result v5

    sub-int/2addr v4, v5

    .line 18533
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18538
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18539
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 18540
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getPopupViewHeight(Landroid/view/View;)I

    move-result v3

    .line 18541
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$11300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    const/high16 v5, 0x43af0000    # 350.0f

    if-eqz v4, :cond_2d

    .line 18542
    iget v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    sub-int v4, v12, v4

    add-int/2addr v4, v15

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v4, v8

    if-gez v3, :cond_2c

    .line 18544
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 18546
    :cond_2c
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18547
    :cond_2d
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v4, :cond_2f

    .line 18548
    iget v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->inputFieldHeight:I

    sub-int v4, v12, v4

    add-int/2addr v4, v15

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v4, v8

    if-gez v3, :cond_2e

    .line 18550
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 18552
    :cond_2e
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18554
    :cond_2f
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18556
    :cond_30
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v3

    if-ne v2, v3, :cond_32

    .line 18557
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 18558
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBannedInline()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 18559
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v3, -0x80000000

    invoke-static {v12, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18561
    :cond_31
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/MentionsContainerView;->setIgnoreLayout(Z)V

    .line 18562
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 18563
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 18564
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmentionContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/MentionsContainerView;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/MentionsContainerView;->setIgnoreLayout(Z)V

    .line 18565
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18567
    :cond_32
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v3

    if-ne v2, v3, :cond_34

    .line 18568
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18569
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    add-int/2addr v4, v12

    .line 18570
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-le v13, v5, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v5, :cond_33

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v8, v5, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-nez v8, :cond_33

    add-int/2addr v4, v13

    .line 18572
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v5

    invoke-virtual {v5, v13}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setKeyboardSize(I)V

    goto :goto_18

    .line 18574
    :cond_33
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setKeyboardSize(I)V

    .line 18576
    :goto_18
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18577
    :cond_34
    instance-of v3, v2, Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz v3, :cond_35

    .line 18578
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18579
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v4, v7, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v4, v5

    .line 18580
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18581
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18582
    :cond_35
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethashtagHistoryView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HashtagHistoryView;

    move-result-object v3

    if-ne v2, v3, :cond_38

    .line 18583
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18584
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v5, v4, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz v5, :cond_36

    move v5, v11

    goto :goto_19

    :cond_36
    move v5, v15

    :goto_19
    sub-int v5, v7, v5

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->hashtagSearchTabs:Lorg/telegram/ui/Components/ChatSearchTabs;

    if-eqz v4, :cond_37

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_1a

    :cond_37
    move v4, v11

    :goto_1a
    sub-int/2addr v5, v4

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18585
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1d

    .line 18586
    :cond_38
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v3

    if-ne v2, v3, :cond_39

    .line 18587
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18588
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18589
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1d

    .line 18590
    :cond_39
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->topicsTabs:Lorg/telegram/ui/Components/TopicsTabsView;

    if-ne v2, v4, :cond_3b

    .line 18592
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3a

    .line 18593
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$11500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v7, v3

    goto :goto_1b

    :cond_3a
    move v3, v7

    .line 18595
    :goto_1b
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 18596
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18597
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1d

    :cond_3b
    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    move-object v1, v2

    move/from16 v2, p1

    .line 18599
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1d

    .line 18504
    :cond_3c
    :goto_1c
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 18505
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v4, Lorg/telegram/ui/ChatActivity;->blurredViewTopOffset:I

    add-int/2addr v5, v12

    iget v8, v4, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    add-int/2addr v5, v8

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListViewPaddingsAnimator(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->getCurrentAdditionalHeight()I

    move-result v4

    add-int/2addr v5, v4

    .line 18507
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 18506
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18508
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    :cond_3d
    :goto_1d
    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0x8

    goto/16 :goto_14

    .line 18602
    :cond_3e
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfixPaddingsInLayout(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 18603
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v10}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputglobalIgnoreLayout(Lorg/telegram/ui/ChatActivity;Z)V

    .line 18604
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 18605
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 18606
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputfixPaddingsInLayout(Lorg/telegram/ui/ChatActivity;Z)V

    .line 18607
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 18608
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputglobalIgnoreLayout(Lorg/telegram/ui/ChatActivity;Z)V

    .line 18610
    :cond_3f
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollToPositionOnRecreate(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    .line 18611
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetscrollToPositionOnRecreate(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    .line 18612
    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;I)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 18613
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollToPositionOnRecreate(Lorg/telegram/ui/ChatActivity;I)V

    .line 18616
    :cond_40
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateBulletinLayout(Lorg/telegram/ui/ChatActivity;)V

    .line 18617
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckInsets(Lorg/telegram/ui/ChatActivity;)V

    .line 18619
    iput v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->lastHeight:I

    return-void
.end method

.method public onUpdateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 17357
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onUpdateBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17358
    instance-of v0, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 17359
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setFastRenderAllowed()V

    .line 17362
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwallpaperBitmapProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->updateSourceFromBackgroundViewDrawable(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;

    move-result-object p1

    .line 17363
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetwallpaperBitmapProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/chat/WallpaperBitmapProvider;->getNavigationBarColor(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)I

    move-result v0

    .line 17364
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 17366
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputshouldHaveLightNavigationBarIcons(Lorg/telegram/ui/ChatActivity;Z)V

    .line 17368
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetnavbarContentSourceWallpaper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceWrapped;->setSource(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    .line 17369
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17370
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 17371
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;->getFadeView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 17373
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateAllGlassAttachedViews(Lorg/telegram/ui/ChatActivity;)V

    .line 17374
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7600(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 18624
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetglobalIgnoreLayout(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 18627
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 18792
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputcontentPaddingTop(Lorg/telegram/ui/ChatActivity;I)V

    .line 18793
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    .line 18794
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    return-void
.end method

.method public updateBlurContent()V
    .locals 0

    return-void
.end method
