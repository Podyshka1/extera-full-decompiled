.class public Lorg/telegram/ui/StatisticActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StatisticActivity$Adapter;,
        Lorg/telegram/ui/StatisticActivity$ChartViewData;,
        Lorg/telegram/ui/StatisticActivity$RecentPostInfo;,
        Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;,
        Lorg/telegram/ui/StatisticActivity$ZoomCancelable;,
        Lorg/telegram/ui/StatisticActivity$ChartCell;,
        Lorg/telegram/ui/StatisticActivity$OverviewCell;,
        Lorg/telegram/ui/StatisticActivity$MemberData;,
        Lorg/telegram/ui/StatisticActivity$OverviewChannelData;,
        Lorg/telegram/ui/StatisticActivity$OverviewChatData;,
        Lorg/telegram/ui/StatisticActivity$BaseChartCell;,
        Lorg/telegram/ui/StatisticActivity$UniversalChartCell;
    }
.end annotation


# instance fields
.field private final ADDITIONAL_LIST_HEIGHT_DP:I

.field private actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

.field private animator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

.field private chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private final chatId:J

.field private final childDataCache:Lorg/telegram/messenger/LruCache;

.field private diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

.field private followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private final iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private final iBlur3PositionActionBar:Landroid/graphics/RectF;

.field private final iBlur3PositionMainTabs:Landroid/graphics/RectF;

.field private final iBlur3Positions:Ljava/util/ArrayList;

.field private final iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private final iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private initialLoading:Z

.field private interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private final isMegagroup:Z

.field private ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private lastCancelable:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private loadFromId:I

.field private maxDateOverview:J

.field private membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private messagesIsLoading:Z

.field private minDateOverview:J

.field private monetizationLayout:Lorg/telegram/ui/ChannelMonetizationLayout;

.field private newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private final onlyBoostsStat:Z

.field private overviewChannelData:Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

.field private overviewChatData:Lorg/telegram/ui/StatisticActivity$OverviewChatData;

.field private final progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field private progressLayout:Landroid/widget/LinearLayout;

.field private reactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private final recentAllSortedDataLoaded:Ljava/util/ArrayList;

.field private final recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

.field private final recentPostsAll:Ljava/util/ArrayList;

.field private final recentPostsLoaded:Ljava/util/ArrayList;

.field private final recentStoriesAll:Ljava/util/ArrayList;

.field private final recentStoriesIdtoIndexMap:Landroid/util/SparseIntArray;

.field private final recentStoriesLoaded:Ljava/util/ArrayList;

.field private recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

.field private final showProgressbar:Ljava/lang/Runnable;

.field private showTabs:Z

.field private final startFromBoosts:Z

.field private final startFromMonetization:Z

.field private storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

.field private storiesListId:I

.field private storyInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private storyReactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

.field private tabsView:Lorg/telegram/ui/MainTabsLayout;

.field private final topAdmins:Ljava/util/ArrayList;

.field private topDayOfWeeksData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

.field private final topInviters:Ljava/util/ArrayList;

.field private final topMembersAll:Ljava/util/ArrayList;

.field private final topMembersVisible:Ljava/util/ArrayList;

.field private viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;


