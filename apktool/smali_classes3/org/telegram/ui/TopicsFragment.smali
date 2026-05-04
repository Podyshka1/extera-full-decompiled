.class public Lorg/telegram/ui/TopicsFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/ChatActivityInterface;
.implements Lorg/telegram/ui/RightSlidingDialogContainer$BaseFragmentWithFullscreen;
.implements Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TopicsFragment$Adapter;,
        Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;,
        Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;,
        Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;,
        Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;,
        Lorg/telegram/ui/TopicsFragment$Item;,
        Lorg/telegram/ui/TopicsFragment$TopicDialogCell;,
        Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;
    }
.end annotation


# static fields
.field private static settingsPreloaded:Ljava/util/HashSet;


# instance fields
.field adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

.field private addMemberSubMenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private additionFloatingButtonOffset:I

.field private additionNavigationBarHeight:I

.field private allowSwipeDuringCurrentTouch:Z

.field animateSearchWithScale:Z

.field animatedUpdateEnabled:Z

.field avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private blurredView:Landroid/view/View;

.field private boostGroupSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private bottomButtonType:I

.field private bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

.field private bottomOverlayContainer:Landroid/widget/FrameLayout;

.field private bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

.field private bottomPannelVisible:Z

.field canShowCreateTopic:Z

.field private canShowHiddenArchive:Z

.field private canShowProgress:Z

.field chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field final chatId:J

.field private closeReportSpam:Landroid/widget/ImageView;

.field private closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private createGroupCall:Z

.field private createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private deleteChatSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dialogChangeFinished:I

.field private dialogInsertFinished:I

.field private dialogRemoveFinished:I

.field dialogsActivity:Lorg/telegram/ui/DialogsActivity;

.field private disableActionBarScrolling:Z

.field private emptyView:Landroid/view/View;

.field private emptyViewContainer:Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

.field excludeTopics:Ljava/util/HashSet;

.field private finishDialogRightSlidingPreviewOnTransitionEnd:Z

.field floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

.field forumTopics:Ljava/util/ArrayList;

.field private forumTopicsListFrozen:Z

.field fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private fragmentContextViewWrapper:Landroid/widget/FrameLayout;

.field private frozenForumTopicsList:Ljava/util/ArrayList;

.field fullscreenView:Landroid/widget/FrameLayout;

.field private generalTopicViewMoving:Landroid/view/View;

.field private groupCall:Lorg/telegram/messenger/ChatObject$Call;

.field private hiddenCount:I

.field private hiddenShown:Z

.field private hideItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private final iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private iBlur3Invalidated:Z

.field private final iBlur3PositionActionBar:Landroid/graphics/RectF;

.field private final iBlur3PositionMainTabs:Landroid/graphics/RectF;

.field private final iBlur3Positions:Ljava/util/ArrayList;

.field private final iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private final iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private ignoreDiffUtil:Z

.field isSlideBackTransition:Z

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private itemTouchHelperCallback:Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

.field itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private joinRequested:Z

.field private lastCallCheckFromServer:Z

.field private lastItemsCount:I

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private loadingTopics:Z

.field private mainTabsHiddenByScroll:Z

.field private movingDialogFilters:Ljava/util/ArrayList;

.field private mute:Z

.field private muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private navigationBarHeight:I

.field private final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field onTopicSelectedListener:Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;

.field private openAnimationEnded:Z

.field private openVideoChat:Z

.field private final openedForBotShare:Z

.field private final openedForForward:Z

.field private final openedForQuote:Z

.field private final openedForReply:Z

.field private final openedForSelect:Z

.field private other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

.field private pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

.field private pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

.field private pullViewState:I

.field private readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

.field private removeFragmentOnTransitionEnd:Z

.field private reordering:Z

.field private reportSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private scrollToTop:Z

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private searchAnimationProgress:F

.field searchAnimator:Landroid/animation/ValueAnimator;

.field private searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

.field public searching:Z

.field private selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private selectedTopicForTablet:J

.field selectedTopics:Ljava/util/HashSet;

.field private showItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field slideBackTransitionAnimator:Landroid/animation/ValueAnimator;

.field slideFragmentProgress:F

.field private startArchivePullingTime:J

.field themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field private topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

.field private final topicsController:Lorg/telegram/messenger/TopicsController;

.field topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field transitionPadding:F

.field private unpinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private updateAnimated:Z

.field private voiceChatHash:Ljava/lang/String;

.field private waitingForScrollFinished:Z


