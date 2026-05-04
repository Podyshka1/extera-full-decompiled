.class public Lorg/telegram/ui/ReactionsDoubleTapManageActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;
    }
.end annotation


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field infoRow:I

.field private listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field premiumReactionRow:I

.field previewRow:I

.field reactionsStartRow:I

.field rowCount:I

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method public static synthetic $r8$lambda$D_-J7HG7-9CcHogS-nlEWUgbjvE(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$t6-xQp4ZaF-du5glh7KoKvYKKRE(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->lambda$createView$0(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAvailableReactions(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->getAvailableReactions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->reactionsStartRow:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private getAvailableReactions()Ljava/util/List;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;I)V
    .locals 1

    .line 173
    instance-of p2, p1, Lorg/telegram/ui/Cells/AvailableReactionCell;

    if-eqz p2, :cond_1

    .line 174
    check-cast p1, Lorg/telegram/ui/Cells/AvailableReactionCell;

    .line 175
    iget-boolean p2, p1, Lorg/telegram/ui/Cells/AvailableReactionCell;->locked:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_0

    .line 176
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 p2, 0x4

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 179
    :cond_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Cells/AvailableReactionCell;->react:Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MediaDataController;->setDoubleTapReaction(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void

    .line 181
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;

    if-eqz p2, :cond_2

    .line 182
    check-cast p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->showSelectStatusDialog(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)V

    :cond_2
    return-void
.end method

.method private updateColors()V
    .locals 2

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->previewRow:I

    const/4 v0, 0x1

    add-int v1, v0, v0

    .line 346
    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->infoRow:I

    .line 347
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 348
    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->reactionsStartRow:I

    .line 349
    iget v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->premiumReactionRow:I

    return-void

    .line 351
    :cond_0
    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->premiumReactionRow:I

    .line 352
    iget v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->reactionsStartRow:I

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->Reactions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$1;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 83
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 87
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 172
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iput-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->contentView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 188
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateColors()V

    .line 189
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateRows()V

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->contentView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 395
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    if-ne p1, p2, :cond_1

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 398
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_2

    .line 399
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateRows()V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 14

    .line 369
    new-instance v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    filled-new-array/range {v1 .. v13}, [I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 64
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 65
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 358
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 359
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public showSelectStatusDialog(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)V
    .locals 14

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 271
    new-array v10, v0, [Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 276
    invoke-static {p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->-$$Nest$fgetimageDrawable(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    .line 278
    invoke-static {p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->-$$Nest$fgetimageDrawable(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 279
    invoke-static {p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->-$$Nest$fgetimageDrawable(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 280
    invoke-virtual {p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->updateImageBounds()V

    .line 281
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-static {p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->-$$Nest$fgetimageDrawable(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43a20000    # 324.0f

    .line 283
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const v6, 0x3f733333    # 0.95f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 284
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v2, v5

    move-object v12, p1

    move-object v11, v1

    move v13, v3

    goto :goto_0

    :cond_1
    move-object v12, p1

    move v2, v0

    move v13, v2

    move-object v11, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v2, v0

    move v13, v2

    move-object v11, v1

    move-object v12, v11

    .line 287
    :goto_0
    new-instance v1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$3;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$3;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 315
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 316
    const-string v3, "animated_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x9

    .line 318
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelected(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :catch_0
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->getAvailableReactions()Ljava/util/List;

    move-result-object p1

    .line 322
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v0

    .line 323
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 324
    new-instance v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 325
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 326
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 327
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 329
    :cond_4
    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    const/4 p1, 0x3

    .line 330
    invoke-virtual {v1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSaveState(I)V

    .line 331
    invoke-virtual {v1, v11, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V

    .line 332
    new-instance p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$4;

    const/4 v3, -0x2

    invoke-direct {p1, p0, v1, v3, v3}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$4;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Landroid/view/View;II)V

    iput-object p1, v2, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aput-object p1, v10, v0

    const/16 v1, 0x35

    .line 339
    invoke-virtual {p1, v9, v0, v13, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 340
    aget-object p1, v10, v0

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dimBehind()V

    return-void
.end method