# direct methods
.method public static synthetic $r8$lambda$1VGLTYe54JvtoK0S_dq7Q04a2SM(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$7(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ls4W6fALilS5S5yod7MbDEFs6i4(Lorg/telegram/ui/StatisticActivity;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_YWoipRl0qvX_upretOU5PiGUSw(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$2([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d2qIe0CDmJ0Hk8SM6e7PM6pVwEc(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iVkLN2kZJwQVxdU2n87w1Kzot1k(Lorg/telegram/ui/StatisticActivity;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$5(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzDZk-O5lMuNmnXdqdiuNeOBLZU(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->lambda$getThemeDescriptions$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$p_A4GLNg_YvfWL65-zjNyi3_jO8(Lorg/telegram/ui/StatisticActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadMessages$10(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s65yMgCWLdTFF_alknIt5HDLwwY(Lorg/telegram/ui/StatisticActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$6(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uCkmCvT1gZpFUMYprqy5itptObg(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$8(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x_Arct0ETDjSjyLKSF7yzZjF-2o(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$loadMessages$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xnHNteOsASGTZa3yvmFfSy9bsqA(Lorg/telegram/ui/StatisticActivity;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->lambda$createView$9(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ybje828jnpguQ4E6dsVf49lIVMk(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$loadStatistic$1([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zWT1xcmDpYJbuLwpky99RNL-gQI(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->lambda$getFindChartCell$4(Lorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$Adapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetboostLayout(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/ChannelBoostLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchat(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchildDataCache(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/messenger/LruCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->childDataCache:Lorg/telegram/messenger/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfollowersData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupMembersData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgrowthData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisMegagroup(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetivInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlanguagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/StatisticActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistBlur3Capture(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->listBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxDateOverview(Lorg/telegram/ui/StatisticActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmembersLanguageData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessagesData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessagesIsLoading(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetminDateOverview(Lorg/telegram/ui/StatisticActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmonetizationLayout(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/ChannelMonetizationLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->monetizationLayout:Lorg/telegram/ui/ChannelMonetizationLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnewFollowersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnewMembersBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonlyBoostsStat(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoverviewChannelData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->overviewChannelData:Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoverviewChatData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->overviewChatData:Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressLayout(Lorg/telegram/ui/StatisticActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->reactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentAllSortedDataLoaded(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentPostsAll(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentPostsLoaded(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerListView(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharedUi(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoriesList(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Stories/StoriesController$StoriesList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryInteractionsData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->storyInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoryReactionsByEmotionData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->storyReactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopAdmins(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopDayOfWeeksData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topDayOfWeeksData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopHoursData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopInviters(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopMembersAll(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopMembersVisible(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewPagerFixed(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewsBySourceData(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastCancelable(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/StatisticActivity$ZoomCancelable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->lastCancelable:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelZoom(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->cancelZoom()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_actionBar(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->checkUi_actionBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFindChartCell(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/messenger/Utilities$Callback0Return;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->getFindChartCell(Lorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/messenger/Utilities$Callback0Return;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadMessages(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadMessages()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 207
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    const/16 v3, 0x30

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput v3, p0, Lorg/telegram/ui/StatisticActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    .line 182
    new-instance v3, Lorg/telegram/messenger/LruCache;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lorg/telegram/messenger/LruCache;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity;->childDataCache:Lorg/telegram/messenger/LruCache;

    const/4 v3, 0x1

    .line 197
    new-array v4, v3, [Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v4, -0x1

    .line 232
    iput v4, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    .line 233
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    .line 234
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesIdtoIndexMap:Landroid/util/SparseIntArray;

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    .line 236
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    .line 237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesAll:Ljava/util/ArrayList;

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesLoaded:Ljava/util/ArrayList;

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    .line 241
    iput-boolean v3, p0, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    .line 246
    new-instance v3, Lorg/telegram/ui/StatisticActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/StatisticActivity$1;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    .line 3622
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3Positions:Ljava/util/ArrayList;

    .line 3623
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    .line 3624
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    .line 3625
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3626
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v3, "chat_id"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    .line 209
    const-string v5, "is_megagroup"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    .line 210
    const-string v5, "start_from_boosts"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/ui/StatisticActivity;->startFromBoosts:Z

    .line 211
    const-string v5, "start_from_monetization"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/ui/StatisticActivity;->startFromMonetization:Z

    .line 212
    const-string v5, "only_boosts"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    .line 213
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 215
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 216
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    const/4 v1, 0x0

    if-lt v0, v2, :cond_1

    .line 218
    new-instance p1, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {p1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 219
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 220
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 221
    new-instance v0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    const/high16 p1, 0x40000

    .line 222
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    return-void

    .line 224
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 225
    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 226
    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 227
    new-instance v0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/StatisticActivity;)I
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/StatisticActivity;)Z
    .locals 0

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result p0

    return p0
.end method

.method private blur3_InvalidateBlur()V
    .locals 8

    .line 3630
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 3634
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 3635
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42600000    # 56.0f

    .line 3636
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    .line 3638
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    neg-int v5, v1

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    int-to-float v1, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3639
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v1, v7, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3640
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    const/high16 v2, 0x40000

    invoke-static {v2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v7, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 3642
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3Positions:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 3643
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private cancelZoom()V
    .locals 6

    .line 2361
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->lastCancelable:Lorg/telegram/ui/StatisticActivity$ZoomCancelable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2362
    iput-boolean v1, v0, Lorg/telegram/ui/StatisticActivity$ZoomCancelable;->canceled:Z

    .line 2364
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2366
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2367
    instance-of v5, v4, Lorg/telegram/ui/StatisticActivity$ChartCell;

    if-eqz v5, :cond_1

    .line 2368
    check-cast v4, Lorg/telegram/ui/StatisticActivity$ChartCell;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->chartView:Lorg/telegram/ui/Charts/BaseChartView;

    iget-object v4, v4, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v4, v2, v1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->showProgress(ZZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkUi_actionBar()V
    .locals 2

    .line 3584
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 3585
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

    if-ne v0, v1, :cond_0

    .line 3586
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 3587
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->monetizationLayout:Lorg/telegram/ui/ChannelMonetizationLayout;

    if-ne v0, v1, :cond_1

    .line 3588
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 3590
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private checkUi_listPaddings()V
    .locals 4

    .line 3562
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    .line 3563
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 3565
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    if-eqz v2, :cond_0

    neg-int v3, v0

    int-to-float v3, v3

    .line 3566
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3569
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 3570
    iget-boolean v1, p0, Lorg/telegram/ui/StatisticActivity;->showTabs:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    add-int/2addr v1, v0

    .line 3572
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 3573
    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 3575
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

    if-eqz v0, :cond_3

    .line 3576
    iget-object v0, v0, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 3578
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->monetizationLayout:Lorg/telegram/ui/ChannelMonetizationLayout;

    if-eqz v0, :cond_4

    .line 3579
    iget-object v0, v0, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    return-void
.end method

.method public static create(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    const/4 v0, 0x1

    .line 128
    invoke-static {p0, v0}, Lorg/telegram/ui/StatisticActivity;->create(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 4

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    const-string v1, "chat_id"

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 134
    const-string v1, "is_megagroup"

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string v1, "start_from_boosts"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-nez v1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stars_revenue:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance p0, Lorg/telegram/ui/StatisticActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/StatisticActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0

    .line 138
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/ui/BoostsActivity;

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/BoostsActivity;-><init>(J)V

    return-object p1
.end method

.method public static createChartData(Lorg/json/JSONObject;IZ)Lorg/telegram/ui/Charts/data/ChartData;
    .locals 1

    if-nez p1, :cond_0

    .line 1108
    new-instance p1, Lorg/telegram/ui/Charts/data/ChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/ChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1110
    new-instance p1, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/DoubleLinearChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1112
    new-instance p1, Lorg/telegram/ui/Charts/data/StackBarChartData;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Charts/data/StackBarChartData;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1114
    new-instance p1, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Charts/data/StackLinearChartData;-><init>(Lorg/json/JSONObject;Z)V

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 1

    const/4 v0, 0x0

    .line 1103
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p0

    return-object p0
.end method

.method public static createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 1070
    instance-of v1, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraphError;

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1073
    :cond_0
    new-instance v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/StatisticActivity$ChartViewData;-><init>(Ljava/lang/String;I)V

    .line 1074
    iput-boolean p3, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isLanguages:Z

    .line 1075
    instance-of p1, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraph;

    if-eqz p1, :cond_4

    .line 1076
    move-object p1, p0

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraph;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraph;->json:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 1078
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2, p3}, Lorg/telegram/ui/StatisticActivity;->createChartData(Lorg/json/JSONObject;IZ)Lorg/telegram/ui/Charts/data/ChartData;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz p1, :cond_1

    .line 1080
    iget p3, p0, Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;->rate:F

    iput p3, p1, Lorg/telegram/ui/Charts/data/ChartData;->yRate:F

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 1082
    :cond_1
    :goto_0
    check-cast p0, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraph;

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraph;->zoom_token:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->zoomToken:Ljava/lang/String;

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    .line 1083
    iget-object p3, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    if-eqz p3, :cond_2

    array-length p3, p3

    const/4 v2, 0x2

    if-ge p3, v2, :cond_3

    .line 1084
    :cond_2
    iput-boolean p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    :cond_3
    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    if-eqz p1, :cond_5

    .line 1086
    iget-object p2, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    if-eqz p2, :cond_5

    array-length p3, p2

    if-lez p3, :cond_5

    .line 1087
    array-length p3, p2

    sub-int/2addr p3, p0

    aget-wide v2, p2, p3

    .line 1088
    new-instance p0, Lorg/telegram/ui/Charts/data/StackLinearChartData;

    invoke-direct {p0, p1, v2, v3}, Lorg/telegram/ui/Charts/data/StackLinearChartData;-><init>(Lorg/telegram/ui/Charts/data/ChartData;J)V

    iput-object p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->childChartData:Lorg/telegram/ui/Charts/data/ChartData;

    .line 1089
    iput-wide v2, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->activeZoom:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1092
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    .line 1095
    :cond_4
    instance-of p1, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraphAsync;

    if-eqz p1, :cond_5

    .line 1096
    check-cast p0, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraphAsync;

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGraphAsync;->token:Ljava/lang/String;

    iput-object p0, v1, Lorg/telegram/ui/StatisticActivity$ChartViewData;->token:Ljava/lang/String;

    :cond_5
    return-object v1

    :cond_6
    :goto_2
    return-object v0
.end method

.method private dataLoaded([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 7

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->update()V

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 452
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 453
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xe6

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/StatisticActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/StatisticActivity$2;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 459
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 463
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    .line 464
    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v3, :cond_1

    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$ChartViewData;->token:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 465
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/StatisticActivity;->getFindChartCell(Lorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/messenger/Utilities$Callback0Return;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/StatisticActivity$ChartViewData;->load(IIILorg/telegram/messenger/Utilities$Callback0Return;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getFindChartCell(Lorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/messenger/Utilities$Callback0Return;
    .locals 1

    .line 472
    new-instance v0, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-object v0
.end method

.method private synthetic lambda$createView$5(ILandroid/view/View;)V
    .locals 0

    .line 637
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    const/4 p2, 0x1

    .line 638
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity;->selectTab(IZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;I)V
    .locals 3

    .line 940
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    if-lt p2, v0, :cond_0

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p2, v1, :cond_0

    .line 941
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 942
    new-instance p2, Lorg/telegram/ui/MessageStatisticActivity;

    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/ui/StatisticActivity$RecentPostInfo;JZ)V

    .line 943
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 944
    :cond_0
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, v0, :cond_1

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v1, :cond_1

    sub-int/2addr p2, v0

    .line 946
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 947
    :cond_1
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, v0, :cond_2

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v1, :cond_2

    sub-int/2addr p2, v0

    .line 949
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 950
    :cond_2
    iget v0, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, v0, :cond_3

    iget v1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, v1, :cond_3

    sub-int/2addr p2, v0

    .line 952
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onClick(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 953
    :cond_3
    iget p1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    if-ne p2, p1, :cond_4

    .line 954
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p1, p2

    .line 955
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget p2, p2, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz v0, :cond_4

    .line 959
    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->update()V

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->animator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 962
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$createView$7(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 977
    new-instance v0, Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 980
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 981
    const-string v1, "chat_id"

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 982
    const-string v1, "message_id"

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 983
    const-string p1, "need_remove_previous_same_chat_activity"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 984
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 985
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;I)Z
    .locals 5

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p2, v1, :cond_1

    iget v4, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p2, v4, :cond_1

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object p2, p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    .line 971
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 975
    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    sget v2, Lorg/telegram/messenger/R$string;->ViewMessageStatistic:I

    .line 976
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_msgbubble3:I

    sget v2, Lorg/telegram/messenger/R$string;->ViewMessage:I

    .line 979
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 987
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getClipBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 988
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v3

    .line 991
    :cond_1
    iget p1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, p1, :cond_2

    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v1, :cond_2

    sub-int/2addr p2, p1

    .line 993
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v3

    .line 995
    :cond_2
    iget p1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, p1, :cond_3

    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v1, :cond_3

    sub-int/2addr p2, p1

    .line 997
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v3

    .line 999
    :cond_3
    iget p1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, p1, :cond_4

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, v0, :cond_4

    sub-int/2addr p2, p1

    .line 1001
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$MemberData;

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1, p2, p0, v0}, Lorg/telegram/ui/StatisticActivity$MemberData;->onLongClick(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return v3

    :cond_4
    return v2
.end method

.method private synthetic lambda$getFindChartCell$4(Lorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/StatisticActivity$BaseChartCell;
    .locals 4

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 475
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 476
    instance-of v3, v2, Lorg/telegram/ui/StatisticActivity$ChartCell;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/StatisticActivity$ChartCell;

    iget-object v3, v2, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->data:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 481
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    return-object v0
.end method

.method private synthetic lambda$getThemeDescriptions$12()V
    .locals 4

    .line 2754
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_4

    .line 2755
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2757
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2759
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 2761
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2763
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    .line 2765
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2767
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 2769
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/StatisticActivity;->recolorRecyclerItem(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2771
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 2773
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    if-eqz v0, :cond_5

    .line 2774
    invoke-virtual {v0}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;->invalidate()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$loadMessages$10(Ljava/util/ArrayList;)V
    .locals 7

    const/4 v0, 0x0

    .line 2539
    iput-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    .line 2540
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2543
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2545
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 2546
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2547
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2548
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iput-object v3, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2552
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2553
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_4

    .line 2555
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 2556
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_3

    .line 2557
    invoke-virtual {v1}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    goto :goto_2

    .line 2560
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2563
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->sortAllLoadedData()V

    .line 2564
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2565
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    return-void
.end method

.method private synthetic lambda$loadMessages$11(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 2528
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2530
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_1

    .line 2531
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 p1, 0x0

    move v0, p1

    .line 2532
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2533
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, p1, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2535
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V

    .line 2538
    :cond_1
    new-instance p1, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/StatisticActivity;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$0(Ljava/util/List;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->load(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 344
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->prepareStoriesLoadedItems()V

    .line 345
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->sortAllLoadedData()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadStatistic$1([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x1

    .line 357
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x2

    .line 358
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x3

    .line 359
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x4

    .line 360
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x5

    .line 362
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x6

    .line 363
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x7

    .line 364
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0x8

    .line 365
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0x9

    .line 367
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->reactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0xa

    .line 368
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storyInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v0, 0xb

    .line 369
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storyReactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 371
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->dataLoaded([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$2([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V
    .locals 1

    const/4 v0, 0x0

    .line 427
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x1

    .line 428
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x2

    .line 429
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x3

    .line 430
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x4

    .line 431
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x5

    .line 432
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x6

    .line 433
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/4 v0, 0x7

    .line 434
    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->topDayOfWeeksData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 436
    invoke-direct {p0, p1}, Lorg/telegram/ui/StatisticActivity;->dataLoaded([Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    return-void
.end method

.method private synthetic lambda$loadStatistic$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 295
    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;

    const-string v9, "GrowthChartTitle"

    const-string v10, "TopHoursChartTitle"

    const/4 v11, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 p2, 0x5

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 297
    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;

    const/16 v16, 0x3

    .line 299
    iget-object v6, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->iv_interactions_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const/16 v17, 0x7

    const-string v7, "IVInteractionsChartTitle"

    const/16 v18, 0x6

    sget v8, Lorg/telegram/messenger/R$string;->IVInteractionsChartTitle:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v6

    .line 300
    iget-object v7, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->followers_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v8, "FollowersChartTitle"

    const-wide/16 v19, 0x3e8

    sget v12, Lorg/telegram/messenger/R$string;->FollowersChartTitle:I

    invoke-static {v8, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v7

    .line 301
    iget-object v8, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->top_hours_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    sget v12, Lorg/telegram/messenger/R$string;->TopHoursChartTitle:I

    invoke-static {v10, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v8

    .line 302
    iget-object v12, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->interactions_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v13, "ViewsAndSharesChartTitle"

    const/16 v21, 0xa

    sget v3, Lorg/telegram/messenger/R$string;->ViewsAndSharesChartTitle:I

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v5}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    .line 303
    iget-object v12, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->growth_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    sget v13, Lorg/telegram/messenger/R$string;->GrowthChartTitle:I

    invoke-static {v9, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v12

    .line 304
    iget-object v13, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->views_by_source_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const/16 v22, 0x8

    const-string v4, "ViewsBySourceChartTitle"

    sget v15, Lorg/telegram/messenger/R$string;->ViewsBySourceChartTitle:I

    invoke-static {v4, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v4

    .line 305
    iget-object v13, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->new_followers_by_source_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v15, "NewFollowersBySourceChartTitle"

    sget v5, Lorg/telegram/messenger/R$string;->NewFollowersBySourceChartTitle:I

    invoke-static {v15, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5, v14}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v5

    .line 306
    iget-object v13, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->languages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v15, "LanguagesChartTitle"

    sget v14, Lorg/telegram/messenger/R$string;->LanguagesChartTitle:I

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v11, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v13

    .line 307
    iget-object v14, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->mute_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v15, "NotificationsChartTitle"

    move/from16 v26, v11

    sget v11, Lorg/telegram/messenger/R$string;->NotificationsChartTitle:I

    invoke-static {v15, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-static {v14, v11, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v11

    .line 308
    iget-object v14, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->reactions_by_emotion_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v15, "ReactionsByEmotionChartTitle"

    move-object/from16 v27, v3

    sget v3, Lorg/telegram/messenger/R$string;->ReactionsByEmotionChartTitle:I

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x2

    invoke-static {v14, v3, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    .line 309
    iget-object v14, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->story_interactions_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v15, "StoryInteractionsChartTitle"

    move-object/from16 v28, v3

    sget v3, Lorg/telegram/messenger/R$string;->StoryInteractionsChartTitle:I

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    invoke-static {v14, v3, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    .line 310
    iget-object v14, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->story_reactions_by_emotion_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    move/from16 v24, v15

    const-string v15, "StoryReactionsByEmotionChartTitle"

    move-object/from16 v29, v3

    sget v3, Lorg/telegram/messenger/R$string;->StoryReactionsByEmotionChartTitle:I

    invoke-static {v15, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x2

    invoke-static {v14, v3, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    const/16 v14, 0xc

    new-array v14, v14, [Lorg/telegram/ui/StatisticActivity$ChartViewData;

    const/16 v23, 0x0

    aput-object v6, v14, v23

    aput-object v7, v14, v24

    aput-object v8, v14, v15

    aput-object v27, v14, v16

    aput-object v12, v14, v26

    aput-object v4, v14, p2

    aput-object v5, v14, v18

    aput-object v13, v14, v17

    aput-object v11, v14, v22

    const/16 v4, 0x9

    aput-object v28, v14, v4

    aput-object v29, v14, v21

    const/16 v4, 0xb

    aput-object v3, v14, v4

    const/16 v25, 0x2

    .line 312
    aget-object v3, v14, v25

    if-eqz v3, :cond_0

    const/4 v15, 0x1

    .line 313
    iput-boolean v15, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    .line 316
    :cond_0
    new-instance v3, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    invoke-direct {v3, v2}, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;-><init>(Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;)V

    iput-object v3, v0, Lorg/telegram/ui/StatisticActivity;->overviewChannelData:Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    .line 317
    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->period:Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;->max_date:I

    int-to-long v4, v4

    mul-long v4, v4, v19

    iput-wide v4, v0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    .line 318
    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;->min_date:I

    int-to-long v3, v3

    mul-long v3, v3, v19

    iput-wide v3, v0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    .line 320
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 324
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->recent_posts_interactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1
    :goto_0
    if-ge v7, v4, :cond_3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stats$PostInteractionCounters;

    .line 326
    new-instance v11, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-direct {v11}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;-><init>()V

    .line 327
    iput-object v8, v11, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/tl/TL_stats$PostInteractionCounters;

    .line 329
    instance-of v12, v8, Lorg/telegram/tgnet/tl/TL_stats$TL_postInteractionCountersMessage;

    if-eqz v12, :cond_2

    .line 330
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v12, v0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v13

    invoke-virtual {v12, v13, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    .line 334
    :cond_2
    instance-of v8, v8, Lorg/telegram/tgnet/tl/TL_stats$TL_postInteractionCountersStory;

    if-eqz v8, :cond_1

    .line 335
    invoke-virtual {v11}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v8, v0, Lorg/telegram/ui/StatisticActivity;->recentStoriesAll:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v8, v0, Lorg/telegram/ui/StatisticActivity;->recentStoriesIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v11

    invoke-virtual {v8, v11, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 342
    :cond_3
    new-instance v2, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/StatisticActivity;Ljava/util/List;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 349
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 350
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {v2}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v34

    .line 351
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 352
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v27

    iget-wide v2, v0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v2, v2

    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1

    move-wide/from16 v28, v2

    move/from16 v37, v4

    invoke-virtual/range {v27 .. v45}, Lorg/telegram/messenger/MessagesStorage;->getMessages(JJZIIIIIIIJIZZLorg/telegram/messenger/Timer;)V

    .line 355
    :cond_4
    new-instance v2, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, v14}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    move/from16 v26, v11

    const/16 v16, 0x3

    const/16 v17, 0x7

    const/16 v18, 0x6

    const-wide/16 v19, 0x3e8

    const/16 v21, 0xa

    const/16 v22, 0x8

    .line 376
    :goto_1
    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;

    if-eqz v2, :cond_d

    .line 378
    check-cast v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;

    .line 380
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->growth_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    sget v3, Lorg/telegram/messenger/R$string;->GrowthChartTitle:I

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-static {v2, v3, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v2

    .line 381
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->members_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v4, "GroupMembersChartTitle"

    sget v5, Lorg/telegram/messenger/R$string;->GroupMembersChartTitle:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v3

    .line 382
    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->new_members_by_source_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v5, "NewMembersBySourceChartTitle"

    sget v6, Lorg/telegram/messenger/R$string;->NewMembersBySourceChartTitle:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x2

    invoke-static {v4, v5, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v4

    .line 383
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->languages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v6, "MembersLanguageChartTitle"

    sget v7, Lorg/telegram/messenger/R$string;->MembersLanguageChartTitle:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move/from16 v7, v26

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;IZ)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v5

    .line 384
    iget-object v6, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->messages_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v7, "MessagesChartTitle"

    sget v9, Lorg/telegram/messenger/R$string;->MessagesChartTitle:I

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v6

    .line 385
    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->actions_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v9, "ActionsChartTitle"

    sget v11, Lorg/telegram/messenger/R$string;->ActionsChartTitle:I

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v7

    .line 386
    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_hours_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    sget v9, Lorg/telegram/messenger/R$string;->TopHoursChartTitle:I

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v8

    .line 387
    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->weekdays_graph:Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;

    const-string v10, "TopDaysOfWeekChartTitle"

    sget v11, Lorg/telegram/messenger/R$string;->TopDaysOfWeekChartTitle:I

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/StatisticActivity;->createViewData(Lorg/telegram/tgnet/tl/TL_stats$StatsGraph;Ljava/lang/String;I)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v9

    move/from16 v10, v22

    new-array v10, v10, [Lorg/telegram/ui/StatisticActivity$ChartViewData;

    aput-object v2, v10, v15

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/16 v25, 0x2

    aput-object v4, v10, v25

    aput-object v5, v10, v16

    aput-object v6, v10, v11

    aput-object v7, v10, p2

    aput-object v8, v10, v18

    aput-object v9, v10, v17

    .line 389
    aget-object v3, v10, v18

    if-eqz v3, :cond_6

    .line 390
    iput-boolean v2, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useHourFormat:Z

    .line 392
    :cond_6
    aget-object v3, v10, v17

    if-eqz v3, :cond_7

    .line 393
    iput-boolean v2, v3, Lorg/telegram/ui/StatisticActivity$ChartViewData;->useWeekFormat:Z

    .line 396
    :cond_7
    new-instance v2, Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    invoke-direct {v2, v1}, Lorg/telegram/ui/StatisticActivity$OverviewChatData;-><init>(Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;)V

    iput-object v2, v0, Lorg/telegram/ui/StatisticActivity;->overviewChatData:Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    .line 397
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->period:Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;

    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;->max_date:I

    int-to-long v3, v3

    mul-long v3, v3, v19

    iput-wide v3, v0, Lorg/telegram/ui/StatisticActivity;->maxDateOverview:J

    .line 398
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stats$TL_statsDateRangeDays;->min_date:I

    int-to-long v2, v2

    mul-long v2, v2, v19

    iput-wide v2, v0, Lorg/telegram/ui/StatisticActivity;->minDateOverview:J

    .line 400
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_posters:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v15

    .line 401
    :goto_2
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 402
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_posters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGroupTopPoster;

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lorg/telegram/ui/StatisticActivity$MemberData;->from(Lorg/telegram/tgnet/tl/TL_stats$TL_statsGroupTopPoster;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;

    move-result-object v3

    .line 403
    iget-object v4, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v21

    if-ge v4, v5, :cond_8

    .line 404
    iget-object v4, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move/from16 v21, v5

    goto :goto_2

    .line 408
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_a

    .line 409
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 410
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->topMembersVisible:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topMembersAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    :cond_a
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_admins:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v15

    .line 415
    :goto_3
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 416
    iget-object v3, v0, Lorg/telegram/ui/StatisticActivity;->topAdmins:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_admins:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGroupTopAdmin;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lorg/telegram/ui/StatisticActivity$MemberData;->from(Lorg/telegram/tgnet/tl/TL_stats$TL_statsGroupTopAdmin;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 420
    :cond_b
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 421
    :goto_4
    iget-object v2, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_c

    .line 422
    iget-object v2, v0, Lorg/telegram/ui/StatisticActivity;->topInviters:Ljava/util/ArrayList;

    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->top_inviters:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stats$TL_statsGroupTopInviter;

    iget-object v4, v1, Lorg/telegram/tgnet/tl/TL_stats$TL_megagroupStats;->users:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lorg/telegram/ui/StatisticActivity$MemberData;->from(Lorg/telegram/tgnet/tl/TL_stats$TL_statsGroupTopInviter;Ljava/util/ArrayList;)Lorg/telegram/ui/StatisticActivity$MemberData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 426
    :cond_c
    new-instance v1, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, v10}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/StatisticActivity;[Lorg/telegram/ui/StatisticActivity$ChartViewData;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method private loadMessages()V
    .locals 6

    .line 2510
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 2511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    .line 2512
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    iget v2, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2513
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2516
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object v4, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_0

    .line 2517
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x32

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2524
    :cond_1
    :goto_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    const/4 v1, 0x1

    .line 2525
    iput-boolean v1, p0, Lorg/telegram/ui/StatisticActivity;->messagesIsLoading:Z

    .line 2527
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadStatistic()V
    .locals 11

    .line 280
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stats$TL_getMegagroupStats;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stats$TL_getMegagroupStats;-><init>()V

    .line 287
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stats$TL_getMegagroupStats;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 289
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;-><init>()V

    .line 291
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    goto :goto_0

    .line 294
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->stats_dc:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v0

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private prepareStoriesLoadedItems()V
    .locals 6

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 509
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v3}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->findMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 511
    iput-object v4, v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    .line 512
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static putColorFromData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V
    .locals 14

    if-eqz p0, :cond_3

    .line 2871
    iget-object p0, p0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz p0, :cond_3

    .line 2872
    iget-object p0, p0, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Charts/data/ChartData$Line;

    .line 2873
    iget v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    if-ltz v4, :cond_0

    .line 2874
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2875
    iget v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeNight()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorDark:I

    goto :goto_1

    :cond_1
    iget v5, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    :goto_1
    invoke-static {v4, v5, v1}, Lorg/telegram/ui/ActionBar/Theme;->setColor(IIZ)V

    .line 2876
    iget v4, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    iget v5, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->color:I

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDefaultColor(II)V

    .line 2878
    :cond_2
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v11, 0x0

    iget v13, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->colorKey:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v12, p2

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private recolorRecyclerItem(Landroid/view/View;)V
    .locals 4

    .line 2571
    instance-of v0, p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    if-eqz v0, :cond_0

    .line 2572
    check-cast p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->recolor()V

    return-void

    .line 2573
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-eqz v0, :cond_1

    .line 2574
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2575
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2576
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const/4 v0, 0x1

    .line 2577
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 2578
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2579
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    if-eqz v0, :cond_2

    .line 2580
    check-cast p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    invoke-virtual {p1}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->recolor()V

    return-void

    .line 2581
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    if-eqz v0, :cond_3

    .line 2582
    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->-$$Nest$mupdateColors(Lorg/telegram/ui/StatisticActivity$OverviewCell;)V

    :cond_3
    return-void
.end method

.method private sortAllLoadedData()V
    .locals 2

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->recentStoriesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->recentAllSortedDataLoaded:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .line 1064
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 612
    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    invoke-direct {v0}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->sharedUi:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    .line 613
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, v1, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 614
    iget v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v1, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_0

    .line 615
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-eqz v3, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v10

    .line 616
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isBoostSupported(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v13

    if-eqz v2, :cond_2

    .line 617
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_revenue:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stars_revenue:Z

    if-eqz v3, :cond_2

    :cond_1
    move v14, v11

    goto :goto_1

    :cond_2
    move v14, v10

    .line 619
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v12, :cond_3

    .line 621
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v5, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->POLL:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v6, Lorg/telegram/messenger/R$string;->Statistics:I

    invoke-static {v9, v4, v5, v6}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_3
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v5, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->BOOSTS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v6, Lorg/telegram/messenger/R$string;->Boosts:I

    invoke-static {v9, v4, v5, v6}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_4

    .line 625
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v5, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->MONETIZATION:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v6, Lorg/telegram/messenger/R$string;->Monetization:I

    invoke-static {v9, v4, v5, v6}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_4
    new-array v4, v10, [Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/glass/GlassTabView;

    iput-object v3, v1, Lorg/telegram/ui/StatisticActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    .line 629
    new-instance v3, Lorg/telegram/ui/MainTabsLayout;

    invoke-direct {v3, v9}, Lorg/telegram/ui/MainTabsLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/StatisticActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    const/high16 v4, 0x41400000    # 12.0f

    .line 630
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    move v3, v10

    .line 632
    :goto_2
    iget-object v4, v1, Lorg/telegram/ui/StatisticActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 633
    aget-object v4, v4, v3

    .line 636
    new-instance v5, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v3}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/StatisticActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v5, v1, Lorg/telegram/ui/StatisticActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    iget-object v6, v1, Lorg/telegram/ui/StatisticActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 642
    iget-object v5, v1, Lorg/telegram/ui/StatisticActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v5, v4, v11, v10}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 645
    :cond_5
    new-instance v3, Lorg/telegram/ui/StatisticActivity$3;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/StatisticActivity$3;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 673
    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz v13, :cond_6

    .line 675
    new-instance v3, Lorg/telegram/ui/ChannelBoostLayout;

    iget-wide v4, v1, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v4, v4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Lorg/telegram/ui/ChannelBoostLayout;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v1, Lorg/telegram/ui/StatisticActivity;->boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

    :cond_6
    if-eqz v14, :cond_8

    move-object v3, v0

    .line 678
    new-instance v0, Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v3

    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide v6, v1, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v6, v6

    move-object v1, v4

    move-wide/from16 v19, v6

    move-object v7, v5

    move-wide/from16 v4, v19

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_revenue:Z

    if-eqz v7, :cond_7

    move v7, v11

    goto :goto_3

    :cond_7
    move v7, v10

    :goto_3
    iget-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stars_revenue:Z

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ChannelMonetizationLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    move-object v1, v2

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->monetizationLayout:Lorg/telegram/ui/ChannelMonetizationLayout;

    .line 679
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChannelMonetizationLayout;->setActionBar(Lorg/telegram/ui/ActionBar/ActionBar;)V

    .line 681
    :cond_8
    iget-object v6, v1, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v0, Lorg/telegram/ui/StatisticActivity$4;

    move v2, v12

    move v3, v13

    move v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/StatisticActivity$4;-><init>(Lorg/telegram/ui/StatisticActivity;ZZZLandroid/widget/FrameLayout;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    if-eqz v3, :cond_9

    .line 722
    iget-boolean v0, v1, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    if-nez v0, :cond_9

    move v0, v11

    goto :goto_4

    :cond_9
    move v0, v10

    :goto_4
    iput-boolean v0, v1, Lorg/telegram/ui/StatisticActivity;->showTabs:Z

    if-eqz v0, :cond_a

    .line 723
    iget-boolean v4, v1, Lorg/telegram/ui/StatisticActivity;->startFromBoosts:Z

    if-eqz v4, :cond_a

    .line 724
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    goto :goto_6

    :cond_a
    if-eqz v0, :cond_c

    .line 725
    iget-boolean v0, v1, Lorg/telegram/ui/StatisticActivity;->startFromMonetization:Z

    if-eqz v0, :cond_c

    .line 726
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-boolean v4, v1, Lorg/telegram/ui/StatisticActivity;->onlyBoostsStat:Z

    if-nez v4, :cond_b

    if-eqz v3, :cond_b

    move v3, v11

    goto :goto_5

    :cond_b
    move v3, v10

    :goto_5
    add-int v12, v2, v3

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 728
    :cond_c
    :goto_6
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v1, v0, v10}, Lorg/telegram/ui/StatisticActivity;->selectTab(IZ)V

    .line 731
    new-instance v0, Lorg/telegram/ui/StatisticActivity$5;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/StatisticActivity$5;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;)V

    .line 778
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 780
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 781
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v3, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 782
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMatchParent()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 784
    iget-boolean v2, v1, Lorg/telegram/ui/StatisticActivity;->showTabs:Z

    if-eqz v2, :cond_d

    .line 785
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    const/16 v3, 0x48

    const/16 v4, 0x51

    const/16 v6, 0x158

    invoke-static {v6, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    new-instance v2, Lorg/telegram/ui/StatisticActivity$6;

    invoke-direct {v2, v1}, Lorg/telegram/ui/StatisticActivity$6;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 793
    :cond_d
    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 794
    new-instance v2, Lorg/telegram/ui/StatisticActivity$7;

    invoke-direct {v2, v1, v9}, Lorg/telegram/ui/StatisticActivity$7;-><init>(Lorg/telegram/ui/StatisticActivity;Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 806
    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setSections(Z)V

    .line 807
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 810
    new-instance v2, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v3, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-direct {v2, v3, v0, v4}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v2, v1, Lorg/telegram/ui/StatisticActivity;->listBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 811
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

    if-eqz v2, :cond_e

    .line 812
    new-instance v3, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v4, v2, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v6, v4}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-direct {v3, v4, v0, v6}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v3, v2, Lorg/telegram/ui/ChannelBoostLayout;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 813
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->boostLayout:Lorg/telegram/ui/ChannelBoostLayout;

    iget-object v2, v2, Lorg/telegram/ui/ChannelBoostLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/StatisticActivity$8;

    invoke-direct {v3, v1}, Lorg/telegram/ui/StatisticActivity$8;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 823
    :cond_e
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->monetizationLayout:Lorg/telegram/ui/ChannelMonetizationLayout;

    if-eqz v2, :cond_f

    .line 824
    new-instance v3, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v4, v2, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, v4}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-direct {v3, v4, v0, v6}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v3, v2, Lorg/telegram/ui/ChannelMonetizationLayout;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 825
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->monetizationLayout:Lorg/telegram/ui/ChannelMonetizationLayout;

    iget-object v2, v2, Lorg/telegram/ui/ChannelMonetizationLayout;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v3, Lorg/telegram/ui/StatisticActivity$9;

    invoke-direct {v3, v1}, Lorg/telegram/ui/StatisticActivity$9;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 836
    :cond_f
    new-instance v2, Lorg/telegram/ui/StatisticActivity$10;

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/StatisticActivity$10;-><init>(Lorg/telegram/ui/StatisticActivity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    iput-object v2, v1, Lorg/telegram/ui/StatisticActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 878
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 880
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    .line 881
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 883
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 884
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 885
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$raw;->statistic_preload:I

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 886
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 888
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 889
    invoke-virtual {v0, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 890
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 891
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 892
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 893
    sget v3, Lorg/telegram/messenger/R$string;->LoadingStats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 896
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 897
    invoke-virtual {v3, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 898
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 899
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 900
    sget v6, Lorg/telegram/messenger/R$string;->LoadingStatsDescription:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 903
    iget-object v6, v1, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/StatisticActivity;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v17, 0x0

    const/16 v18, 0x14

    const/16 v12, 0x78

    const/16 v13, 0x78

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    iget-object v6, v1, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v18, 0xa

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/4 v6, -0x2

    invoke-static {v6, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    const/16 v17, 0x0

    const/high16 v18, 0x41f00000    # 30.0f

    const/16 v12, 0xf0

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x11

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-nez v0, :cond_10

    .line 911
    new-instance v0, Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-direct {v0, v1}, Lorg/telegram/ui/StatisticActivity$Adapter;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    .line 913
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v1, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 914
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 915
    iget-object v3, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 916
    new-instance v0, Lorg/telegram/ui/StatisticActivity$11;

    invoke-direct {v0, v1}, Lorg/telegram/ui/StatisticActivity$11;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->animator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 922
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 924
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/StatisticActivity$12;

    invoke-direct {v6, v1}, Lorg/telegram/ui/StatisticActivity$12;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 939
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 967
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1007
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1009
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-direct {v0, v9, v3, v10}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 1010
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    xor-int/2addr v5, v11

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 1011
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const v5, 0x3f666666    # 0.9f

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1012
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1013
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setRightAvatarPadding(I)V

    .line 1014
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-boolean v6, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    const/4 v7, 0x0

    if-nez v6, :cond_11

    const/high16 v6, 0x42480000    # 50.0f

    move v15, v6

    goto :goto_7

    :cond_11
    move v15, v7

    :goto_7
    const/high16 v17, 0x42200000    # 40.0f

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v14, 0x33

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, v1, Lorg/telegram/ui/StatisticActivity;->chatId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1018
    iget-object v5, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1019
    iget-object v5, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-nez v0, :cond_12

    const-string v0, ""

    goto :goto_8

    :cond_12
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_8
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->hideSubtitle()V

    .line 1022
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v5, v10}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/StatisticActivity$13;

    invoke-direct {v5, v1}, Lorg/telegram/ui/StatisticActivity$13;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1032
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitleColors(II)V

    .line 1033
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1034
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1035
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1036
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1038
    iget-boolean v0, v1, Lorg/telegram/ui/StatisticActivity;->initialLoading:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_13

    .line 1039
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1040
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1041
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_9

    .line 1044
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->showProgressbar:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1045
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->progressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1050
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/StatisticActivity;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->mainTabs(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    const/high16 v2, 0x41e00000    # 28.0f

    .line 1051
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const v2, 0x40f54fdf    # 7.666f

    .line 1052
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 1053
    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1056
    invoke-direct {v1}, Lorg/telegram/ui/StatisticActivity;->checkUi_listPaddings()V

    .line 1058
    new-instance v0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    iget-object v2, v1, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget-object v4, v1, Lorg/telegram/ui/StatisticActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroidx/recyclerview/widget/LinearLayoutManager;Lorg/telegram/ui/StatisticActivity-IA;)V

    iput-object v0, v1, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    .line 1059
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 522
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    .line 523
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    .line 524
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-ne p1, p2, :cond_10

    .line 525
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->prepareStoriesLoadedItems()V

    .line 526
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->sortAllLoadedData()V

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz p1, :cond_10

    .line 528
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 529
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    return-void

    .line 532
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    const/4 v2, 0x2

    if-ne p1, p2, :cond_8

    .line 533
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_6

    .line 534
    :cond_1
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p2, 0x1

    .line 535
    aget-object p3, p3, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 536
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    .line 537
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 538
    :goto_0
    instance-of v4, v3, Lorg/telegram/ui/ChatEditActivity;

    if-eqz v4, :cond_3

    .line 539
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 541
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    .line 542
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    if-eqz p3, :cond_7

    .line 544
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 545
    :cond_5
    instance-of p3, v2, Lorg/telegram/ui/ProfileActivity;

    if-eqz p3, :cond_6

    .line 546
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-interface {p3, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 548
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 549
    instance-of p3, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz p3, :cond_10

    .line 550
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void

    .line 553
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 554
    instance-of p2, v2, Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_10

    .line 555
    invoke-static {v2, p1, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void

    .line 558
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    if-ne p1, p2, :cond_f

    const/16 p1, 0xa

    .line 559
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 560
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    if-ne p1, p2, :cond_10

    .line 561
    aget-object p1, p3, v2

    check-cast p1, Ljava/util/ArrayList;

    .line 562
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v2, v1

    :goto_2
    if-ge v2, p3, :cond_b

    .line 565
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 566
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity;->recentPostIdtoIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ltz v4, :cond_a

    .line 567
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {v5}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 568
    iget-boolean v5, v3, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-eqz v5, :cond_9

    .line 569
    iget-object v3, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 571
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iput-object v3, v4, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 576
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 578
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 579
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_d

    .line 581
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsAll:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    .line 582
    iget-object p3, p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->message:Lorg/telegram/messenger/MessageObject;

    if-nez p3, :cond_c

    .line 583
    invoke-virtual {p2}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/StatisticActivity;->loadFromId:I

    goto :goto_5

    .line 586
    :cond_c
    iget-object p3, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 590
    :cond_d
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recentPostsLoaded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_e

    .line 591
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadMessages()V

    .line 593
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->sortAllLoadedData()V

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    if-eqz p1, :cond_10

    .line 595
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 596
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->diffUtilsCallback:Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;

    invoke-virtual {p1}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->update()V

    return-void

    .line 599
    :cond_f
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_10

    .line 600
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 601
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v0, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_10

    .line 602
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_10

    .line 603
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 604
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadStatistic()V

    :cond_10
    :goto_6
    return-void
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 3541
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 42

    move-object/from16 v0, p0

    .line 2753
    new-instance v8, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lorg/telegram/ui/StatisticActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/StatisticActivity;)V

    .line 2778
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2780
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v3, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    aput-object v3, v2, v12

    const-string v4, "message"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v23

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move/from16 v27, v32

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v19

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2783
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    const-string v4, "views"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v1

    move-object/from16 v27, v2

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v24

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2784
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    const-string v4, "shares"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v23

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move/from16 v27, v41

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v19

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    const-string v4, "likes"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v37

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    move-object/from16 v34, v1

    move-object/from16 v36, v2

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v33

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2786
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    const-string v3, "date"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v37

    move-object/from16 v34, v1

    move-object/from16 v36, v2

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v33

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2787
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    aput-object v3, v2, v12

    const-string v13, "textView"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    move-object/from16 v25, v1

    move-object/from16 v27, v2

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v24

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2789
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v9, v32

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2790
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2791
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignatureAlpha:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2792
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartHintLine:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActiveLine:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartInactivePickerChart:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2795
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActivePickerChart:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2797
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2798
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2799
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2801
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object v7, v8

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v7

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2802
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v7

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2803
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v7

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2804
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v7

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    move-object v15, v1

    goto :goto_0

    :cond_0
    move-object v15, v2

    :goto_0
    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v2

    :cond_1
    move-object/from16 v24, v2

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v1, v2

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    const/16 v31, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;ILjava/lang/Object;)V

    move-object/from16 v1, v23

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2808
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v6, 0x0

    move-object v7, v8

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLineEmpty:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v7

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v3, v2, v12

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v27

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v24, v1

    move-object/from16 v26, v2

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v23

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2810
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v24, v1

    move-object/from16 v26, v2

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v23

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2811
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    move-object/from16 v24, v1

    move-object/from16 v26, v2

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v23

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object/from16 v24, v1

    move-object/from16 v26, v2

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v23

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2813
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v1, v11, [Ljava/lang/Class;

    aput-object v3, v1, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/StatisticActivity;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v1, v11, [Ljava/lang/Class;

    aput-object v3, v1, v12

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2816
    iget-boolean v1, v0, Lorg/telegram/ui/StatisticActivity;->isMegagroup:Z

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x6

    if-eqz v1, :cond_7

    :goto_1
    if-ge v12, v5, :cond_13

    if-nez v12, :cond_2

    .line 2820
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_2
    if-ne v12, v11, :cond_3

    .line 2822
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->groupMembersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_3
    if-ne v12, v4, :cond_4

    .line 2824
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->newMembersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_4
    if-ne v12, v3, :cond_5

    .line 2826
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->membersLanguageData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    :cond_5
    if-ne v12, v2, :cond_6

    .line 2828
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->messagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_2

    .line 2830
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->actionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 2832
    :goto_2
    invoke-static {v1, v10, v8}, Lorg/telegram/ui/StatisticActivity;->putColorFromData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    const/16 v1, 0xc

    if-ge v12, v1, :cond_13

    if-nez v12, :cond_8

    .line 2838
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->growthData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_8
    if-ne v12, v11, :cond_9

    .line 2840
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->followersData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_9
    if-ne v12, v4, :cond_a

    .line 2842
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->interactionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_a
    if-ne v12, v3, :cond_b

    .line 2844
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->ivInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_b
    if-ne v12, v2, :cond_c

    .line 2846
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->viewsBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_c
    const/4 v1, 0x5

    if-ne v12, v1, :cond_d

    .line 2848
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->newFollowersBySourceData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_d
    if-ne v12, v5, :cond_e

    .line 2850
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->notificationsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_e
    const/4 v1, 0x7

    if-ne v12, v1, :cond_f

    .line 2852
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->topHoursData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_f
    const/16 v1, 0x8

    if-ne v12, v1, :cond_10

    .line 2854
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->languagesData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_10
    const/16 v1, 0x9

    if-ne v12, v1, :cond_11

    .line 2856
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->reactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    :cond_11
    const/16 v1, 0xa

    if-ne v12, v1, :cond_12

    .line 2858
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->storyInteractionsData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    goto :goto_4

    .line 2860
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/StatisticActivity;->storyReactionsByEmotionData:Lorg/telegram/ui/StatisticActivity$ChartViewData;

    .line 2863
    :goto_4
    invoke-static {v1, v10, v8}, Lorg/telegram/ui/StatisticActivity;->putColorFromData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_13
    return-object v10
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 3535
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 3536
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3546
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz v0, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-nez v1, :cond_0

    iget v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->currentProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3549
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 255
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 256
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 257
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 258
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 259
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    .line 260
    iget-wide v1, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    neg-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesList(JI)Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->link()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/StatisticActivity;->storiesListId:I

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 265
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->loadStatistic()V

    goto :goto_0

    .line 267
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/StatisticActivity;->chatId:J

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 269
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 488
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostByChannelCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 489
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 490
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 491
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->progressDialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_1

    .line 498
    iget v1, p0, Lorg/telegram/ui/StatisticActivity;->storiesListId:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->unlink(I)V

    .line 500
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 503
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity;->checkUi_listPaddings()V

    return-void
.end method

.method public selectTab(IZ)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3595
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3596
    aget-object v2, v2, v1

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 3597
    :goto_1
    invoke-virtual {v2, v3, p2}, Lorg/telegram/ui/Components/glass/GlassTabView;->setSelected(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGestureSelectedOverride(FZ)V
    .locals 3

    const/4 v0, 0x0

    .line 3602
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    int-to-float v1, v0

    sub-float/2addr v1, p1

    .line 3603
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 3604
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p2}, Lorg/telegram/ui/Components/glass/GlassTabView;->setGestureSelectedOverride(FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3606
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