# direct methods
.method public static synthetic $r8$lambda$272q3SXwKNRQtA9NRMe7LAZG53s(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->lambda$getThemeDescriptions$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$3HEjVLklPS63BqVBRPsXyDw9pBU(Lorg/telegram/ui/TopicsFragment;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$8(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3hADYURKmGsaj1VgxjVnztwHuKI(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$B7KHxTjmevBMrH8dW9uVkjGwo30(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B9FQdM7bbI9iAujI-rU2_EznkL8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2432
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$BrHvHnq7BmEIGbldD8hoo1lmIxA(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->blur3_InvalidateBlur()V

    return-void
.end method

.method public static synthetic $r8$lambda$FLNt20XBT5wm3vti4JCLvSVO00E()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$H0n3ZO88VfZ_zJIQr8WGc59V6u0(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->lambda$deleteTopics$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ij0rM5h6LJld1F_5Pav_4VVr2as(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JGPpkxN1txBS8ETaW0lh_41qWpM(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kxvj0xEzTLM4YyrRuYIwo6-K4sY(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/TopicsFragment;->lambda$deleteTopics$14(Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LnFKTZNApkRdGWhkO4XTEU9QW1s(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MXwTqoWw3S0usvcahEBucZHlex8(Lorg/telegram/ui/TopicsFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$animateToSearchView$20(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RD9DbEjnZAEdAn5HV1-ruKtXBqY(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$4(Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SnJqCnCfoHcYPoWcvYVZ0UzL7wc(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8HyV1v-FvHhMQENqRWLPI5KZsY(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$c-VOxkfMjviC8YN-LjP66tDoW3w(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cRB3lEIGoRu0KUkdbbs_MFgUupw(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$dYgE47UDgPxCErZaxP7fU_TZOpU(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1969
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$lyCk8bO38E_M6DPJizaxUUF9Dm0(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$17(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rUDzJ3-52vmAJIA2e4vfPt_Q8Jk(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$18(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$taKOJ91sKqT59Q3CAcec2U3bH80(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->lambda$joinToGroup$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$v-MJbkrrb773L3MXlYjlZy6BuV0(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$16(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w9MVWORz_4TzUrChZDlKAc2Tqug(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$joinToGroup$22(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wWeSoHYsQyXeZS4H6fQlvGs-140(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->lambda$createView$10(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wYoE1G7LsGQsL2XfXUkwYsnI-hk(Lorg/telegram/ui/TopicsFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$deleteTopics$13(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpRIVSDmh3Ej464yKLIN3Aswi8k(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->lambda$showChatPreview$19(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetboostsStatus(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomButtonType(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomOverlayContainer(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcanShowHiddenArchive(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->canShowHiddenArchive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogChangeFinished(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogChangeFinished:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogInsertFinished(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogInsertFinished:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogRemoveFinished(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->dialogRemoveFinished:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->emptyView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->emptyViewContainer:Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetforumTopicsListFrozen(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopicsListFrozen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfragmentContextViewWrapper(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfrozenForumTopicsList(Lorg/telegram/ui/TopicsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->frozenForumTopicsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->generalTopicViewMoving:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethiddenCount(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethiddenShown(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3Invalidated(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3Invalidated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemAnimator(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/telegram/ui/TopicsFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemTouchHelperCallback(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->itemTouchHelperCallback:Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastItemsCount(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->lastItemsCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmute(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->navigationBarHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetopenedForForward(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetother(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpullForegroundDrawable(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/PullForegroundDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpullViewState(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerListView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreordering(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAnimationProgress(Lorg/telegram/ui/TopicsFragment;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchContainer(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchItem(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchTabsView(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedTopicForTablet(Lorg/telegram/ui/TopicsFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetstartArchivePullingTime(Lorg/telegram/ui/TopicsFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->startArchivePullingTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettopPanelLayout(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopicsController(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/TopicsController;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwaitingForScrollFinished(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/TopicsFragment;->waitingForScrollFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputallowSwipeDuringCurrentTouch(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->allowSwipeDuringCurrentTouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcanShowHiddenArchive(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->canShowHiddenArchive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdisableActionBarScrolling(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->disableActionBarScrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputemptyView(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->emptyView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfinishDialogRightSlidingPreviewOnTransitionEnd(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->finishDialogRightSlidingPreviewOnTransitionEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgeneralTopicViewMoving(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->generalTopicViewMoving:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhiddenShown(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3Invalidated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastItemsCount(Lorg/telegram/ui/TopicsFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->lastItemsCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainTabsHiddenByScroll(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->mainTabsHiddenByScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpullViewState(Lorg/telegram/ui/TopicsFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollToTop(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartArchivePullingTime(Lorg/telegram/ui/TopicsFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/TopicsFragment;->startArchivePullingTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupdateAnimated(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$manimateToSearchView(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->animateToSearchView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->blur3_InvalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckForLoadMore(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_mainTabsVisible(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkUi_mainTabsVisible()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSelectedTopics(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->clearSelectedTopics()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteTopics(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideFloatingButton(Lorg/telegram/ui/TopicsFragment;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->hideFloatingButton(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mjoinToGroup(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->joinToGroup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDialogAnimationFinished(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->onDialogAnimationFinished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenProfile(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->openProfile(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowChatPreview(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateChatInfo(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCreateTopicButton(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSearchProgress(Lorg/telegram/ui/TopicsFragment;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->updateSearchProgress(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTopicsList(Lorg/telegram/ui/TopicsFragment;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 2714
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    .line 301
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->frozenForumTopicsList:Ljava/util/ArrayList;

    .line 166
    new-instance p1, Lorg/telegram/ui/TopicsFragment$Adapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/TopicsFragment$Adapter;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/ui/TopicsFragment-IA;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    const/4 p1, 0x0

    .line 170
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    .line 179
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 221
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    const/4 v2, 0x0

    .line 222
    iput v2, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    .line 230
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    .line 258
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    .line 277
    new-instance v2, Lorg/telegram/messenger/AnimationNotificationsLocker;

    sget v3, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>([I)V

    iput-object v2, p0, Lorg/telegram/ui/TopicsFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 286
    iput v2, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    .line 2453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/TopicsFragment;->movingDialogFilters:Ljava/util/ArrayList;

    .line 4262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3Positions:Ljava/util/ArrayList;

    .line 4263
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    .line 4264
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    .line 4265
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4266
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "chat_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    .line 303
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v5, "for_select"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    .line 304
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v5, "forward_to"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    .line 305
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v5, "bot_share_to"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/TopicsFragment;->openedForBotShare:Z

    .line 306
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v5, "quote"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/TopicsFragment;->openedForQuote:Z

    .line 307
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v5, "reply_to"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/TopicsFragment;->openedForReply:Z

    .line 308
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string/jumbo v5, "voicechat"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/TopicsFragment;->voiceChatHash:Ljava/lang/String;

    .line 309
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string/jumbo v5, "videochat"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/telegram/ui/TopicsFragment;->openVideoChat:Z

    .line 310
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    .line 311
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "topics_end_reached_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->canShowProgress:Z

    .line 313
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 314
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 315
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 316
    new-instance p1, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {p1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 317
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 318
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 319
    new-instance v0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    const/high16 p1, 0x40000

    .line 320
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    return-void

    .line 322
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 323
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 324
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 325
    new-instance v0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/messenger/NotificationsController;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/TopicsFragment;)I
    .locals 0

    .line 149
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 149
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private animateToSearchView(Z)V
    .locals 5

    .line 2146
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    .line 2147
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2148
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2149
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2151
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2152
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->createTabsView(ZI)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    .line 2153
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_1

    .line 2154
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2156
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/4 v3, -0x1

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2158
    :cond_2
    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v1

    const/4 v0, 0x1

    aput v3, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    .line 2159
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-static {v3, v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2160
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v3, :cond_4

    xor-int/lit8 v4, p1, 0x1

    .line 2161
    iput-boolean v4, v3, Lorg/telegram/ui/RightSlidingDialogContainer;->enabled:Z

    :cond_4
    if-nez p1, :cond_5

    .line 2163
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v2, v3, v2

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->animateSearchWithScale:Z

    .line 2164
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2165
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_6

    .line 2167
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2169
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 2170
    invoke-direct {p0, v1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    .line 2172
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$20;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/TopicsFragment$20;-><init>(Lorg/telegram/ui/TopicsFragment;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2187
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2188
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2189
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 2191
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private blur3_InvalidateBlur()V
    .locals 10

    .line 4270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 4274
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 4275
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getAnimatedHeightWithPadding(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 4277
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    :goto_0
    if-eqz v3, :cond_2

    .line 4278
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 4281
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/TopicsFragment;->navigationBarHeight:I

    sub-int/2addr v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x42600000    # 56.0f

    .line 4282
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v5, v6

    .line 4284
    iget-object v7, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    neg-int v8, v1

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    int-to-float v1, v3

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v8, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4285
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    int-to-float v3, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4286
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    const/high16 v3, 0x40000

    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 4288
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3Positions:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 4289
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_5
    :goto_4
    return-void
.end method

.method private checkForLoadMore()V
    .locals 3

    .line 2921
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2924
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 2925
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/TopicsFragment$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-lt v0, v1, :cond_2

    .line 2926
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    .line 2928
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkGroupCallJoin(Z)V
    .locals 12

    .line 333
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 334
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment;->voiceChatHash:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->openVideoChat:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, p0

    goto :goto_1

    .line 344
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lorg/telegram/ui/TopicsFragment;->createGroupCall:Z

    iget-object p1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v9

    const/4 v3, 0x0

    move-object v8, p0

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLjava/lang/Boolean;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    .line 345
    iput-object v11, v8, Lorg/telegram/ui/TopicsFragment;->voiceChatHash:Ljava/lang/String;

    .line 346
    iput-boolean v10, v8, Lorg/telegram/ui/TopicsFragment;->openVideoChat:Z

    return-void

    .line 337
    :goto_1
    iget-object v1, v8, Lorg/telegram/ui/TopicsFragment;->voiceChatHash:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-nez p1, :cond_2

    iget-object p1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 338
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget v1, Lorg/telegram/messenger/R$string;->LinkHashExpired:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 339
    iput-object v11, v8, Lorg/telegram/ui/TopicsFragment;->voiceChatHash:Ljava/lang/String;

    .line 341
    :cond_2
    iput-boolean v10, v8, Lorg/telegram/ui/TopicsFragment;->lastCallCheckFromServer:Z

    return-void
.end method

.method private checkLoading()V
    .locals 4

    .line 2130
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->isLoading(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    .line 2131
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v0, v0, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v0, v1, :cond_1

    .line 2132
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2134
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz v0, :cond_2

    .line 2135
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    .line 2137
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    return-void
.end method

.method private checkUi_mainTabsVisible()V
    .locals 2

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    .line 1643
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->mainTabsHiddenByScroll:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setChildMainTabsVisible(Z)V

    :cond_1
    return-void
.end method

.method private chekActionMode()V
    .locals 10

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2421
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 2423
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v1, :cond_1

    .line 2424
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2425
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->drawBlur:Z

    .line 2427
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v3, 0x12

    .line 2428
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 2429
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2430
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 2431
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x48

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2432
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2434
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2435
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->unpinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2436
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2437
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2438
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_archive_hide:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/messenger/R$string;->Hide:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->hideItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x8

    .line 2439
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2440
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_archive_show:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$string;->Show:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v0, v7, v1, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/TopicsFragment;->showItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2441
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2443
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v1, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2444
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    sget v2, Lorg/telegram/messenger/R$string;->MarkAsRead:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2445
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_topic_close:I

    sget v2, Lorg/telegram/messenger/R$string;->CloseTopic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 2446
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_topic_restart:I

    sget v2, Lorg/telegram/messenger/R$string;->RestartTopic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-void
.end method

.method private clearSelectedTopics()V
    .locals 1

    .line 2271
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2272
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 2273
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 2274
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->updateReordering()V

    return-void
.end method

.method private deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 9

    .line 1946
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1947
    const-string v1, "DeleteTopics"

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1948
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1949
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1950
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2, v4, v5, v7, v8}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    .line 1951
    sget v4, Lorg/telegram/messenger/R$string;->DeleteSelectedTopic:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1953
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->DeleteSelectedTopics:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1955
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, p1, v1, p2}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/TopicsFragment;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1969
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda19;

    invoke-direct {p2}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1970
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1971
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 1972
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 1974
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private static getTopicsOrChat(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Landroid/os/Bundle;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 8

    .line 358
    const-string v0, "chat_id"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    neg-long v0, v2

    .line 360
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->view_forum_as_messages:Z

    if-eqz v0, :cond_0

    .line 362
    new-instance p0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0

    .line 364
    :cond_0
    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p0

    if-nez p0, :cond_1

    .line 366
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 p0, 0x1

    invoke-direct {v5, p0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 368
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->view_forum_as_messages:Z

    if-eqz p0, :cond_2

    .line 369
    new-instance p0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0

    .line 372
    :cond_2
    new-instance p0, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static getTopicsOrChat(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/TopicsFragment;->getTopicsOrChat(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Landroid/os/Bundle;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getTopicsOrChat(Lorg/telegram/ui/LaunchActivity;Landroid/os/Bundle;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 354
    iget v0, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget p0, p0, Lorg/telegram/ui/BasePermissionsActivity;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/TopicsFragment;->getTopicsOrChat(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Landroid/os/Bundle;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method private hideFloatingButton(ZZ)V
    .locals 3

    .line 3317
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 3318
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3319
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkUi_mainTabsVisible()V

    :cond_1
    return-void
.end method

.method private joinToGroup()V
    .locals 10

    .line 2253
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    new-instance v9, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v9, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    .line 2266
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeSearchByActiveAction:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2267
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method private synthetic lambda$animateToSearchView$20(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2164
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->updateSearchProgress(F)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 834
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 835
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->openProfile(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 843
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->openParentSearch()V

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 1528
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 2

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;I)V
    .locals 10

    .line 1021
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    move-object v9, p0

    goto/16 :goto_3

    .line 1025
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz p2, :cond_0

    .line 1026
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    iget-object p2, p2, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez p2, :cond_2

    goto :goto_0

    .line 1035
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    :goto_1
    move-wide v5, v0

    goto :goto_2

    :cond_3
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v0, v0

    goto :goto_1

    .line 1038
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    if-eqz v0, :cond_5

    .line 1039
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->onTopicSelectedListener:Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;

    if-eqz p1, :cond_4

    .line 1040
    invoke-interface {p1, p2}, Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;->onTopicSelected(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 1042
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_0

    .line 1043
    iget-wide p1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v3, p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JJZZLorg/telegram/ui/TopicsFragment;)V

    return-void

    :cond_5
    move-object v9, p0

    .line 1047
    iget-object v0, v9, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1048
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->toggleSelection(Landroid/view/View;)V

    return-void

    .line 1051
    :cond_6
    iget-boolean p1, v9, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1052
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1053
    instance-of v2, v1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1054
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getOpenedDialogId()Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v1

    .line 1055
    iget-wide v2, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-wide v7, v9, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v7, v7

    cmp-long v2, v2, v7

    if-nez v2, :cond_7

    iget-wide v1, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_7

    goto :goto_3

    .line 1060
    :cond_8
    iput-wide v5, v9, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:J

    .line 1061
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 1063
    :cond_9
    iget-wide v1, v9, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {p0, v1, v2, p2, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;IFF)Z
    .locals 9

    .line 1066
    iget-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1069
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_1

    instance-of p2, p1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz p2, :cond_1

    .line 1070
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 1071
    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Cells/DialogCell;->isPointInsideAvatar(FF)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1072
    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;->showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z

    .line 1073
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 1074
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    .line 1078
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->toggleSelection(Landroid/view/View;)V

    .line 1080
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 4

    .line 1317
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/TopicCreateFragment;->create(JJ)Lorg/telegram/ui/TopicCreateFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 4

    .line 1402
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->hidePeerSettingsBar(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1403
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    return-void
.end method

.method private synthetic lambda$createView$7()V
    .locals 0

    .line 1449
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->blur3_InvalidateBlur()V

    .line 1450
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->checkUi_listViewPadding()V

    return-void
.end method

.method private synthetic lambda$createView$8(ZZ)V
    .locals 2

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 0

    .line 1506
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$deleteTopics$12()V
    .locals 2

    const/4 v0, 0x0

    .line 1960
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1961
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    return-void
.end method

.method private synthetic lambda$deleteTopics$13(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/TopicsController;->deleteTopics(JLjava/util/ArrayList;)V

    .line 1964
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$deleteTopics$14(Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 1956
    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    iput-object p5, p0, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    .line 1957
    invoke-virtual {p5, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    const/4 p5, 0x1

    const/4 v0, 0x0

    .line 1958
    invoke-direct {p0, p5, v0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 1959
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p5

    const-string v0, "TopicsDeleted"

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    new-instance v1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/TopicsFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {p5, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1965
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1966
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->clearSelectedTopics()V

    .line 1967
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$24()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_7

    if-nez v1, :cond_0

    .line 4173
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    goto :goto_1

    .line 4174
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    if-eqz v2, :cond_1

    .line 4175
    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    goto :goto_4

    .line 4180
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 4182
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4183
    instance-of v6, v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v6, :cond_3

    .line 4184
    check-cast v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_3

    .line 4185
    :cond_3
    instance-of v6, v5, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v6, :cond_4

    .line 4186
    check-cast v5, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    goto :goto_3

    .line 4187
    :cond_4
    instance-of v6, v5, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v6, :cond_5

    .line 4188
    check-cast v5, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4192
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_8

    .line 4193
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupBackgroundColor(IZ)V

    .line 4194
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 4195
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsColor(IZZ)V

    .line 4196
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setPopupItemsSelectorColor(IZ)V

    .line 4198
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 4200
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 4203
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateColors()V

    return-void
.end method

.method private synthetic lambda$joinToGroup$21()V
    .locals 1

    const/4 v0, 0x0

    .line 2254
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->joinRequested:Z

    const/4 v0, 0x1

    .line 2255
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    return-void
.end method

.method private synthetic lambda$joinToGroup$22(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2257
    const-string v1, "INVITE_REQUEST_SENT"

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2258
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2259
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog_join_requested_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2260
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    invoke-static {p1, p0, v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2261
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private synthetic lambda$showChatPreview$16(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 6

    const/4 p2, 0x1

    .line 2059
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    .line 2060
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 2061
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    xor-int/lit8 v4, p1, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/TopicsController;->pinTopic(JIZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2062
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showChatPreview$17(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 7

    .line 2076
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v2, v2

    invoke-virtual {p4, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 2077
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-wide p2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, p2

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v4, p1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    .line 2078
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    .line 2079
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 2080
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void

    .line 2083
    :cond_1
    aget-object p1, p2, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    return-void
.end method

.method private synthetic lambda$showChatPreview$18(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 4

    const/4 p2, 0x1

    .line 2097
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 2098
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    xor-int/2addr p1, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V

    .line 2099
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showChatPreview$19(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Landroid/view/View;)V
    .locals 0

    .line 2111
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 2112
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2113
    new-instance p1, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/TopicsFragment;->deleteTopics(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 4236
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->navigationBarHeight:I

    .line 4237
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 4238
    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 4240
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->emptyViewContainer:Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    if-eqz p1, :cond_1

    .line 4241
    iget-object p1, p1, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    iget p2, p0, Lorg/telegram/ui/TopicsFragment;->navigationBarHeight:I

    neg-int p2, p2

    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->additionFloatingButtonOffset:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 4243
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateFloatingButtonOffset()V

    .line 4244
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->checkUi_listViewPadding()V

    .line 4246
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method private onDialogAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 1936
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogRemoveFinished:I

    .line 1937
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogInsertFinished:I

    .line 1938
    iput v0, p0, Lorg/telegram/ui/TopicsFragment;->dialogChangeFinished:I

    .line 1939
    new-instance v0, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openParentSearch()V
    .locals 1

    .line 1599
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method private openProfile(Z)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1575
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1576
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatPhotoEmpty;

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1580
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1581
    const-string v1, "chat_id"

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1582
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSharedMediaPreloader()Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 1583
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1584
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 1585
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private prepareBlurBitmap()V
    .locals 5

    .line 4073
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4076
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 4077
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 4078
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4079
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, 0x3e2aaaab

    .line 4080
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4081
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4082
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0xb4

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 4083
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4084
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4085
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4086
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4088
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V
    .locals 6

    .line 376
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 384
    instance-of v2, v0, Lorg/telegram/ui/TopicsFragment;

    if-eqz v2, :cond_2

    .line 385
    check-cast v0, Lorg/telegram/ui/TopicsFragment;

    .line 386
    iget-wide v2, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    neg-long v4, v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 394
    :cond_2
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 395
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "chat_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 396
    new-instance v2, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {v2, v0}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    .line 397
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    .line 399
    :cond_3
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity;->setSwitchFromTopics(Z)V

    .line 400
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    return-void
.end method

.method private setButtonType(I)V
    .locals 2

    .line 2679
    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    if-eq v0, p1, :cond_2

    .line 2680
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomButtonType:I

    .line 2681
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    if-nez p1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setTextColorKey(I)V

    .line 2682
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2683
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    :cond_2
    return-void
.end method

.method private setFragmentIsSliding(Z)V
    .locals 3

    .line 3969
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3972
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 3975
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3976
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3977
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    .line 3979
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x1

    .line 3980
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3981
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 3984
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz p1, :cond_3

    .line 3985
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 3987
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void
.end method

.method private setSlideTransitionProgress(F)V
    .locals 3

    .line 4001
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4004
    :cond_0
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    .line 4005
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4006
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 4009
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz p1, :cond_2

    .line 4011
    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->slideFragmentProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    .line 4012
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 4013
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 4014
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 4015
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4017
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 4018
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 4019
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 4020
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showChatPreview(Lorg/telegram/ui/Cells/DialogCell;)Z
    .locals 14

    const/4 v0, 0x0

    .line 1980
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1984
    :catch_0
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    new-array v2, v5, [Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    aput-object v1, v2, v0

    .line 1986
    iget-object v1, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 1987
    new-instance v6, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v9

    new-instance v12, Lorg/telegram/ui/TopicsFragment$19;

    invoke-direct {v12, p0, v1}, Lorg/telegram/ui/TopicsFragment$19;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 2044
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;-><init>(Landroid/content/Context;ILorg/telegram/ui/Components/PopupSwipeBackLayout;ZZLorg/telegram/ui/Components/ChatNotificationsPopupWrapper$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2046
    aget-object v3, v2, v0

    iget-object v4, v6, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v3

    .line 2047
    iput v5, v6, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->type:I

    .line 2048
    iget-wide v7, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v7, v7

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v9, v4

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/ChatNotificationsPopupWrapper;->update(JJLjava/util/HashSet;)V

    .line 2050
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    const/16 v6, 0xa0

    if-eqz v4, :cond_1

    .line 2051
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7, v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 2052
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v7, :cond_0

    .line 2053
    sget v7, Lorg/telegram/messenger/R$string;->DialogUnpin:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 2055
    :cond_0
    sget v7, Lorg/telegram/messenger/R$string;->DialogPin:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2057
    :goto_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2058
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2065
    aget-object v7, v2, v0

    invoke-virtual {v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2068
    :cond_1
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 2069
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v8, v8

    iget v10, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v10, v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2070
    sget v7, Lorg/telegram/messenger/R$string;->Unmute:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 2072
    :cond_2
    sget v7, Lorg/telegram/messenger/R$string;->Mute:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    invoke-virtual {v4, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2074
    :goto_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2075
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v7, p0, v1, v2, v3}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2086
    aget-object v3, v2, v0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2088
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2089
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 2090
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v4, :cond_3

    .line 2091
    sget v4, Lorg/telegram/messenger/R$string;->RestartTopic:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_topic_restart:I

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 2093
    :cond_3
    sget v4, Lorg/telegram/messenger/R$string;->CloseTopic:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_topic_close:I

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2095
    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2096
    new-instance v4, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2101
    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2104
    :cond_4
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2105
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 2106
    const-string v4, "DeleteTopics"

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2107
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 2108
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 2109
    invoke-virtual {v3, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2110
    new-instance v4, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda27;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/TopicsFragment;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2115
    aget-object v1, v2, v0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 2118
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v3, v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->isMonoForum(J)Z

    move-result v1

    .line 2120
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->prepareBlurBitmap()V

    .line 2121
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2122
    const-string v4, "chat_id"

    iget-wide v5, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2123
    new-instance v4, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v4, v3}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 2124
    iget-wide v5, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v5, v5

    iget-object p1, p1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_6

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    goto :goto_3

    :cond_6
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v7, p1

    :goto_3
    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JJ)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object p1

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 2125
    aget-object p1, v2, v0

    invoke-virtual {p0, v4, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    return v0
.end method

.method private toggleSelection(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2278
    instance-of v2, v1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    if-eqz v2, :cond_1a

    .line 2279
    check-cast v1, Lorg/telegram/ui/TopicsFragment$TopicDialogCell;

    .line 2280
    iget-object v2, v1, Lorg/telegram/ui/Cells/DialogCell;->forumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v2, :cond_0

    goto/16 :goto_12

    .line 2283
    :cond_0
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    .line 2284
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2285
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2287
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    .line 2289
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2291
    iget-object v2, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 2292
    invoke-direct {v0}, Lorg/telegram/ui/TopicsFragment;->chekActionMode()V

    .line 2293
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v2, :cond_2

    .line 2294
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 2296
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode(Z)V

    .line 2298
    iget-object v2, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 2302
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2304
    iget-object v10, v0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v11, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    int-to-long v13, v9

    invoke-virtual {v10, v11, v12, v13, v14}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2306
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    if-eqz v10, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 2311
    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-nez v10, :cond_6

    .line 2312
    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 2319
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v10, v10

    invoke-virtual {v9, v10, v11, v13, v14}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    const/16 v2, 0x8

    if-lez v5, :cond_8

    .line 2327
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2328
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v9, Lorg/telegram/messenger/R$string;->MarkAsRead:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 2330
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->readItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz v6, :cond_9

    .line 2333
    iput-boolean v4, v0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    .line 2334
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2335
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$string;->ChatsUnmute:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2337
    :cond_9
    iput-boolean v3, v0, Lorg/telegram/ui/TopicsFragment;->mute:Z

    .line 2338
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2339
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->muteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$string;->ChatsMute:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2342
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v7, v3, :cond_a

    if-nez v8, :cond_a

    move v6, v4

    goto :goto_4

    :cond_a
    move v6, v2

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2343
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->unpinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v8, v3, :cond_b

    if-nez v7, :cond_b

    move v6, v4

    goto :goto_5

    :cond_b
    move v6, v2

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2348
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v6, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 2356
    iget-object v5, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    .line 2357
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2358
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2359
    iget-object v12, v0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v13, v0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    move-object v15, v5

    int-to-long v4, v11

    invoke-virtual {v12, v13, v14, v4, v5}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 2361
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/ChatObject;->canDeleteTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v5

    if-eqz v5, :cond_c

    add-int/lit8 v8, v8, 0x1

    .line 2364
    :cond_c
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5, v1, v4}, Lorg/telegram/messenger/ChatObject;->canManageTopic(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2365
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v5, v3, :cond_e

    .line 2366
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v5, :cond_d

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 2372
    :cond_e
    :goto_7
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-nez v5, :cond_10

    .line 2373
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    if-eqz v4, :cond_f

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v7, v7, 0x1

    :cond_10
    :goto_8
    move-object v5, v15

    const/4 v4, 0x0

    goto :goto_6

    .line 2382
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v6, :cond_12

    if-lez v7, :cond_12

    const/4 v4, 0x0

    goto :goto_9

    :cond_12
    move v4, v2

    :goto_9
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2383
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->closeTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-le v7, v3, :cond_13

    sget v4, Lorg/telegram/messenger/R$string;->CloseTopics:I

    :goto_a
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_13
    sget v4, Lorg/telegram/messenger/R$string;->CloseTopic:I

    goto :goto_a

    :goto_b
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 2384
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v7, :cond_14

    if-lez v6, :cond_14

    const/4 v4, 0x0

    goto :goto_c

    :cond_14
    move v4, v2

    :goto_c
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2385
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->restartTopic:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-le v6, v3, :cond_15

    sget v4, Lorg/telegram/messenger/R$string;->RestartTopics:I

    :goto_d
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_15
    sget v4, Lorg/telegram/messenger/R$string;->RestartTopic:I

    goto :goto_d

    :goto_e
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 2386
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v4, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v8, v4, :cond_16

    const/4 v4, 0x0

    goto :goto_f

    :cond_16
    move v4, v2

    :goto_f
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2387
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->hideItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v9, v3, :cond_17

    iget-object v4, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v3, :cond_17

    const/4 v4, 0x0

    goto :goto_10

    :cond_17
    move v4, v2

    :goto_10
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->showItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-ne v10, v3, :cond_18

    iget-object v4, v0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v4, v3, :cond_18

    const/4 v4, 0x0

    goto :goto_11

    :cond_18
    move v4, v2

    :goto_11
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2390
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkHideMenuItem()V

    .line 2392
    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment;->updateReordering()V

    return-void

    .line 2345
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    :cond_1a
    :goto_12
    return-void
.end method

.method private updateChatInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 2546
    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    return-void
.end method

.method private updateChatInfo(Z)V
    .locals 14

    .line 2550
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-nez v0, :cond_0

    goto/16 :goto_14

    .line 2553
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2554
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 2556
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2557
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 2558
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2559
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2561
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    .line 2564
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 2567
    :cond_3
    :goto_0
    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    .line 2568
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialog_bar_vis3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v4, :cond_4

    move v1, v5

    goto :goto_1

    :cond_4
    move v1, v2

    .line 2570
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialog_bar_report"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialog_bar_block"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2573
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-nez v6, :cond_7

    if-eqz v0, :cond_6

    .line 2575
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 2577
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v11, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v11, v11

    invoke-virtual {v6, v11, v12, v7, v8}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2578
    const-string v6, "drawableMuteIcon"

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v9

    .line 2580
    :goto_2
    iget-object v11, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v11, v9, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2582
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateSubtitle()V

    goto/16 :goto_5

    .line 2584
    :cond_7
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->openedForReply:Z

    if-eqz v6, :cond_8

    .line 2585
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v11, Lorg/telegram/messenger/R$string;->ReplyToDialog:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2586
    :cond_8
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->openedForQuote:Z

    if-eqz v6, :cond_9

    .line 2587
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v11, Lorg/telegram/messenger/R$string;->QuoteTo:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2588
    :cond_9
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->openedForBotShare:Z

    if-eqz v6, :cond_a

    .line 2589
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v11, Lorg/telegram/messenger/R$string;->BotShareToTopic:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2590
    :cond_a
    iget-boolean v6, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    if-eqz v6, :cond_b

    .line 2591
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v11, Lorg/telegram/messenger/R$string;->ForwardTo:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2593
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    sget v11, Lorg/telegram/messenger/R$string;->SelectTopic:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 2595
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2596
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 2597
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v11, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_c

    const/high16 v11, 0x42ac0000    # 86.0f

    goto :goto_4

    :cond_c
    const/high16 v11, 0x42200000    # 40.0f

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2599
    :cond_d
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v6, :cond_e

    .line 2600
    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle()V

    .line 2602
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2604
    :goto_5
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    if-nez v6, :cond_10

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    move p1, v2

    goto :goto_7

    :cond_10
    :goto_6
    move p1, v5

    .line 2606
    :goto_7
    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dialog_join_requested_time_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, -0x1

    invoke-interface {v6, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v0, :cond_11

    .line 2607
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v13, :cond_11

    cmp-long v7, v11, v7

    if-lez v7, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v11

    const-wide/32 v11, 0x1d4c0

    cmp-long v7, v7, v11

    if-gez v7, :cond_11

    .line 2610
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoinRequestSent:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2611
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2612
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1, v2, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2613
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-static {v1, v5, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2614
    invoke-direct {p0, v2}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    :goto_8
    move v1, v5

    goto/16 :goto_b

    :cond_11
    if-eqz v0, :cond_15

    .line 2615
    iget-boolean v7, p0, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    if-nez v7, :cond_15

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v11, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v7, v11, v12}, Lorg/telegram/messenger/MessagesController;->isJoiningChannel(J)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2619
    :cond_12
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->isJoiningChannel(J)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v5

    goto :goto_a

    .line 2622
    :cond_13
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    if-eqz v1, :cond_14

    .line 2623
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoinRequest:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 2625
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelJoin:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2627
    :goto_9
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 2628
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    move v1, v2

    .line 2631
    :goto_a
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v3, v1, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2632
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    xor-int/2addr v1, v5

    invoke-static {v3, v1, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2633
    invoke-direct {p0, v2}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    goto :goto_8

    :cond_15
    if-eqz v1, :cond_17

    if-nez v3, :cond_16

    if-eqz v4, :cond_17

    .line 2635
    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    sget v3, Lorg/telegram/messenger/R$string;->ReportSpamAndLeaveNoCaps:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UnreadCounterTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2636
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 2637
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 2639
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v1, v2, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2640
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-static {v1, v5, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 2642
    invoke-direct {p0, v5}, Lorg/telegram/ui/TopicsFragment;->setButtonType(I)V

    goto/16 :goto_8

    :cond_17
    move v1, v2

    .line 2648
    :goto_b
    iget-boolean v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    if-eq v3, v1, :cond_1c

    .line 2649
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    .line 2650
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v3, 0x42540000    # 53.0f

    const/4 v4, 0x0

    if-nez p1, :cond_1a

    .line 2652
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_18

    move v6, v2

    goto :goto_c

    :cond_18
    move v6, v10

    :goto_c
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2653
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_19

    goto :goto_d

    :cond_19
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v4, v1

    :goto_d
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_f

    .line 2655
    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v1, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v4, v3

    :goto_e
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lorg/telegram/ui/TopicsFragment$21;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/TopicsFragment$21;-><init>(Lorg/telegram/ui/TopicsFragment;Z)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2665
    :cond_1c
    :goto_f
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->checkUi_listViewPadding()V

    .line 2667
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    if-eqz v1, :cond_1d

    move v1, v10

    goto :goto_10

    :cond_1d
    move v1, v2

    :goto_10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2668
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->addMemberSubMenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_11

    :cond_1e
    move v1, v10

    :goto_11
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2669
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->boostGroupSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isBoostSupported(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isBoosted(Lorg/telegram/tgnet/TLRPC$ChatFull;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    move v1, v2

    goto :goto_12

    :cond_20
    move v1, v10

    :goto_12
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2670
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->deleteChatSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_21

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_21

    move v1, v2

    goto :goto_13

    :cond_21
    move v1, v10

    :goto_13
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2671
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->reportSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_22

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_22

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_22

    move v10, v2

    :cond_22
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2672
    invoke-direct {p0, v5}, Lorg/telegram/ui/TopicsFragment;->updateCreateTopicButton(Z)V

    .line 2673
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 2675
    invoke-direct {p0, v2}, Lorg/telegram/ui/TopicsFragment;->checkGroupCallJoin(Z)V

    :cond_23
    :goto_14
    return-void
.end method

.method private updateColors()V
    .locals 3

    .line 1560
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 1563
    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->updateColors()V

    .line 1565
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1566
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionModeColor(I)V

    .line 1567
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_1

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1570
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private updateCreateTopicButton(Z)V
    .locals 4

    .line 2195
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v0, :cond_0

    return-void

    .line 2198
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2199
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canCreateTopic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->canShowCreateTopic:Z

    .line 2200
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2201
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->canShowCreateTopic:Z

    xor-int/2addr v0, v3

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/TopicsFragment;->hideFloatingButton(ZZ)V

    return-void
.end method

.method private updateFloatingButtonOffset()V
    .locals 3

    .line 3324
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->transitionPadding:F

    neg-float v1, v1

    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->navigationBarHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->additionFloatingButtonOffset:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    return-void
.end method

.method private updateSearchProgress(F)V
    .locals 5

    .line 2205
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    .line 2206
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 2207
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v0, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2208
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v1, v2, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2210
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 2211
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    .line 2212
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v4, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v0, v1, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2214
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_0

    .line 2215
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2217
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2218
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2219
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/high16 v3, 0x41800000    # 16.0f

    if-eqz v0, :cond_1

    .line 2220
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2221
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchTabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2223
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2224
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2226
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2227
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2229
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2231
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2232
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->animateSearchWithScale:Z

    if-eqz p1, :cond_3

    .line 2233
    iget p1, p0, Lorg/telegram/ui/TopicsFragment;->searchAnimationProgress:F

    sub-float/2addr v1, p1

    const p1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, p1

    const p1, 0x3f7ae148    # 0.98f

    add-float/2addr v1, p1

    .line 2234
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2235
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    return-void
.end method

.method private updateSubtitle()V
    .locals 3

    .line 2688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2689
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v1, :cond_0

    .line 2690
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 2692
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_4

    .line 2695
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-gtz v0, :cond_3

    .line 2696
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2698
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2699
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2700
    sget v0, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2702
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 2705
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Members"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2708
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2711
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTopicsEmptyViewText()V
    .locals 8

    .line 1536
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1539
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "d"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1540
    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 1541
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1542
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1543
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    const/16 v4, 0xf

    invoke-static {v1, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1544
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoTopicsDescription:I

    .line 1545
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, "%s"

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1544
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1548
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->General:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1549
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const-wide/16 v6, 0x1

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1551
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 1553
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->NoTopicsDescriptionUser:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 1554
    const-string v0, "NoTopicsDescriptionUser"

    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1553
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateTopicsList(ZZ)V
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2783
    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    if-eqz v1, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x0

    .line 2786
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->updateAnimated:Z

    .line 2787
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2790
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2791
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2792
    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2793
    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide v6, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v6, v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/UserObject;->isBotForumWithEditableTopics(IJ)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/TopicsFragment;->openedForForward:Z

    if-eqz v5, :cond_1

    .line 2794
    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/TopicsFragment$Item;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v8, v6}, Lorg/telegram/ui/TopicsFragment$Item;-><init>(Lorg/telegram/ui/TopicsFragment;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v5, v1

    .line 2796
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 2797
    iget-object v7, p0, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    if-eqz v7, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 2800
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/TopicsFragment$Item;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {v8, p0, v1, v9}, Lorg/telegram/ui/TopicsFragment$Item;-><init>(Lorg/telegram/ui/TopicsFragment;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2802
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->topicsController:Lorg/telegram/messenger/TopicsController;

    iget-wide v7, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v2, v7, v8}, Lorg/telegram/messenger/TopicsController;->endIsReached(J)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->canShowProgress:Z

    if-eqz v2, :cond_4

    .line 2803
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/TopicsFragment$Item;

    invoke-direct {v5, p0, v0, v6}, Lorg/telegram/ui/TopicsFragment$Item;-><init>(Lorg/telegram/ui/TopicsFragment;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2807
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    if-eqz v5, :cond_5

    if-eqz p2, :cond_5

    if-le v2, v3, :cond_5

    .line 2808
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    add-int/lit8 p2, v3, 0x4

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    move p1, v1

    .line 2812
    :cond_5
    iput v1, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    move p2, v1

    .line 2813
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_7

    .line 2814
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$Item;

    if-eqz v2, :cond_6

    .line 2815
    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_6

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    if-eqz v2, :cond_6

    .line 2816
    iget v2, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/TopicsFragment;->hiddenCount:I

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2820
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    goto :goto_3

    :cond_8
    move-object v0, v6

    :goto_3
    if-eq p2, v0, :cond_a

    .line 2821
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    if-eqz p1, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    :cond_9
    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2824
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    if-eqz p1, :cond_b

    .line 2825
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2828
    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    if-nez p1, :cond_c

    if-nez v3, :cond_d

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_d

    .line 2829
    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2830
    iput-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->scrollToTop:Z

    .line 2834
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    .line 2835
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateTopicsEmptyViewText()V

    return-void
.end method


# virtual methods
.method public allowFinishFragmentInsteadOfRemoveFromStack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic canParentTabsSlide(Landroid/view/MotionEvent;Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate$-CC;->$default$canParentTabsSlide(Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic checkAndUpdateAvatar()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$checkAndUpdateAvatar(Lorg/telegram/ui/Components/ChatActivityInterface;)V

    return-void
.end method

.method public checkUi_listViewPadding()V
    .locals 6

    .line 1611
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getTopPanelAnimatedHeight()F

    move-result v0

    add-float/2addr v2, v0

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    if-eqz v0, :cond_1

    const/high16 v3, 0x40e00000    # 7.0f

    .line 1614
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/DialogsActivity;->getTopPanelVisibility()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float v4, v2, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1615
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getTopPanelVisibility()F

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getAnimatedHeightWithPadding(F)F

    move-result v0

    add-float/2addr v2, v0

    goto :goto_0

    .line 1618
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    if-eqz v0, :cond_1

    .line 1619
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getAnimatedHeightWithPadding(F)F

    move-result v0

    add-float/2addr v2, v0

    .line 1623
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/TopicsFragment;->navigationBarHeight:I

    iget v1, p0, Lorg/telegram/ui/TopicsFragment;->additionNavigationBarHeight:I

    add-int/2addr v0, v1

    .line 1624
    iget-boolean v1, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    .line 1626
    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2, v3, v0}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 415
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->hasMainTabs:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    iput v0, v1, Lorg/telegram/ui/TopicsFragment;->additionNavigationBarHeight:I

    .line 416
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->hasMainTabs:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    iput v0, v1, Lorg/telegram/ui/TopicsFragment;->additionFloatingButtonOffset:I

    .line 418
    new-instance v0, Lorg/telegram/ui/TopicsFragment$1;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment$1;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 637
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 638
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 639
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 640
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setClipContent(Z)V

    .line 641
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v3, :cond_2

    move v3, v7

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 642
    iget-boolean v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 644
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setInterceptTouches(Z)V

    .line 647
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v3, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$2;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/TopicsFragment$2;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 833
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 840
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_4

    .line 841
    sget v3, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 842
    new-instance v4, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 846
    :cond_4
    sget v3, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 847
    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/TopicsFragment$3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/TopicsFragment$3;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 872
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x38

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchPaddingStart(I)V

    .line 873
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    .line 875
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 876
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 877
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCursor:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 879
    :goto_3
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0, v6, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 880
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    sget v4, Lorg/telegram/messenger/R$string;->TopicViewAsMessages:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 881
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I

    sget v4, Lorg/telegram/messenger/R$string;->AddMember:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->addMemberSubMenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 882
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->boosts:I

    sget v4, Lorg/telegram/messenger/R$string;->BoostingBoostGroupMenu:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->boostGroupSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 883
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_topic_create:I

    sget v4, Lorg/telegram/messenger/R$string;->CreateTopic:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->createTopicSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 884
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_report:I

    sget v4, Lorg/telegram/messenger/R$string;->ReportChat:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0xf

    invoke-virtual {v0, v9, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->reportSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 885
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_leave:I

    sget v4, Lorg/telegram/messenger/R$string;->LeaveMegaMenu:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/16 v10, 0xb

    invoke-virtual {v0, v10, v3, v4, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->deleteChatSubmenu:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 887
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v1, v6, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 888
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3, v6, v7}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 889
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v3, :cond_5

    move v3, v7

    goto :goto_4

    :cond_5
    move v3, v6

    :goto_4
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 890
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/TopicsFragment;->getDialogId()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-gez v3, :cond_6

    move v3, v7

    goto :goto_5

    :cond_6
    move v3, v6

    :goto_5
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowDrawStories:Z

    .line 891
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 892
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/high16 v14, 0x42ac0000    # 86.0f

    const/4 v15, 0x0

    const/4 v9, -0x2

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v11, 0x33

    const/high16 v12, 0x42600000    # 56.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 894
    iget-boolean v0, v1, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    if-nez v0, :cond_7

    .line 895
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/TopicsFragment$4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$4;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    :cond_7
    new-instance v0, Lorg/telegram/ui/TopicsFragment$5;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment$5;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    .line 921
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v3, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 922
    new-instance v0, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_8
    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    :goto_6
    iget-object v9, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v10, v9}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;)V

    invoke-direct {v0, v3, v4, v10}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 923
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 925
    new-instance v0, Landroid/text/SpannableString;

    const-string v3, "#"

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 926
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v9, 0x3f59999a    # 0.85f

    const/4 v10, -0x1

    invoke-static {v4, v9, v10, v6}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FIZ)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object v4

    const/high16 v9, 0x40000000    # 2.0f

    .line 927
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v12, 0x41900000    # 18.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v6, v9, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 928
    new-instance v9, Landroid/text/style/ImageSpan;

    invoke-direct {v9, v4, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v9, v6, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 929
    new-instance v4, Lorg/telegram/ui/TopicsFragment$6;

    sget v9, Lorg/telegram/messenger/R$string;->AccSwipeForGeneral:I

    .line 930
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    sget v11, Lorg/telegram/messenger/R$string;->AccReleaseForGeneral:I

    .line 931
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-direct {v4, v1, v9, v0}, Lorg/telegram/ui/TopicsFragment$6;-><init>(Lorg/telegram/ui/TopicsFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v4, v1, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    .line 941
    invoke-virtual {v4}, Lorg/telegram/ui/Components/PullForegroundDrawable;->doNotShow()V

    .line 943
    iget-boolean v0, v1, Lorg/telegram/ui/TopicsFragment;->hiddenShown:Z

    if-eqz v0, :cond_9

    move v0, v8

    goto :goto_7

    :cond_9
    move v0, v6

    :goto_7
    iput v0, v1, Lorg/telegram/ui/TopicsFragment;->pullViewState:I

    .line 944
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->pullForegroundDrawable:Lorg/telegram/ui/Components/PullForegroundDrawable;

    if-eqz v0, :cond_a

    move v0, v7

    goto :goto_8

    :cond_a
    move v0, v6

    :goto_8
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setWillDraw(Z)V

    .line 945
    new-instance v0, Lorg/telegram/ui/TopicsFragment$7;

    invoke-direct {v0, v1}, Lorg/telegram/ui/TopicsFragment$7;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    .line 1006
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setHideIfEmpty(Z)V

    .line 1007
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1008
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1009
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1010
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$8;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$8;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1017
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v7, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1018
    new-instance v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-direct {v0, v3, v7}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 1019
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemsEnterAnimator(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)V

    .line 1020
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1065
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    .line 1084
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$9;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$9;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1094
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$10;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/TopicsFragment$10;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1267
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 1268
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1269
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1270
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$11;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$11;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1305
    new-instance v0, Lorg/telegram/ui/TopicsFragment$12;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    iput-object v3, v1, Lorg/telegram/ui/TopicsFragment;->itemTouchHelperCallback:Lorg/telegram/ui/TopicsFragment$TouchHelperCallback;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/TopicsFragment$12;-><init>(Lorg/telegram/ui/TopicsFragment;Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 1311
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1313
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v10, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1314
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1315
    new-instance v0, Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    .line 1316
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/Components/FragmentFloatingButton;->createDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1318
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_chatlist_add_2:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 1319
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1320
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v4, v9, v11, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1321
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v3, Lorg/telegram/messenger/R$string;->CreateTopic:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1324
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x18

    .line 1325
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    const/16 v3, 0x8

    .line 1326
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 1329
    new-instance v4, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/TopicsFragment;->emptyViewContainer:Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    .line 1330
    iget-object v4, v4, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1332
    new-instance v4, Lorg/telegram/ui/TopicsFragment$13;

    invoke-direct {v4, v1, v2, v0, v6}, Lorg/telegram/ui/TopicsFragment$13;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;Landroid/view/View;I)V

    iput-object v4, v1, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 1348
    :try_start_0
    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->stickerView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :catch_0
    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-boolean v9, v1, Lorg/telegram/ui/TopicsFragment;->loadingTopics:Z

    iget-boolean v11, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v4, v9, v11}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1352
    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v9, Lorg/telegram/messenger/R$string;->NoTopics:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    invoke-direct {v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsEmptyViewText()V

    .line 1355
    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->emptyViewContainer:Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1356
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->emptyViewContainer:Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->topicsEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1357
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->emptyViewContainer:Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1359
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->emptyViewContainer:Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1361
    new-instance v0, Lorg/telegram/ui/TopicsFragment$14;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment$14;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    .line 1369
    new-instance v0, Lorg/telegram/ui/Components/UnreadCounterTextView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/UnreadCounterTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    .line 1370
    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1371
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    const/16 v9, 0x33

    const/16 v11, 0x50

    invoke-static {v10, v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayChatText:Lorg/telegram/ui/Components/UnreadCounterTextView;

    new-instance v4, Lorg/telegram/ui/TopicsFragment$15;

    invoke-direct {v4, v1}, Lorg/telegram/ui/TopicsFragment$15;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1389
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v4, v1, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v4, 0x41b00000    # 22.0f

    .line 1390
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 1391
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v9, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayProgress:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v11, 0x11

    const/16 v12, 0x1e

    invoke-static {v12, v12, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    .line 1395
    sget v9, Lorg/telegram/messenger/R$drawable;->miniplayer_close:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1396
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1397
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelClose:I

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->circle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1398
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v9, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1399
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1400
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->bottomOverlayContainer:Landroid/widget/FrameLayout;

    iget-object v9, v1, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    const/high16 v16, 0x40000000    # 2.0f

    const/16 v17, 0x0

    const/16 v11, 0x24

    const/high16 v12, 0x42100000    # 36.0f

    const/16 v13, 0x35

    const/4 v14, 0x0

    const/high16 v15, 0x40c00000    # 6.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1401
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v9, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1405
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->closeReportSpam:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1407
    invoke-direct {v1}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 1409
    new-instance v0, Lorg/telegram/ui/TopicsFragment$16;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment$16;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    .line 1429
    iget-object v9, v1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-nez v9, :cond_b

    .line 1430
    iget-object v9, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v11, 0x77

    invoke-static {v10, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1432
    :cond_b
    new-instance v0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    .line 1433
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/16 v13, 0x77

    const/4 v14, 0x0

    const/high16 v15, 0x42300000    # 44.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1438
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 1440
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    iget-wide v12, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v18}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZI)Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1442
    new-instance v0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    const/high16 v3, 0x41300000    # 11.0f

    .line 1443
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v12, 0x41a80000    # 21.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v0, v11, v13, v3, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 1444
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v11, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->topPanel(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v11

    invoke-virtual {v0, v3, v11}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    const/high16 v3, 0x41c00000    # 24.0f

    .line 1445
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v3, 0x40e00000    # 7.0f

    .line 1446
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1447
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->setBlurredBackground(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    .line 1448
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setOnAnimatedHeightChangedListener(Ljava/lang/Runnable;)V

    .line 1453
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x30

    const/4 v14, 0x0

    const/high16 v15, -0x3ea00000    # -14.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1455
    invoke-virtual {v1}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1457
    new-instance v3, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;)V

    iput-object v3, v1, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    .line 1458
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getView()Landroid/view/View;

    move-result-object v3

    const/16 v11, 0x28

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1459
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setPriority(Landroid/view/View;I)V

    .line 1460
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getView()Landroid/view/View;

    move-result-object v3

    const-string v5, "pendingRequestsDelegate"

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setDebugName(Landroid/view/View;Ljava/lang/String;)V

    .line 1461
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    new-instance v3, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setDelegate(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$ChangeVisibilityDelegate;)V

    .line 1462
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, v3, v6}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 1465
    :cond_c
    iget-boolean v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez v0, :cond_d

    .line 1466
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    .line 1467
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1468
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setPriority(Landroid/view/View;I)V

    .line 1469
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    const-string v4, "fragment context"

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setDebugName(Landroid/view/View;Ljava/lang/String;)V

    .line 1470
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v7, v6}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    .line 1472
    new-instance v0, Lorg/telegram/ui/TopicsFragment$17;

    const/4 v4, 0x0

    iget-object v5, v1, Lorg/telegram/ui/TopicsFragment;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/TopicsFragment$17;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    .line 1478
    iput-boolean v7, v0, Lorg/telegram/ui/Components/FragmentContextView;->isInsideBubble:Z

    .line 1479
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_d
    const/high16 v0, -0x40000000    # -2.0f

    .line 1481
    invoke-static {v10, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 1482
    iget-boolean v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v3, :cond_e

    .line 1483
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1485
    :cond_e
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1486
    iget-object v3, v1, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1489
    :cond_f
    invoke-direct {v1}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    .line 1491
    new-instance v0, Lorg/telegram/ui/TopicsFragment$18;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment$18;-><init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    .line 1501
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1503
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1504
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1505
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1508
    iget-object v0, v1, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1510
    iput-boolean v7, v1, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    .line 1512
    iget-boolean v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1513
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1514
    instance-of v3, v2, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_10

    check-cast v2, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1515
    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getOpenedDialogId()Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v2

    .line 1516
    iget-wide v3, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget-wide v7, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v7, v7

    cmp-long v3, v3, v7

    if-nez v3, :cond_10

    .line 1517
    iget-wide v2, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    iput-wide v2, v1, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:J

    .line 1522
    :cond_11
    invoke-direct {v1, v6, v6}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 1524
    :cond_12
    invoke-direct {v1}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 1525
    invoke-direct {v1}, Lorg/telegram/ui/TopicsFragment;->updateColors()V

    .line 1527
    invoke-virtual {v1}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isBoostSupported(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1528
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-wide v2, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v2, v2

    new-instance v4, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    .line 1531
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1532
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 2840
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_2

    .line 2841
    aget-object p2, p3, v2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 2842
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/TopicsFragment;->chatFull:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_0

    .line 2843
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    .line 2845
    :cond_0
    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v5, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 2846
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 2847
    iget-object v3, p0, Lorg/telegram/ui/TopicsFragment;->pendingRequestsDelegate:Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;

    if-eqz v3, :cond_1

    .line 2848
    invoke-virtual {v3, p2, v1}, Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    :cond_1
    const/4 p2, 0x3

    .line 2850
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;->checkGroupCallJoin(Z)V

    goto/16 :goto_0

    .line 2852
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_3

    .line 2853
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    goto/16 :goto_0

    .line 2854
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    if-ne p1, p2, :cond_4

    .line 2855
    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    aget-object p2, p3, v0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    cmp-long p2, v3, v5

    if-nez p2, :cond_e

    .line 2856
    aget-object p2, p3, v2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    goto/16 :goto_0

    .line 2858
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    if-ne p1, p2, :cond_6

    .line 2859
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Long;

    .line 2860
    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-nez p2, :cond_e

    .line 2861
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2862
    array-length p2, p3

    if-le p2, v1, :cond_5

    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2863
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkForLoadMore()V

    .line 2865
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkLoading()V

    goto/16 :goto_0

    .line 2867
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_8

    .line 2868
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2869
    sget v3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    if-ne p2, v3, :cond_7

    .line 2870
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo()V

    .line 2872
    :cond_7
    sget v3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_SELECT_DIALOG:I

    and-int/2addr p2, v3

    if-lez p2, :cond_e

    .line 2873
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2, v3, v4, v2}, Lorg/telegram/messenger/TopicsController;->sortTopics(JZ)V

    .line 2874
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p2

    .line 2875
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    if-nez p2, :cond_e

    .line 2877
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    .line 2880
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, p2, :cond_9

    .line 2881
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    goto :goto_0

    .line 2882
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-ne p1, p2, :cond_b

    .line 2883
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Long;

    .line 2884
    iget-wide v3, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 2885
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 2886
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    if-eqz p2, :cond_a

    .line 2887
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    xor-int/2addr v3, v1

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    .line 2889
    :cond_a
    invoke-direct {p0, v2}, Lorg/telegram/ui/TopicsFragment;->checkGroupCallJoin(Z)V

    goto :goto_0

    .line 2891
    :cond_b
    sget p2, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, p2, :cond_c

    .line 2892
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2893
    invoke-direct {p0, v1}, Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V

    goto :goto_0

    .line 2894
    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatSwitchedForum:I

    if-ne p1, p2, :cond_d

    goto :goto_0

    .line 2896
    :cond_d
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_e

    .line 2897
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    .line 2899
    :cond_e
    :goto_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    if-ne p1, p2, :cond_11

    .line 2900
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz p1, :cond_11

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_1

    .line 2903
    :cond_f
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2904
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2905
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 2906
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_10

    if-nez p1, :cond_10

    .line 2907
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_11

    .line 2908
    iput-wide p2, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:J

    .line 2909
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    return-void

    .line 2912
    :cond_10
    iget-wide p1, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_11

    .line 2913
    iput-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopicForTablet:J

    .line 2914
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    :cond_11
    :goto_1
    return-void
.end method

.method public drawEdgeNavigationBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;
    .locals 1

    .line 4139
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    return-object v0
.end method

.method public getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 1

    .line 4144
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object v0
.end method

.method public getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 3

    .line 2942
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$getCurrentUser(Lorg/telegram/ui/Components/ChatActivityInterface;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 2947
    iget-wide v0, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getFrostedGlassSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 1

    .line 4298
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object v0
.end method

.method public getFullscreenView()Landroid/view/View;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->fullscreenView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getGlassSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 1

    .line 4294
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object v0
.end method

.method public getGroupCall()Lorg/telegram/messenger/ChatObject$Call;
    .locals 2

    .line 2937
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getMergeDialogId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$getMergeDialogId(Lorg/telegram/ui/Components/ChatActivityInterface;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 405
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v0, p0

    .line 4169
    new-instance v7, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    .line 4206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4208
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4209
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4210
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4211
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v7, 0x0

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4212
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4213
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4215
    iget-object v1, v0, Lorg/telegram/ui/TopicsFragment;->searchContainer:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 4216
    invoke-static {v9, v1}, Lorg/telegram/ui/Cells/GraySectionCell;->createThemeDescriptions(Ljava/util/List;Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_0
    return-object v9
.end method

.method public synthetic getTopicId()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$getTopicId(Lorg/telegram/ui/Components/ChatActivityInterface;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 3384
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    goto :goto_1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_0

    .line 3385
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3386
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 3388
    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 4093
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4094
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->clearSelectedTopics()V

    :cond_0
    return v1

    .line 4097
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->searching:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 4098
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    :cond_2
    return v1

    .line 4101
    :cond_3
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onBecomeFullyHidden()V
    .locals 1

    .line 3329
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 3330
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 7

    .line 2718
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 2719
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2720
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2721
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2722
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2723
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2724
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2725
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2726
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2727
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSwitchedForum:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2728
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2729
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2731
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/TopicsFragment;->updateTopicsList(ZZ)V

    .line 2732
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preload(I)V

    .line 2734
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2735
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2736
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 2739
    :cond_0
    sget-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2740
    sget-object v0, Lorg/telegram/ui/TopicsFragment;->settingsPreloaded:Ljava/util/HashSet;

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2741
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;-><init>()V

    .line 2742
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->peer:Lorg/telegram/tgnet/TLRPC$InputNotifyPeer;

    .line 2743
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_account$getNotifyExceptions;->flags:I

    .line 2744
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v5, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v5, v5

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputNotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2745
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 4

    .line 2752
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 2753
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2754
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatWasBoostedByUser:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2755
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2756
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2757
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2758
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2759
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2760
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2761
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSwitchedForum:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2762
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2763
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 2765
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2766
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2767
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 2769
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_1

    .line 2772
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchAvatarImageView(Lorg/telegram/ui/Components/BackupImageView;)V

    .line 2773
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iput-boolean v2, v0, Lorg/telegram/ui/RightSlidingDialogContainer;->enabled:Z

    .line 2777
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_2

    .line 2778
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->onDestroy(Z)V

    :cond_2
    return-void
.end method

.method public onParentScrollToTop()V
    .locals 2

    .line 4303
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 3950
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 3951
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentPause(J)V

    .line 3952
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 3930
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 3931
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->mainTabsHiddenByScroll:Z

    .line 3932
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkUi_mainTabsVisible()V

    .line 3933
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/TopicsController;->onTopicFragmentResume(J)V

    .line 3934
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 3935
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->recyclerListView:Lorg/telegram/ui/TopicsFragment$TopicsRecyclerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 v0, 0x1

    .line 3936
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->animatedUpdateEnabled:Z

    .line 3937
    new-instance v0, Lorg/telegram/ui/TopicsFragment$22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TopicsFragment$22;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 3943
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3944
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method public onSlideProgress(ZF)V
    .locals 0

    .line 3992
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3995
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->slideBackTransitionAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    .line 3996
    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;->setSlideTransitionProgress(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    .line 4037
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_1

    .line 4038
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 4039
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4040
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4042
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 4045
    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->openAnimationEnded:Z

    .line 4046
    iget-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->lastCallCheckFromServer:Z

    invoke-direct {p0, p2}, Lorg/telegram/ui/TopicsFragment;->checkGroupCallJoin(Z)V

    .line 4049
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    if-nez p1, :cond_4

    .line 4052
    iget-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->openedForSelect:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->removeFragmentOnTransitionEnd:Z

    if-eqz p2, :cond_3

    .line 4053
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 4054
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz p2, :cond_4

    .line 4055
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_0

    .line 4057
    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/TopicsFragment;->finishDialogRightSlidingPreviewOnTransitionEnd:Z

    if-eqz p2, :cond_4

    .line 4058
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 4059
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz p2, :cond_4

    .line 4060
    invoke-virtual {p2}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4061
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-object p2, p2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 4067
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->bottomPannelVisible:Z

    if-eqz p1, :cond_5

    .line 4068
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getNavigationBarColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setNavigationBarColor(I)V

    :cond_5
    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 1

    .line 4106
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4108
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 4110
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->blurredView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 4028
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4030
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->openAnimationEnded:Z

    .line 4032
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    return-void
.end method

.method public synthetic openedWithLivestream()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$openedWithLivestream(Lorg/telegram/ui/Components/ChatActivityInterface;)Z

    move-result v0

    return v0
.end method

.method public prepareFragmentToSlide(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 3958
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    .line 3959
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setFragmentIsSliding(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3961
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->slideBackTransitionAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 3962
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->isSlideBackTransition:Z

    .line 3963
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setFragmentIsSliding(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3964
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicsFragment;->setSlideTransitionProgress(F)V

    return-void
.end method

.method public synthetic scrollToMessageId(IIZIZI)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$scrollToMessageId(Lorg/telegram/ui/Components/ChatActivityInterface;IIZIZI)V

    return-void
.end method

.method public sendReorder()V
    .locals 4

    .line 2406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2407
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2408
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment;->forumTopics:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment$Item;

    iget-object v2, v2, Lorg/telegram/ui/TopicsFragment$Item;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v2, :cond_0

    .line 2409
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->pinned:Z

    if-eqz v3, :cond_0

    .line 2410
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2413
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/TopicsController;->reorderPinnedTopics(JLjava/util/ArrayList;)V

    const/4 v0, 0x1

    .line 2414
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->ignoreDiffUtil:Z

    return-void
.end method

.method public setExcludeTopics(Ljava/util/HashSet;)V
    .locals 0

    .line 2932
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->excludeTopics:Ljava/util/HashSet;

    return-void
.end method

.method public setForwardFromDialogFragment(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 2951
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 0

    .line 410
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    return-void
.end method

.method public setOnTopicSelectedListener(Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;)V
    .locals 0

    .line 3921
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->onTopicSelectedListener:Lorg/telegram/ui/TopicsFragment$OnTopicSelectedListener;

    return-void
.end method

.method public setParentDialogsActivity(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 1637
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    .line 1638
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->checkUi_mainTabsVisible()V

    return-void
.end method

.method public setPreviewOpenedProgress(F)V
    .locals 1

    .line 4149
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_1

    .line 4150
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4151
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 4152
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 4153
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 4155
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setPreviewReplaceProgress(F)V
    .locals 2

    .line 4161
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_0

    .line 4162
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4163
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 p1, 0x42200000    # 40.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public setTransitionPadding(I)V
    .locals 0

    int-to-float p1, p1

    .line 1632
    iput p1, p0, Lorg/telegram/ui/TopicsFragment;->transitionPadding:F

    .line 1633
    invoke-direct {p0}, Lorg/telegram/ui/TopicsFragment;->updateFloatingButtonOffset()V

    return-void
.end method

.method public synthetic shouldShowImport()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityInterface$-CC;->$default$shouldShowImport(Lorg/telegram/ui/Components/ChatActivityInterface;)Z

    move-result v0

    return v0
.end method

.method public switchToChat(Z)V
    .locals 3

    .line 1589
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment;->removeFragmentOnTransitionEnd:Z

    .line 1591
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1592
    const-string v0, "chat_id"

    iget-wide v1, p0, Lorg/telegram/ui/TopicsFragment;->chatId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1593
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1594
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->setSwitchFromTopics(Z)V

    .line 1595
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public updateReordering()V
    .locals 3

    .line 2397
    invoke-virtual {p0}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->selectedTopics:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2399
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    if-eq v2, v0, :cond_1

    .line 2400
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment;->reordering:Z

    .line 2401
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment;->adapter:Lorg/telegram/ui/TopicsFragment$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method
