.class public Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;
    }
.end annotation


# instance fields
.field private final animatorFadeVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private audioEntries:Ljava/util/ArrayList;

.field private currentEmptyView:Landroid/view/View;

.field private currentPanTranslationProgress:F

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

.field private final emptyImageView:Landroid/widget/ImageView;

.field private final emptySubtitleTextView:Landroid/widget/TextView;

.field private final emptyTitleTextView:Landroid/widget/TextView;

.field private final emptyView:Landroid/widget/LinearLayout;

.field private final fadeView:Landroid/view/View;

.field private final frameLayout:Landroid/widget/FrameLayout;

.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

.field private final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingAudio:Z

.field private maxSelectedFiles:I

.field private playingAudio:Lorg/telegram/messenger/MessageObject;

.field private final progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private final searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

.field private final searchField:Lorg/telegram/ui/Components/FragmentSearchField;

.field private final selectedAudios:Landroid/util/LongSparseArray;

.field private final selectedAudiosOrder:Ljava/util/ArrayList;

.field private sendPressed:Z


# direct methods
.method public static synthetic $r8$lambda$A1gidWYV2sxmnaAw7ec30lp1l5I(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Ljava/util/ArrayList;ZIIJZLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$sendSelectedItems$3(Ljava/util/ArrayList;ZIIJZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OuEpcVUQQ4EgD29RB8O_2HsGfHM(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$loadAudio$4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X2Lgm3SIysrd97kXXpL4cQQzNQA(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$loadAudio$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$YgzSMBlrDMxha_jaLEt6NSUKVHg(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fjc8s4mVggCk6Atgvja-eJE56-M(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 146
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$x0QV6MZTx3aqv4Xs7vGnx3nFfA0(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->lambda$new$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioEntries(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->audioEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemptySubtitleTextView(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedAudios(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputplayingAudio(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyView(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyViewPosition(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 21

    move-object/from16 v7, p2

    move-object/from16 v6, p3

    .line 103
    invoke-direct/range {p0 .. p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 67
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x17c

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    move-object v1, v2

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->animatorFadeVisible:Lme/vkryl/android/animator/BoolAnimator;

    const/4 v8, -0x1

    .line 83
    iput v8, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->maxSelectedFiles:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->audioEntries:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    .line 105
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 106
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 107
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 108
    invoke-direct {v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->loadAudio()V

    .line 110
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;

    invoke-direct {v0, v7, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$SearchFadeView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->fadeView:Landroid/view/View;

    const/4 v2, 0x4

    .line 111
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->frameLayout:Landroid/widget/FrameLayout;

    .line 114
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachSearchField;

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {v2, v7, v3, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachSearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    const/high16 v3, 0x40800000    # 4.0f

    .line 115
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, v5, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 116
    iget-object v3, v2, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v3, v2, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/messenger/R$string;->SearchMusic:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMatchParent()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v15, 0x40e00000    # 7.0f

    const/high16 v16, 0x40800000    # 4.0f

    const/4 v10, -0x1

    const/high16 v11, 0x42400000    # 48.0f

    const/16 v12, 0x33

    const/high16 v13, 0x40e00000    # 7.0f

    const/high16 v14, 0x41000000    # 8.0f

    .line 133
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 134
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 135
    invoke-virtual {v9, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v2, 0x0

    invoke-direct {v0, v7, v2, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 138
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    const/high16 v2, -0x40800000    # -1.0f

    .line 139
    invoke-static {v8, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 142
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x11

    .line 143
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0x8

    .line 144
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-static {v8, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyImageView:Landroid/widget/ImageView;

    .line 149
    sget v5, Lorg/telegram/messenger/R$drawable;->music_empty:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v5, -0x2

    .line 151
    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    .line 154
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v10, 0x41880000    # 17.0f

    .line 157
    invoke-virtual {v2, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v10, 0x42200000    # 40.0f

    .line 158
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v13, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x11

    const/16 v17, 0x0

    const/16 v18, 0xb

    .line 159
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    .line 162
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 164
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v4, v13, v5, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v18, 0x6

    .line 166
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$2;

    invoke-direct {v0, v1, v7, v6}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 174
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 175
    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 176
    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3CaptureView:Landroid/view/View;

    .line 177
    iput-boolean v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->occupyStatusBar:Z

    .line 178
    iput-boolean v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->occupyNavigationBar:Z

    .line 179
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    move-object v6, v0

    .line 180
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 200
    invoke-virtual {v6, v13}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 201
    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 202
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 204
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 205
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 206
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 210
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$4;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 218
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    invoke-direct {v0, v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    const/16 v0, 0x3c

    const/16 v2, 0x33

    .line 219
    invoke-static {v8, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 220
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 221
    invoke-virtual {v1, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-direct {v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyView()V

    return-void
.end method

.method private synthetic lambda$loadAudio$4(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->loadingAudio:Z

    .line 546
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->audioEntries:Ljava/util/ArrayList;

    .line 547
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$loadAudio$5()V
    .locals 15

    .line 478
    const-string v4, "duration"

    const-string v5, "album"

    const-string v0, "_id"

    const-string v1, "artist"

    const-string v2, "title"

    const-string v3, "_data"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v8

    .line 487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 488
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

    .line 490
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    new-instance v3, Lorg/telegram/messenger/MediaController$AudioEntry;

    invoke-direct {v3}, Lorg/telegram/messenger/MediaController$AudioEntry;-><init>()V

    const/4 v4, 0x0

    .line 492
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    const/4 v5, 0x1

    .line 493
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    const/4 v6, 0x2

    .line 494
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    const/4 v6, 0x3

    .line 495
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    const/4 v7, 0x4

    .line 496
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    iput v7, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    const/4 v7, 0x5

    .line 497
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->genre:Ljava/lang/String;

    .line 499
    new-instance v7, Ljava/io/File;

    iget-object v8, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 502
    iput-boolean v5, v8, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 503
    iput v0, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 504
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 505
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 506
    iget-object v12, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v13, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v13, v13, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    iput-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    div-long/2addr v11, v9

    long-to-int v9, v11

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 508
    const-string v9, ""

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 509
    iget-object v9, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->path:Ljava/lang/String;

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 510
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 511
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/2addr v10, v6

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 512
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 513
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v9, v9, 0x300

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 515
    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 517
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v11, 0x0

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 518
    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 519
    new-array v11, v4, [B

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 520
    iget v11, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 521
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

    .line 522
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    int-to-long v10, v10

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 523
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput v4, v9, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 525
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 526
    iget v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->duration:I

    int-to-double v10, v10

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 527
    iget-object v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->title:Ljava/lang/String;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    .line 528
    iget-object v10, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->author:Ljava/lang/String;

    iput-object v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    .line 529
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/2addr v6, v10

    iput v6, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 530
    iget-object v6, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 533
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    .line 534
    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-direct {v6, v7, v8, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v6, v3, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 538
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_2

    .line 541
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

    .line 488
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

    .line 542
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 544
    :goto_5
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->onItemClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)Z
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->onItemClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$sendSelectedItems$3(Ljava/util/ArrayList;ZIIJZLjava/lang/Long;)V
    .locals 11

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-interface/range {v0 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;->didSelectAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    return-void
.end method

.method private loadAudio()V
    .locals 2

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->loadingAudio:Z

    .line 477
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onItemClick(Landroid/view/View;)V
    .locals 14

    .line 412
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStoryAudioPicker:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 419
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->sendPressed:Z

    .line 420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 421
    iget-object p1, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v5

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-interface/range {v3 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;->didSelectAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIIJZJ)V

    :goto_0
    move v3, v2

    goto :goto_1

    .line 424
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    iget-wide v3, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_2

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_1

    .line 430
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->maxSelectedFiles:I

    if-ltz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->maxSelectedFiles:I

    if-lt v1, v4, :cond_3

    .line 431
    sget p1, Lorg/telegram/messenger/R$string;->PassportUploadMaxReached:I

    const-string v0, "Files"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "PassportUploadMaxReached"

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->showErrorBox(Ljava/lang/String;)V

    return-void

    .line 434
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    iget-wide v3, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->id:J

    invoke-virtual {v1, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 435
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_0

    .line 439
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    :goto_2
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return-void
.end method

.method private showErrorBox(Ljava/lang/String;)V
    .locals 3

    .line 408
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 260
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->loadingAudio:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    if-ne v0, v2, :cond_1

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoAudioFound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoAudioFiles:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->NoAudioFilesInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    if-ne v0, v2, :cond_2

    .line 276
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    goto :goto_2

    .line 278
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->audioEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 280
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private updateEmptyViewPosition()V
    .locals 4

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentPanTranslationProgress:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 374
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-eq p1, v0, :cond_0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, v0, :cond_6

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_4

    .line 375
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 387
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    if-ne p1, p2, :cond_6

    .line 388
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 389
    iget-wide p1, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    goto :goto_3

    .line 392
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v1

    :goto_0
    if-ge p2, p1, :cond_6

    .line 394
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 395
    instance-of v2, p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_3

    .line 396
    check-cast p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 397
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 399
    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 376
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_6

    .line 378
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 379
    instance-of v2, p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_5

    .line 380
    check-cast p3, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 381
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 383
    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->updateButtonState(ZZ)V

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public getCurrentItemTop()I
    .locals 5

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v3

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ltz v0, :cond_2

    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_2

    .line 304
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->animatorFadeVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v2, v1, v4}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    goto :goto_1

    .line 306
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->animatorFadeVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, v4, v4}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    move v0, v3

    .line 308
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->frameLayout:Landroid/widget/FrameLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 309
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 314
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getSelected()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 465
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 466
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 815
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyImageView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptyTitleTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v8, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v12, v3

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v11, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v15, v2, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v4, v15, v3

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v4, v6, v3

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v4, v8, v3

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    const/4 v11, 0x0

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v4, v9, v3

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    const/4 v12, 0x0

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onContainerTranslationUpdated(F)V
    .locals 0

    .line 798
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->currentPanTranslationProgress:F

    .line 799
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 800
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->onHide()V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDismiss()Z
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 328
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onDismiss()Z

    move-result v0

    return v0
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    if-nez p1, :cond_1

    .line 806
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->fadeView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 807
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->fadeView:Landroid/view/View;

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onHidden()V
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onHide()V
    .locals 2

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_0
    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->playingAudio:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 338
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 339
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onPreMeasure(II)V
    .locals 2

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    .line 346
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 347
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_1

    .line 349
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 352
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p2, p2, 0x2

    move p1, p2

    .line 354
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 356
    :goto_1
    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p1, p2

    .line 357
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->listPaddingBottom:I

    invoke-virtual {p2, v1, p1, v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setPaddingWithoutRequestLayout(IIII)V

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 1

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public sendSelectedItems(ZIIJZ)Z
    .locals 13

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudios:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->sendPressed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->sendPressed:Z

    .line 453
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 454
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->selectedAudiosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AudioEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AudioEntry;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda3;

    move-object v3, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;Ljava/util/ArrayList;ZIIJZ)V

    invoke-static {v1, v11, v12, v0, v2}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    return v1
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;

    return-void
.end method

.method public setMaxSelectedFiles(I)V
    .locals 0

    .line 285
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->maxSelectedFiles:I

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 319
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setupBlurredSearchField(Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->attachMenuSearch(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FragmentSearchField;->setupBlurredBackground(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    :cond_0
    return-void
.end method
