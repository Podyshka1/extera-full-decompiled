.class public Lorg/telegram/ui/FilteredSearchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FilteredSearchView$MessageHashId;,
        Lorg/telegram/ui/FilteredSearchView$FloatingDateView;,
        Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;,
        Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;,
        Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;,
        Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;,
        Lorg/telegram/ui/FilteredSearchView$Delegate;,
        Lorg/telegram/ui/FilteredSearchView$UiCallback;
    }
.end annotation


# static fields
.field private static arrowSpan:[Landroid/text/SpannableStringBuilder;


# instance fields
.field adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final animatorFloatingDataVisible:Lme/vkryl/android/animator/BoolAnimator;

.field blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

.field clearCurrentResultsRunnable:Ljava/lang/Runnable;

.field private columnsCount:I

.field private currentDataQuery:Ljava/lang/String;

.field currentIncludeFolder:Z

.field currentSearchDialogId:J

.field currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field currentSearchMaxDate:J

.field currentSearchMinDate:J

.field currentSearchString:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

.field private dialogsAdapter:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

.field emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private endReached:Z

.field private firstLoading:Z

.field private final floatingDateView:Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

.field private final hideFloatingDateRunnable:Ljava/lang/Runnable;

.field ignoreRequestLayout:Z

.field private isLoading:Z

.field lastAccount:I

.field lastMessagesSearchString:Ljava/lang/String;

.field lastSearchFilterQueryString:Ljava/lang/String;

.field public final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field localTipArchive:Z

.field localTipChats:Ljava/util/ArrayList;

.field localTipDates:Ljava/util/ArrayList;

.field private final messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

.field public messages:Ljava/util/ArrayList;

.field public messagesById:Landroid/util/SparseArray;

.field private nextSearchRate:I

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field parentActivity:Landroid/app/Activity;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private photoViewerClassGuid:I

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field public final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private requestIndex:I

.field searchRunnable:Ljava/lang/Runnable;

.field public sectionArrays:Ljava/util/HashMap;

.field public sections:Ljava/util/ArrayList;

.field private sharedAudioAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

.field private sharedDocumentsAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

.field private sharedLinksAdapter:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

.field private sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

.field private sharedVoiceAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

.field private totalCount:I

.field private uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

.field private useFromUserAsAvatar:Z


# direct methods
.method public static synthetic $r8$lambda$Q3A6jqqdxtvcxhzbnCP5VFhOzOs(Lorg/telegram/ui/FilteredSearchView;ILjava/lang/String;IZLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/FilteredSearchView;->lambda$search$3(ILjava/lang/String;IZLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S_nvVtLX13CuMmcUwsjZhzWU9qw(Lorg/telegram/ui/FilteredSearchView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilteredSearchView;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9QDTIl97olifM9X_oLVRcjGBaw(Lorg/telegram/ui/FilteredSearchView;JLjava/lang/String;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;IJJZZLjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/FilteredSearchView;->lambda$search$4(JLjava/lang/String;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;IJJZZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gfwpwH75YmnIzUswuoB96J_w0kQ(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->lambda$getThemeDescriptions$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$iSl7F2nFQxr8WhYuaBQ4ykTIyBg(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$jOzbecppUHJcYzzZDIZEEfOsh8w(Lorg/telegram/ui/FilteredSearchView;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;IZLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p14}, Lorg/telegram/ui/FilteredSearchView;->lambda$search$2(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;IZLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchatPreviewDelegate(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolumnsCount(Lorg/telegram/ui/FilteredSearchView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDataQuery(Lorg/telegram/ui/FilteredSearchView;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendReached(Lorg/telegram/ui/FilteredSearchView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/FilteredSearchView;->endReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingDateView(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$FloatingDateView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLoading(Lorg/telegram/ui/FilteredSearchView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/FilteredSearchView;->isLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageHashIdTmp(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextSearchRate(Lorg/telegram/ui/FilteredSearchView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/FilteredSearchView;->nextSearchRate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharedPhotoVideoAdapter(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotalCount(Lorg/telegram/ui/FilteredSearchView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuiCallback(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$UiCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuseFromUserAsAvatar(Lorg/telegram/ui/FilteredSearchView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/FilteredSearchView;->useFromUserAsAvatar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideFloatingDateView(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monItemClick(Lorg/telegram/ui/FilteredSearchView;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monItemLongClick(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mopenUrl(Lorg/telegram/ui/FilteredSearchView;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilteredSearchView;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenWebView(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilteredSearchView;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFloatingDateView(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->showFloatingDateView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 136
    new-array v0, v0, [Landroid/text/SpannableStringBuilder;

    sput-object v0, Lorg/telegram/ui/FilteredSearchView;->arrowSpan:[Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 14

    .line 289
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v1, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v5, 0x17c

    const/4 v2, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v1, v3, Lorg/telegram/ui/FilteredSearchView;->animatorFloatingDataVisible:Lme/vkryl/android/animator/BoolAnimator;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->messagesById:Landroid/util/SparseArray;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 115
    iput v0, v3, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    .line 140
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilteredSearchView$1;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilteredSearchView$2;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    iput-object v0, v3, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, v3, Lorg/telegram/ui/FilteredSearchView;->firstLoading:Z

    .line 280
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, v3, Lorg/telegram/ui/FilteredSearchView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 284
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    iput-object v1, v3, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    .line 290
    iput-object p1, v3, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 291
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, v3, Lorg/telegram/ui/FilteredSearchView;->parentActivity:Landroid/app/Activity;

    .line 292
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 293
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FilteredSearchView$3;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V

    iput-object v1, v3, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 321
    new-instance v2, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 334
    new-instance v2, Lorg/telegram/ui/FilteredSearchView$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FilteredSearchView$4;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    .line 368
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lorg/telegram/ui/FilteredSearchView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 369
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 370
    new-instance v2, Lorg/telegram/ui/FilteredSearchView$5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/FilteredSearchView$5;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V

    iput-object v2, v3, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 376
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v4, 0x2

    .line 378
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 379
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSkipDrawSection(Z)V

    .line 380
    new-instance v5, Lorg/telegram/ui/FilteredSearchView$6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/FilteredSearchView$6;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 438
    new-instance v5, Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/FilteredSearchView$FloatingDateView;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/FilteredSearchView$FloatingDateView;->setCustomDate(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x42040000    # 33.0f

    const/16 v9, 0x31

    const/4 v10, 0x0

    const/high16 v11, -0x40000000    # -2.0f

    .line 441
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    new-instance v5, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    invoke-direct {v5, p0}, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    iput-object v5, v3, Lorg/telegram/ui/FilteredSearchView;->dialogsAdapter:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    .line 444
    new-instance v5, Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V

    iput-object v5, v3, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    .line 445
    new-instance v5, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v0}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;I)V

    iput-object v5, v3, Lorg/telegram/ui/FilteredSearchView;->sharedDocumentsAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    .line 446
    new-instance v5, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V

    iput-object v5, v3, Lorg/telegram/ui/FilteredSearchView;->sharedLinksAdapter:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    .line 447
    new-instance v5, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v5, p0, v6, v7}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;I)V

    iput-object v5, v3, Lorg/telegram/ui/FilteredSearchView;->sharedAudioAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    .line 448
    new-instance v5, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;I)V

    iput-object v5, v3, Lorg/telegram/ui/FilteredSearchView;->sharedVoiceAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    .line 450
    new-instance v4, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v4, p1, v2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v4, v3, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 451
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 452
    iget-object p1, v3, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 453
    iget-object p1, v3, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 454
    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->checkUi_floatingDateView()V

    return-void
.end method

.method private checkUi_floatingDateView()V
    .locals 4

    .line 1806
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->animatorFloatingDataVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    .line 1808
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1809
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1810
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static createFromInfoString(Lorg/telegram/messenger/MessageObject;I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    .line 465
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;ZI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static createFromInfoString(Lorg/telegram/messenger/MessageObject;ZI)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 469
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;ZILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static createFromInfoString(Lorg/telegram/messenger/MessageObject;ZILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    .locals 11

    .line 473
    const-string v0, ""

    if-eqz p0, :cond_22

    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_0

    goto/16 :goto_f

    .line 476
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isQuickReply()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    iget p1, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Business/QuickRepliesController;->getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId()I

    move-result p0

    int-to-long p2, p0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 478
    :cond_1
    iget-object p0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    return-object p0

    .line 480
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 481
    iget-boolean p1, p0, Lorg/telegram/messenger/MessageObject;->sponsoredCanReport:Z

    if-eqz p1, :cond_3

    .line 482
    sget p0, Lorg/telegram/messenger/R$string;->SponsoredMessageAd:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 483
    :cond_3
    iget-boolean p0, p0, Lorg/telegram/messenger/MessageObject;->sponsoredRecommended:Z

    if-eqz p0, :cond_4

    .line 484
    sget p0, Lorg/telegram/messenger/R$string;->SponsoredMessage2Recommended:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 486
    :cond_4
    sget p0, Lorg/telegram/messenger/R$string;->SponsoredMessage2:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 489
    :cond_5
    sget-object v1, Lorg/telegram/ui/FilteredSearchView;->arrowSpan:[Landroid/text/SpannableStringBuilder;

    aget-object v2, v1, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_c

    .line 490
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v5, ">"

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    aput-object v2, v1, p2

    const/4 v1, 0x2

    if-nez p2, :cond_6

    .line 493
    sget v2, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    goto :goto_0

    :cond_6
    if-ne p2, v3, :cond_7

    .line 495
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_arrow_mediathin:I

    goto :goto_0

    :cond_7
    if-ne p2, v1, :cond_b

    .line 497
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_arrow_mediabold:I

    .line 501
    :goto_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 502
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez p2, :cond_8

    move v6, v1

    goto :goto_1

    :cond_8
    move v6, v3

    :goto_1
    invoke-direct {v5, v2, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    if-eq p2, v3, :cond_9

    if-ne p2, v1, :cond_a

    :cond_9
    const v1, 0x3f59999a    # 0.85f

    .line 505
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(F)V

    .line 507
    :cond_a
    sget-object v1, Lorg/telegram/ui/FilteredSearchView;->arrowSpan:[Landroid/text/SpannableStringBuilder;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v5, v4, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_b
    return-object v0

    .line 512
    :cond_c
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_f

    .line 513
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v1

    cmp-long p1, v1, v5

    if-ltz p1, :cond_d

    .line 514
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    move-object v2, v7

    :goto_3
    move-object v8, v2

    goto/16 :goto_9

    .line 515
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v1

    cmp-long p1, v1, v5

    if-gez p1, :cond_e

    .line 516
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    move-object v2, p1

    move-object p1, v7

    move-object v8, p1

    goto/16 :goto_9

    :cond_e
    move-object p1, v7

    move-object v2, p1

    goto :goto_3

    .line 519
    :cond_f
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_10

    .line 520
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    goto :goto_4

    :cond_10
    move-object v1, v7

    .line 522
    :goto_4
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v2, v8, v5

    if-eqz v2, :cond_11

    .line 523
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_5

    :cond_11
    move-object v2, v7

    :goto_5
    if-nez v2, :cond_13

    .line 526
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v2, v8, v5

    if-eqz v2, :cond_12

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_6

    :cond_12
    move-object v2, v7

    .line 528
    :cond_13
    :goto_6
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v8, v8, v5

    if-eqz v8, :cond_14

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    goto :goto_7

    :cond_14
    move-object v8, v7

    :goto_7
    if-nez v8, :cond_16

    .line 530
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v5, v8, v5

    if-eqz v5, :cond_15

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    move-object v8, v5

    goto :goto_8

    :cond_15
    move-object v8, v7

    .line 532
    :cond_16
    :goto_8
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_17

    if-nez p1, :cond_17

    move-object p1, v1

    move-object v8, v7

    goto :goto_9

    :cond_17
    move-object p1, v1

    :goto_9
    if-eqz p1, :cond_1b

    if-eqz v8, :cond_1b

    .line 537
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 538
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 539
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-wide v5, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget v8, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v8, p0, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v8

    invoke-virtual {v2, v5, v6, v8, v9}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 541
    invoke-static {p0, v7, v4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_18
    if-nez p3, :cond_19

    move-object p0, v7

    goto :goto_a

    .line 544
    :cond_19
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    :goto_a
    invoke-static {v1, p0, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p0

    .line 545
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 547
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_1a

    goto :goto_b

    :cond_1a
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    :goto_b
    invoke-static {p1, v7, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/16 p3, 0x200a

    .line 548
    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/FilteredSearchView;->arrowSpan:[Landroid/text/SpannableStringBuilder;

    aget-object p2, v2, p2

    .line 549
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 550
    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 551
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v7, v1

    goto :goto_e

    :cond_1b
    if-eqz p1, :cond_1d

    .line 554
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    if-nez p3, :cond_1c

    goto :goto_c

    :cond_1c
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    :goto_c
    invoke-static {p0, v7, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_e

    :cond_1d
    if-eqz v2, :cond_20

    .line 556
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 557
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 558
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-wide v1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget v5, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5, p0, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v5

    invoke-virtual {p2, v1, v2, v5, v6}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 560
    invoke-static {p0, v7, v4}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;Z)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1e
    if-nez p3, :cond_1f

    goto :goto_d

    .line 563
    :cond_1f
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    :goto_d
    invoke-static {p1, v7, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_20
    :goto_e
    if-nez v7, :cond_21

    return-object v0

    :cond_21
    return-object v7

    :cond_22
    :goto_f
    return-object v0
.end method

.method private hideFloatingDateView()V
    .locals 3

    .line 1794
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1795
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->animatorFloatingDataVisible:Lme/vkryl/android/animator/BoolAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$5()V
    .locals 1

    .line 1882
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

    if-eqz v0, :cond_0

    .line 1883
    invoke-virtual {v0}, Lorg/telegram/ui/FilteredSearchView$FloatingDateView;->updateColors()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 284
    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateView()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 2

    .line 322
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void

    .line 324
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v0, :cond_1

    .line 325
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void

    .line 326
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_2

    .line 327
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void

    .line 328
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_3

    .line 329
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void

    .line 330
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_4

    .line 331
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$search$2(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;IZLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    move-object/from16 v1, p8

    move-object/from16 v2, p13

    .line 707
    iget v3, p0, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    if-eq p1, v3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 710
    iput-boolean p1, p0, Lorg/telegram/ui/FilteredSearchView;->isLoading:Z

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 712
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p2, p2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p2, p1, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void

    .line 719
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    .line 721
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 722
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p2, p0, Lorg/telegram/ui/FilteredSearchView;->nextSearchRate:I

    .line 723
    invoke-static {p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v4, v5, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 724
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v4, p1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 725
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v4, p1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    if-nez p5, :cond_2

    .line 727
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 728
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 729
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 730
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 732
    :cond_2
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iput p2, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    .line 733
    iput-object p6, p0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    .line 734
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_5

    move-object/from16 v4, p7

    .line 736
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 737
    iget-object v6, p0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v7, v5, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 739
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 740
    iget-object v7, p0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v7, p0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v6, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v6, p0, Lorg/telegram/ui/FilteredSearchView;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 747
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 748
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/FilteredSearchView;->photoViewerClassGuid:I

    invoke-virtual {v6, v5, v7}, Lorg/telegram/ui/PhotoViewer;->addPhoto(Lorg/telegram/messenger/MessageObject;I)V

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 751
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v4, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    if-le p3, v4, :cond_6

    .line 752
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    .line 754
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v4, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    if-lt p3, v4, :cond_7

    move p3, v3

    goto :goto_1

    :cond_7
    move p3, p1

    :goto_1
    iput-boolean p3, p0, Lorg/telegram/ui/FilteredSearchView;->endReached:Z

    .line 756
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz p3, :cond_e

    if-eqz v1, :cond_d

    .line 758
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    const-wide/16 v6, 0x0

    cmp-long p3, p9, v6

    if-nez p3, :cond_c

    cmp-long p3, p11, v6

    if-nez p3, :cond_c

    .line 759
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget p3, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-ne p3, v3, :cond_8

    .line 762
    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleFiles:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_8
    if-nez p3, :cond_9

    .line 764
    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleMedia:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_9
    if-ne p3, v4, :cond_a

    .line 766
    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleLinks:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_a
    if-ne p3, v5, :cond_b

    .line 768
    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleMusic:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 770
    :cond_b
    sget p3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleVoice:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 772
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v6, p1}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object v6, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 775
    :cond_c
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 780
    :cond_d
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/16 v6, 0x8

    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_3
    if-eqz v1, :cond_15

    .line 786
    iget p3, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-eqz p3, :cond_13

    if-eq p3, v3, :cond_12

    if-eq p3, v4, :cond_11

    if-eq p3, v5, :cond_10

    const/4 v1, 0x5

    if-eq p3, v1, :cond_f

    goto :goto_4

    .line 804
    :cond_f
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->sharedVoiceAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    iput-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 801
    :cond_10
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->sharedAudioAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    iput-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 798
    :cond_11
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->sharedLinksAdapter:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    iput-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 795
    :cond_12
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->sharedDocumentsAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    iput-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 788
    :cond_13
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 789
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    iput-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 791
    :cond_14
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->dialogsAdapter:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iput-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 808
    :cond_15
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->dialogsAdapter:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iput-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 810
    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eq p3, v1, :cond_16

    .line 811
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_16
    if-nez p5, :cond_1e

    .line 815
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_17

    .line 817
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_17
    if-eqz p6, :cond_1b

    .line 819
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    if-lt p3, v5, :cond_1b

    sget p3, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_18

    const-string p3, "saved messages"

    .line 820
    invoke-virtual {p3, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1b

    :cond_18
    move p3, p1

    .line 822
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_1a

    .line 823
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_19

    .line 824
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v4, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_19

    goto :goto_6

    :cond_19
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 830
    :cond_1a
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 833
    :cond_1b
    :goto_6
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 834
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    move-object/from16 v1, p14

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 835
    iput-boolean p1, p0, Lorg/telegram/ui/FilteredSearchView;->localTipArchive:Z

    if-eqz p6, :cond_1d

    .line 836
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    if-lt p3, v5, :cond_1d

    sget p3, Lorg/telegram/messenger/R$string;->ArchiveSearchFilter:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1c

    const-string p3, "archive"

    .line 837
    invoke-virtual {p3, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 838
    :cond_1c
    iput-boolean v3, p0, Lorg/telegram/ui/FilteredSearchView;->localTipArchive:Z

    .line 840
    :cond_1d
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->delegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz p3, :cond_1e

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lorg/telegram/ui/FilteredSearchView;->localTipArchive:Z

    invoke-interface {p3, v0, v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 844
    :cond_1e
    iput-boolean p1, p0, Lorg/telegram/ui/FilteredSearchView;->firstLoading:Z

    const/4 p3, 0x0

    const/4 v0, -0x1

    :goto_7
    if-ge p1, p2, :cond_20

    .line 848
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 849
    instance-of v2, v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_1f

    .line 851
    iget-object p3, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    move v0, p3

    move-object p3, v1

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_20
    if-eqz p3, :cond_21

    .line 856
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 858
    :cond_21
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_22

    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_23

    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    if-eq p1, p2, :cond_24

    if-eqz p3, :cond_24

    .line 860
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/FilteredSearchView$7;

    invoke-direct {p2, p0, p3, v0}, Lorg/telegram/ui/FilteredSearchView$7;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/view/View;I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 911
    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$search$3(ILjava/lang/String;IZLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    .line 695
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p13, :cond_0

    .line 697
    move-object/from16 v0, p12

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 698
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 700
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x1

    move/from16 v7, p1

    invoke-direct {v4, v7, v5, v2, v6}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object/from16 v5, p2

    .line 701
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move/from16 v7, p1

    move-object/from16 v5, p2

    .line 706
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda5;

    move v1, v7

    move-object v7, v5

    move v5, v1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v4, p12

    move-object/from16 v3, p13

    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FilteredSearchView;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;IZLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$search$4(JLjava/lang/String;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;IJJZZLjava/lang/String;I)V
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v7, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    const-wide/16 v4, 0x0

    cmp-long v0, v7, v4

    const/16 v2, 0x14

    const/4 v9, 0x0

    const-wide/16 v17, 0x3e8

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    .line 636
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 637
    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 638
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    if-nez v6, :cond_0

    .line 639
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v2, v6, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_0
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 640
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    cmp-long v2, p6, v4

    if-lez v2, :cond_1

    .line 642
    div-long v11, p6, v17

    long-to-int v2, v11

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    :cond_1
    cmp-long v2, p8, v4

    if-lez v2, :cond_2

    .line 645
    div-long v4, p8, v17

    long-to-int v2, v4

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_date:I

    :cond_2
    if-eqz p10, :cond_3

    .line 647
    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 648
    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 649
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    goto :goto_1

    .line 651
    :cond_3
    iput v9, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    :goto_1
    move-object v13, v0

    :goto_2
    move-object v11, v10

    goto/16 :goto_6

    .line 655
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 656
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 657
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 658
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move v0, v9

    .line 659
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v15, 0x0

    move/from16 v16, p11

    move-object v11, v3

    invoke-virtual/range {v9 .. v16}, Lorg/telegram/messenger/MessagesStorage;->localSearch(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    move-object v10, v12

    goto :goto_3

    :cond_5
    move v0, v9

    .line 662
    :goto_3
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 663
    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 664
    iput-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 665
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    goto :goto_4

    :cond_6
    iget-object v2, v6, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_4
    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    cmp-long v2, p6, v4

    if-lez v2, :cond_7

    .line 667
    div-long v11, p6, v17

    long-to-int v2, v11

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    :cond_7
    cmp-long v2, p8, v4

    if-lez v2, :cond_8

    .line 670
    div-long v4, p8, v17

    long-to-int v2, v4

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->max_date:I

    :cond_8
    if-eqz p10, :cond_9

    .line 672
    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 673
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 674
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 675
    iget v2, v1, Lorg/telegram/ui/FilteredSearchView;->nextSearchRate:I

    iput v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 676
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    .line 677
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_5

    .line 679
    :cond_9
    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 680
    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 681
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 683
    :goto_5
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    move/from16 v0, p11

    .line 684
    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    move-object v13, v9

    goto/16 :goto_2

    .line 688
    :goto_6
    iput-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    move-object/from16 v0, p12

    .line 689
    iput-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->lastSearchFilterQueryString:Ljava/lang/String;

    .line 692
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 693
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    invoke-static {v0, v12}, Lorg/telegram/ui/Adapters/FiltersView;->fillTipDates(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 694
    invoke-static/range {p5 .. p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v0, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda4;

    move/from16 v2, p5

    move-wide/from16 v9, p6

    move/from16 v5, p10

    move/from16 v4, p13

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/FilteredSearchView;ILjava/lang/String;IZLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v13, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 13

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1119
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    move/from16 v2, p4

    invoke-interface {p1, v1, p2, v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    return-void

    .line 1123
    :cond_1
    instance-of v2, p2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v2, :cond_2

    .line 1124
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {p1, v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->goToMessage(Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 1127
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v2, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-nez v2, :cond_3

    .line 1128
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1129
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    const-wide/16 v9, 0x0

    iget-object v11, p0, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move v4, p1

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1130
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/FilteredSearchView;->photoViewerClassGuid:I

    return-void

    :cond_3
    const/4 p1, 0x3

    if-eq v2, p1, :cond_10

    const/4 p1, 0x5

    if-ne v2, p1, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 p1, 0x0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 1136
    instance-of v2, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_11

    .line 1137
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1138
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 1139
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1140
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1141
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1142
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_5

    .line 1144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1147
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    const-wide/16 v10, 0x0

    iget-object v12, p0, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1148
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/FilteredSearchView;->photoViewerClassGuid:I

    return-void

    .line 1150
    :cond_5
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1151
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    const-wide/16 v7, 0x0

    iget-object v9, p0, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1152
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/FilteredSearchView;->photoViewerClassGuid:I

    return-void

    .line 1156
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->parentActivity:Landroid/app/Activity;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 1157
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1158
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 1159
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 1160
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v2, v1, p1, p1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 1161
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    return-void

    .line 1163
    :cond_8
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1164
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    return-void

    :cond_9
    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 1169
    :try_start_0
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_a
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_e

    .line 1171
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v4, :cond_e

    .line 1172
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v3, :cond_c

    .line 1173
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tryReopenTab(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_3

    .line 1176
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createArticleViewer(Z)Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 1178
    :cond_c
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    .line 1179
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/FilteredSearchView;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 1182
    :cond_d
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    :cond_e
    if-nez v3, :cond_f

    .line 1186
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v3

    :cond_f
    if-eqz v3, :cond_11

    .line 1189
    invoke-direct {p0, v3}, Lorg/telegram/ui/FilteredSearchView;->openUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1192
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 1132
    :cond_10
    :goto_2
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p1, :cond_11

    .line 1133
    move-object p1, p2

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    :cond_11
    :goto_3
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 1

    .line 1610
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->showActionMode()V

    .line 1613
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 2

    .line 1571
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowUrlInAlert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZ)V

    return-void

    .line 1574
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 10

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    const/4 v9, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private showFloatingDateView()V
    .locals 3

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1789
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x672

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1790
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->animatorFloatingDataVisible:Lme/vkryl/android/animator/BoolAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 1598
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 1599
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 1601
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    .line 1604
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1881
    new-instance v8, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    .line 1887
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1888
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1891
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v3, v4

    const-string v6, "nameTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move/from16 v27, v32

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v6, "dateTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v6, "progressView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_startStopLoadIcon:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move/from16 v27, v41

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1897
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string/jumbo v6, "statusImageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v37

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v38, 0x0

    move-object/from16 v34, v0

    move-object/from16 v36, v3

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move/from16 v27, v41

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v23

    sget v50, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move/from16 v27, v50

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string/jumbo v7, "thumbImageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v23

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIcon:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v5, "extTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v23

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_files_iconText:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const-string v5, "progressBar"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v23

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/16 v21, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v5, v3, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v37

    move-object/from16 v34, v0

    move-object/from16 v36, v3

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    new-instance v42, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v44, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v46

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v47, 0x0

    move-object/from16 v43, v0

    move-object/from16 v45, v3

    invoke-direct/range {v42 .. v50}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    sget-object v28, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v0

    move-object/from16 v27, v3

    move/from16 v31, v32

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    const/16 v25, 0x0

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1910
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v5, v3, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v37

    move-object/from16 v34, v0

    move-object/from16 v36, v3

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1911
    new-instance v42, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v44, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v46

    move-object/from16 v43, v0

    move-object/from16 v45, v3

    invoke-direct/range {v42 .. v50}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string/jumbo v7, "titleTextPaint"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x0

    const/16 v26, 0x0

    move-object/from16 v25, v0

    move-object/from16 v27, v3

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const/16 v25, 0x0

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v7, "letterDrawable"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholderText:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1916
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v5, v3, v4

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v23

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholder:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v0, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v13, v0, v3

    new-array v14, v2, [Ljava/lang/Class;

    const-class v0, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v0, v14, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v0, v5, v4

    const-string/jumbo v7, "textView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v28

    move-object/from16 v25, v3

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v24

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v0, v5, v4

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v28

    const/16 v26, 0x0

    move-object/from16 v25, v3

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v8, v5, v4

    const-class v9, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v9, v5, v2

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v25, 0x0

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1926
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v9, v5, v2

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretIcon:I

    const/16 v23, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v9, v5, v2

    new-array v11, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    aput-object v12, v11, v4

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    aput-object v12, v11, v2

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    const/4 v11, 0x3

    new-array v12, v11, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v4

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable2:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v3

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedIcon:I

    const/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v34, v0

    move-object/from16 v36, v5

    move-object/from16 v38, v12

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v9, v5, v2

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v13, v12, v4

    aget-object v12, v12, v2

    new-array v14, v11, [Landroid/graphics/Paint;

    aput-object v13, v14, v4

    aput-object v12, v14, v2

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    aput-object v12, v14, v3

    const/16 v40, 0x0

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    move-object/from16 v34, v0

    move-object/from16 v36, v5

    move-object/from16 v38, v14

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v9, v5, v2

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v13, v12, v4

    aget-object v12, v12, v2

    new-array v11, v11, [Landroid/graphics/Paint;

    aput-object v13, v11, v4

    aput-object v12, v11, v2

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    aput-object v12, v11, v3

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    move-object/from16 v34, v0

    move-object/from16 v36, v5

    move-object/from16 v38, v11

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v37, v11, v2

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message_threeLines:I

    const/16 v38, 0x0

    move-object/from16 v34, v0

    move-object/from16 v36, v5

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v37, v11, v4

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    move-object/from16 v34, v0

    move-object/from16 v36, v5

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v37, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    move-object/from16 v34, v0

    move-object/from16 v36, v5

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1934
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    move/from16 v27, v26

    const/16 v26, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v0

    move-object/from16 v23, v5

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1936
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1937
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_date:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabletSelectedOverlay:I

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentCheck:I

    const/16 v23, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1941
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    new-array v11, v3, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v4

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v2

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentReadCheck:I

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentClock:I

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentError:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v8, v5, v4

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentErrorIcon:I

    const/16 v23, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v9, v5, v2

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedCheck:I

    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v24, v11

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1946
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v8, v3, v4

    aput-object v9, v3, v2

    new-array v5, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v5, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1947
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v8, v3, v4

    new-array v5, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v5, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_muteIcon:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v8, v3, v4

    new-array v5, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v9, v5, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_mentionIcon:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v8, v3, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v8, v3, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1953
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v8, v3, v4

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v2, [Ljava/lang/Class;

    aput-object v8, v14, v4

    const/4 v13, 0x0

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v14, v2, [Ljava/lang/Class;

    aput-object v8, v14, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    move/from16 v19, v18

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1956
    new-instance v42, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v44, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v8, v3, v4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v46

    move-object/from16 v43, v0

    move-object/from16 v45, v3

    invoke-direct/range {v42 .. v50}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1958
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v14, v2, [Ljava/lang/Class;

    const-class v0, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v0, v14, v4

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v15

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v14, v3, v5

    new-array v15, v2, [Ljava/lang/Class;

    aput-object v0, v15, v4

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v25, v0

    move/from16 v31, v32

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10
.end method

.method public messagesDeleted(JLjava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 964
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 965
    iget-object v3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 966
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    neg-long v4, v4

    long-to-int v4, v4

    int-to-long v5, v4

    .line 967
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ChatObject;->isChannel(JI)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    int-to-long v4, v4

    cmp-long v4, v4, p1

    const/4 v5, 0x1

    if-nez v4, :cond_3

    move v4, v0

    .line 969
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 970
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 972
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 973
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 975
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 976
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 977
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 978
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 979
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 982
    iget v2, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    move v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v1, v5

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 987
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_5

    .line 988
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1586
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1587
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/FilteredSearchView;->lastAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1592
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1593
    iget v0, p0, Lorg/telegram/ui/FilteredSearchView;->lastAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1801
    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->checkUi_floatingDateView()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1730
    iget v0, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    .line 1731
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 1732
    iput v2, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    goto :goto_0

    .line 1734
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x6

    .line 1735
    iput v1, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    goto :goto_0

    .line 1737
    :cond_1
    iput v2, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    .line 1740
    :goto_0
    iget v1, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    .line 1741
    iput-boolean v1, p0, Lorg/telegram/ui/FilteredSearchView;->ignoreRequestLayout:Z

    .line 1742
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 1743
    iput-boolean v0, p0, Lorg/telegram/ui/FilteredSearchView;->ignoreRequestLayout:Z

    .line 1745
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1750
    iget-boolean v0, p0, Lorg/telegram/ui/FilteredSearchView;->ignoreRequestLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1753
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v5, p7

    if-nez p9, :cond_0

    .line 570
    const-string v0, ""

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p9

    .line 572
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    if-nez v5, :cond_1

    const/4 v13, -0x1

    goto :goto_1

    :cond_1
    iget v13, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 p9, v6

    const/4 v6, 0x0

    aput-object p9, v15, v6

    const/4 v6, 0x1

    aput-object v11, v15, v6

    const/4 v11, 0x2

    aput-object v12, v15, v11

    const/4 v12, 0x3

    aput-object v13, v15, v12

    const/4 v13, 0x4

    aput-object v4, v15, v13

    const/4 v6, 0x5

    aput-object v14, v15, v6

    const-string v14, "%d%d%d%d%s%s"

    invoke-static {v0, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    iget-object v14, v1, Lorg/telegram/ui/FilteredSearchView;->lastSearchFilterQueryString:Ljava/lang/String;

    if-eqz v14, :cond_2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v14, v11

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move v14, v11

    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_3

    if-eqz p10, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 575
    :goto_3
    iput-object v5, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 576
    iput-wide v2, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchDialogId:J

    .line 577
    iput-wide v7, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchMinDate:J

    .line 578
    iput-wide v9, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchMaxDate:J

    .line 579
    iput-object v4, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchString:Ljava/lang/String;

    move/from16 v6, p8

    .line 580
    iput-boolean v6, v1, Lorg/telegram/ui/FilteredSearchView;->currentIncludeFolder:Z

    .line 581
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v12, :cond_4

    .line 582
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 584
    :cond_4
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v11, :cond_5

    if-eqz p10, :cond_5

    goto/16 :goto_8

    :cond_5
    const-wide/16 v17, 0x0

    if-nez v15, :cond_8

    if-nez v5, :cond_6

    cmp-long v12, v2, v17

    if-nez v12, :cond_6

    cmp-long v12, v7, v17

    if-nez v12, :cond_6

    cmp-long v12, v9, v17

    if-nez v12, :cond_6

    goto :goto_4

    :cond_6
    if-eqz p10, :cond_7

    .line 607
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    goto/16 :goto_8

    :cond_7
    const/4 v12, 0x1

    goto :goto_5

    .line 589
    :cond_8
    :goto_4
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 590
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 591
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    const/4 v12, 0x1

    .line 592
    iput-boolean v12, v1, Lorg/telegram/ui/FilteredSearchView;->isLoading:Z

    .line 593
    iget-object v13, v1, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 594
    iget-object v13, v1, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v13, :cond_9

    .line 595
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 597
    :cond_9
    iget v13, v1, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    add-int/2addr v13, v12

    iput v13, v1, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    .line 598
    iput-boolean v12, v1, Lorg/telegram/ui/FilteredSearchView;->firstLoading:Z

    .line 599
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 600
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    .line 602
    :cond_a
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 603
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    if-nez v15, :cond_7

    goto/16 :goto_8

    .line 610
    :goto_5
    iput-boolean v12, v1, Lorg/telegram/ui/FilteredSearchView;->isLoading:Z

    .line 611
    iget-object v13, v1, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v13, :cond_b

    .line 612
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    if-nez v11, :cond_c

    .line 616
    iget-object v13, v1, Lorg/telegram/ui/FilteredSearchView;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 617
    iget-object v13, v1, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    xor-int/lit8 v14, p10, 0x1

    invoke-virtual {v13, v12, v14}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 620
    :cond_c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 621
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 622
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 623
    iget-object v12, v1, Lorg/telegram/ui/FilteredSearchView;->delegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v12, :cond_d

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 624
    invoke-interface {v12, v14, v13, v13, v14}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 627
    :cond_d
    iget v12, v1, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    const/16 v16, 0x1

    add-int/lit8 v14, v12, 0x1

    iput v14, v1, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    .line 629
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-object v13, v0

    .line 631
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda3;

    move/from16 v12, p8

    move/from16 v15, v16

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FilteredSearchView;JLjava/lang/String;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;IJJZZLjava/lang/String;I)V

    iput-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v11, :cond_e

    .line 914
    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    :goto_6
    move-wide/from16 v2, v17

    goto :goto_7

    :cond_e
    const-wide/16 v17, 0x15e

    goto :goto_6

    .line 631
    :goto_7
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    if-nez v5, :cond_f

    .line 917
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    return-void

    .line 918
    :cond_f
    iget v0, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-nez v0, :cond_11

    .line 919
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 920
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    return-void

    .line 922
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    return-void

    :cond_11
    const/4 v14, 0x2

    if-ne v0, v15, :cond_12

    .line 925
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    return-void

    :cond_12
    const/4 v2, 0x3

    if-eq v0, v2, :cond_15

    const/4 v2, 0x5

    if-ne v0, v2, :cond_13

    goto :goto_9

    :cond_13
    if-ne v0, v14, :cond_14

    .line 929
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    :cond_14
    :goto_8
    return-void

    .line 927
    :cond_15
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    return-void
.end method

.method public setBlurredBackgroundDrawableFactory(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
    .locals 2

    .line 460
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->blurredBackgroundDrawableFactory:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/FilteredSearchView$FloatingDateView;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->searchFloatingDate(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/FilteredSearchView$FloatingDateView;->setBlurredBackgroundDrawable(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    return-void
.end method

.method public setChatPreviewDelegate(Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
    .locals 0

    .line 1814
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V
    .locals 3

    .line 1757
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->delegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1759
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1760
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lorg/telegram/ui/FilteredSearchView;->localTipArchive:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2, v0, v1}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public setKeyboardHeight(IZ)V
    .locals 1

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    return-void
.end method

.method public setPagesPaddings(II)V
    .locals 1

    const/4 v0, 0x0

    .line 934
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/FilteredSearchView;->setPagesPaddings(IIZ)V

    return-void
.end method

.method public setPagesPaddings(IIZ)V
    .locals 7

    const/4 v0, 0x0

    .line 938
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 939
    iput-boolean p3, p0, Lorg/telegram/ui/FilteredSearchView;->ignoreRequestLayout:Z

    .line 941
    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 942
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIIIZ)V

    .line 945
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    neg-int p2, v3

    .line 946
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int p2, v5

    .line 947
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 949
    iput-boolean v0, p0, Lorg/telegram/ui/FilteredSearchView;->ignoreRequestLayout:Z

    return-void
.end method

.method public setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V
    .locals 0

    .line 1766
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    return-void
.end method

.method public setUseFromUserAsAvatar(Z)V
    .locals 0

    .line 1112
    iput-boolean p1, p0, Lorg/telegram/ui/FilteredSearchView;->useFromUserAsAvatar:Z

    return-void
.end method

.method public update()V
    .locals 1

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
