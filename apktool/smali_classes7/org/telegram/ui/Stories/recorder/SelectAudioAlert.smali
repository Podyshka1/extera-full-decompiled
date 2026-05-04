.class public Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# instance fields
.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private downloadingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private loadSharedAudioRunnable:Ljava/lang/Runnable;

.field private loadingLocalAudio:Z

.field private loadingSharedAudio:Z

.field private final local:Z

.field private final localAudio:Ljava/util/ArrayList;

.field private nextSearchRate:I

.field private final onAudioSelected:Lorg/telegram/messenger/Utilities$Callback;

.field private final parentAlert:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

.field private query:Ljava/lang/String;

.field private final savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

.field private final searchField:Landroid/widget/FrameLayout;

.field private final searchFieldContainer:Landroid/widget/FrameLayout;

.field private final searchFieldEditText:Lorg/telegram/ui/Components/EditTextCaption;

.field private final sharedAudio:Ljava/util/ArrayList;

.field private sharedAudioHasMore:Z

.field private final tag:I


# direct methods
.method public static synthetic $r8$lambda$68HpPsligHbbf9Q6ji18hDK-nFQ(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadSharedAudio()V

    return-void
.end method

.method public static synthetic $r8$lambda$HBmW_EoxI2a-seHIrGvsIA-7f90(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->lambda$loadLocalAudio$3(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LrS66ei6TmVI5YGkSsEb4Kd4-YE(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->lambda$new$0(Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XvNEKAlOQB8K7js9nf6d4vrwHew(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->lambda$loadSharedAudio$1(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dzJpRxHs0bU2Qgj_ipmGKHqNtCA(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->lambda$loadLocalAudio$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$rzu8OhnEYmTNqYe-OrIH7KNKf6w(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->lambda$loadSharedAudio$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)Lorg/telegram/ui/Components/UniversalAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetquery(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->query:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharedAudio(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputquery(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->query:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadSharedAudio(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadSharedAudio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadSharedAudioDelayed(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadSharedAudioDelayed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 17

    move/from16 v8, p2

    move-object/from16 v9, p4

    .line 73
    sget-object v6, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;->SLIDING:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;

    new-instance v7, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v7}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->localAudio:Ljava/util/ArrayList;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    .line 288
    new-instance v2, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadSharedAudioRunnable:Ljava/lang/Runnable;

    const v2, 0x3eb33333    # 0.35f

    .line 75
    iput v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 76
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 77
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setSlidingActionBar()V

    const/high16 v2, 0x40800000    # 4.0f

    .line 78
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerPaddingTop:I

    const/high16 v2, -0x3ee00000    # -10.0f

    .line 79
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerPaddingBottom:I

    .line 81
    iput-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->local:Z

    .line 82
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->tag:I

    move-object/from16 v2, p3

    .line 83
    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->parentAlert:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    .line 84
    iput-object v9, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->onAudioSelected:Lorg/telegram/messenger/Utilities$Callback;

    .line 86
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->searchFieldContainer:Landroid/widget/FrameLayout;

    .line 87
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->searchField:Landroid/widget/FrameLayout;

    const/high16 v5, 0x42100000    # 36.0f

    .line 89
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v15, 0x41000000    # 8.0f

    const/high16 v16, 0x40c00000    # 6.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x77

    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v14, 0x40c00000    # 6.0f

    .line 90
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 93
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_browser_search:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v10, 0x24

    const/high16 v11, 0x42100000    # 36.0f

    const/16 v12, 0x13

    const/high16 v13, 0x40800000    # 4.0f

    const/4 v14, 0x0

    .line 96
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v2, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v5}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->searchFieldEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v5, 0x1

    .line 99
    invoke-virtual {v2, v5, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const/4 v1, -0x1

    .line 100
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 101
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 102
    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 105
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 106
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v5, 0x13

    .line 107
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 108
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v4, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v15, 0x41200000    # 10.0f

    const/4 v10, -0x1

    const/16 v12, 0x10

    const/high16 v13, 0x42200000    # 40.0f

    .line 109
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v3, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;

    invoke-direct {v3, v0, v8}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;-><init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Z)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 133
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 134
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 135
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    .line 136
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 137
    iget-object v3, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    if-nez v8, :cond_0

    .line 140
    new-instance v1, Lorg/telegram/messenger/MessagesController$SavedMusicList;

    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController$SavedMusicList;-><init>(IJ)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    .line 141
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->load()V

    .line 142
    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadSharedAudio()V

    goto :goto_0

    .line 144
    :cond_0
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    .line 145
    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadLocalAudio()V

    .line 148
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v9}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private addSection(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10

    if-eqz p3, :cond_8

    .line 246
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 247
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->query:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 249
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :cond_2
    :goto_1
    if-ge v6, v4, :cond_6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    if-ne p3, v8, :cond_3

    goto :goto_2

    .line 255
    :cond_3
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v9

    .line 257
    invoke-direct {p0, v1, v3, v8}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v1, v3, v9}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 258
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->query:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_5
    :goto_2
    invoke-virtual {v7, v2}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    .line 264
    :cond_7
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_3
    if-ge v5, p2, :cond_8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v5, v5, 0x1

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    .line 266
    invoke-static {p3}, Lorg/telegram/ui/Cells/SharedAudioCell$Factory;->as(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method private done(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->onAudioSelected:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->parentAlert:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$loadLocalAudio$3(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadingLocalAudio:Z

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->localAudio:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$loadLocalAudio$4()V
    .locals 15

    .line 337
    const-string v4, "duration"

    const-string v5, "album"

    const-string v0, "_id"

    const-string v1, "artist"

    const-string v2, "title"

    const-string v3, "_data"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v8

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "is_music != 0"

    const-string v11, "title"

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, -0x77359400

    .line 349
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    new-instance v3, Lorg/telegram/messenger/MediaController$AudioEntry;

    invoke-direct {v3}, Lorg/telegram/messenger/MediaController$AudioEntry;-><init>()V

    const/4 v4, 0x0

    .line 351
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    const/4 v5, 0x1

    .line 352
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    const/4 v6, 0x2

    .line 353
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    const/4 v6, 0x3

    .line 354
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    const/4 v7, 0x4

    .line 355
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    const/4 v7, 0x5

    .line 356
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->genre:Ljava/lang/String;

    .line 358
    new-instance v7, Ljava/io/File;

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 361
    iput-boolean v5, v8, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 362
    iput v0, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 363
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 364
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 365
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v13, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    iput-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    div-long/2addr v11, v9

    long-to-int v9, v11

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 367
    const-string v9, ""

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 368
    iget-object v9, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 369
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 370
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/2addr v10, v6

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 371
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 372
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v9, v9, 0x300

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 374
    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 376
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 377
    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 378
    new-array v11, v4, [B

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 379
    iget v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 380
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "mp3"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 381
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    int-to-long v10, v10

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 382
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput v4, v9, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 384
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 385
    iget v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    int-to-double v10, v10

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 386
    iget-object v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 387
    iget-object v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 388
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/2addr v6, v10

    iput v6, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 389
    iget-object v6, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 392
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 393
    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 397
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_2

    .line 400
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :goto_2
    if-eqz v2, :cond_2

    .line 347
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 401
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 403
    :goto_5
    new-instance v0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadSharedAudio$1(Lorg/telegram/tgnet/TLObject;)V
    .locals 8

    .line 312
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_2

    .line 313
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 314
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 315
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 317
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    .line 318
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v6, v7, v5, v2, v4}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 319
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    if-ge v0, v1, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudioHasMore:Z

    .line 323
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->nextSearchRate:I

    .line 324
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadingSharedAudio:Z

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadSharedAudio$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 311
    new-instance p2, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;I)V
    .locals 2

    .line 149
    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 150
    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 151
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 154
    :cond_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 155
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->downloadingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_1

    .line 156
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->downloadingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    const/4 p2, 0x0

    .line 157
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->downloadingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 160
    :cond_1
    iget-boolean p2, p1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    if-nez p2, :cond_3

    iget-boolean p2, p1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez p2, :cond_3

    .line 161
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->downloadingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 166
    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 167
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void

    .line 169
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->done(Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 172
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    sub-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 173
    iget p3, p2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne p3, v1, :cond_5

    .line 174
    new-instance p2, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    :cond_5
    if-eqz p2, :cond_6

    .line 175
    iget p1, p2, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_6

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->load()V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 177
    iget p1, p2, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 178
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadSharedAudio()V

    :cond_7
    :goto_0
    return-void
.end method

.method private loadLocalAudio()V
    .locals 2

    .line 333
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->local:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadingLocalAudio:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadingLocalAudio:Z

    .line 336
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadSharedAudio()V
    .locals 4

    .line 290
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->local:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadingSharedAudio:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudioHasMore:Z

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadingSharedAudio:Z

    .line 296
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 297
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 298
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->query:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    const/16 v2, 0x14

    .line 299
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 300
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 301
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 302
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 303
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->nextSearchRate:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 304
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 305
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 307
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 308
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 309
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 311
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadSharedAudioDelayed()V
    .locals 3

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadSharedAudioRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->loadSharedAudioRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 272
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .line 273
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 7

    .line 207
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p1, 0x0

    .line 208
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 199
    sget p2, Lorg/telegram/messenger/NotificationCenter;->musicListLoaded:I

    if-ne p1, p2, :cond_0

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 3

    .line 214
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->searchFieldContainer:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->local:Z

    if-nez p2, :cond_0

    .line 216
    sget p2, Lorg/telegram/messenger/R$drawable;->msg2_folder:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryMusicSelectFromFiles:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->local:Z

    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 219
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    if-eqz p2, :cond_2

    .line 220
    sget p2, Lorg/telegram/messenger/R$string;->StoryMusicProfileMusic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->addSection(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    iget-boolean v1, p2, Lorg/telegram/messenger/MessagesController$SavedMusicList;->endReached:Z

    if-nez v1, :cond_1

    .line 222
    sget p2, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    sget v1, Lorg/telegram/messenger/R$string;->ShowMore:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_1
    iget-object p2, p2, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 224
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_2
    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->StoryMusicSearchMusic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->addSection(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 228
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudio:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 229
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->sharedAudioHasMore:Z

    if-eqz p2, :cond_3

    .line 230
    sget p2, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    sget v1, Lorg/telegram/messenger/R$string;->ShowMore:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 232
    :cond_3
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->StoryMusicLocalMusic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->localAudio:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->addSection(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 237
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_5
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->query:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 240
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 p2, 0x43fa0000    # 500.0f

    .line 241
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public getObserverTag()I
    .locals 1

    .line 447
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->tag:I

    return v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 194
    sget v0, Lorg/telegram/messenger/R$string;->StoryMusicTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 413
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 414
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->musicListLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 419
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 420
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->musicListLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->downloadingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->downloadingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->done(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method
