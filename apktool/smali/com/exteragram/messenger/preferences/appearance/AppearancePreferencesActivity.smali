.class public Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;
    }
.end annotation


# instance fields
.field private avatarCornersPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;

.field private chatListPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

.field private fabShapeCell:Lcom/exteragram/messenger/preferences/appearance/components/FabShapeCell;

.field private filterTabsPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;

.field private md3StylesExpanded:Z

.field private recyclerViewState:Landroid/os/Parcelable;

.field private tabIcons:[Ljava/lang/CharSequence;

.field private titles:[Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$-qlW8nduZbIh_1tEDnoA8zPBjVE(Ljava/lang/Boolean;)V
    .locals 0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideAllChats:Z

    return-void
.end method

.method public static synthetic $r8$lambda$2Fx0hNx4VZd_-O1ZOytMT1fQED8(Ljava/lang/Boolean;)V
    .locals 0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->newLoadingStyle:Z

    return-void
.end method

.method public static synthetic $r8$lambda$2jVD27Cq4ADpzaY89j_ece65w2o(Ljava/lang/Boolean;)V
    .locals 0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->senderMiniAvatars:Z

    return-void
.end method

.method public static synthetic $r8$lambda$4cEZtfRXGvzXYIMdH2q_WYCu68k(Ljava/lang/Boolean;)V
    .locals 0

    .line 337
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->gooeyAvatarAnimation:Z

    return-void
.end method

.method public static synthetic $r8$lambda$5rMIt-P6PcpLB34uV8QIAKjNuV4(Ljava/lang/Boolean;)V
    .locals 0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    return-void
.end method

.method public static synthetic $r8$lambda$7MTdZtwlTXFWGyDTGlJbKsZ5IPk(Ljava/lang/Boolean;)V
    .locals 0

    .line 328
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    return-void
.end method

.method public static synthetic $r8$lambda$9Y8qW4pPquZjuJWKMuun3ymuikA(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->lambda$onClick$15(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C3KkSGFXgGPaw8qf0j3uCyFYzlM(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->lambda$onClick$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXvciA0Gv04UEwNM_aAjpbeBAhA(Ljava/lang/Boolean;)V
    .locals 0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideStories:Z

    return-void
.end method

.method public static synthetic $r8$lambda$Da4noEe-MQM17oVVRQJKBG8zTmA(Ljava/lang/Boolean;)V
    .locals 0

    .line 280
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    return-void
.end method

.method public static synthetic $r8$lambda$MuY_TxVYX-0CL5ZoIi1GfkSJbN0(Ljava/lang/Boolean;)V
    .locals 0

    .line 346
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->forceBlur:Z

    return-void
.end method

.method public static synthetic $r8$lambda$NaUMEdSQulwph-nEus6F8o7TgSo(Ljava/lang/Boolean;)V
    .locals 0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->disableDividers:Z

    return-void
.end method

.method public static synthetic $r8$lambda$QPSSJ0rfgxjRywXUAr9Ykuu8XBQ(Ljava/lang/Boolean;)V
    .locals 0

    .line 344
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->glareOnElements:Z

    return-void
.end method

.method public static synthetic $r8$lambda$W6N2iIbjPRHi_4PLr5MwXOR4lMs(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->lambda$onClick$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bqFPV4BwK9sna5bbEqaRmFQO6Cs(Ljava/lang/Boolean;)V
    .locals 0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->customThemes:Z

    return-void
.end method

.method public static synthetic $r8$lambda$ig9GSpw1Hxry_w8bufXbi1tlpXc(Ljava/lang/Boolean;)V
    .locals 0

    .line 273
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideActionBarStatus:Z

    return-void
.end method

.method public static synthetic $r8$lambda$mTN6cpbPMKQoiH3kpHGk8uM6DIc(Ljava/lang/Boolean;)V
    .locals 0

    .line 259
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->singleCornerRadius:Z

    return-void
.end method

.method public static synthetic $r8$lambda$nGtI3-vTunJEw5_ltiMKVo4s0G0(Ljava/lang/Boolean;)V
    .locals 0

    .line 301
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->tabCounter:Z

    return-void
.end method

.method public static synthetic $r8$lambda$ngZsq9OIOgdpWnQ2GJhqbVaZtK8(Ljava/lang/Boolean;)V
    .locals 0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->useSystemFonts:Z

    return-void
.end method

.method public static synthetic $r8$lambda$pEZnIUWpt8ghuoMAZxxTNZMiGlc(Ljava/lang/Boolean;)V
    .locals 0

    .line 290
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideFloatingButton:Z

    return-void
.end method

.method public static synthetic $r8$lambda$ui-ddYnKrQG7erhHOsfCc-al44I(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->handleMD3StylesSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y60HkGBPw33t8sxSghXHCXerPLU(Ljava/lang/Boolean;)V
    .locals 0

    .line 341
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->forceSnow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method private getMD3StylesSelectedCount(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    return p1

    .line 377
    :cond_0
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->newLoadingStyle:Z

    .line 378
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSliderStyle:Z

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 379
    :cond_1
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    return p1
.end method

.method private handleActionBarTitleClick()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->chatListPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;->updateStatus(Z)V

    .line 385
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private handleForceBlurChange()V
    .locals 1

    .line 415
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->forceBlur:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleChatBlur()V

    :cond_0
    return-void
.end method

.method private handleHideAllChatsClick()V
    .locals 4

    .line 397
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private handleMD3StylesSwitchClick(Landroid/view/View;)V
    .locals 4

    .line 357
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 358
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Cells/TextCheckCell2;->id:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findItemByItemId(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 359
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 361
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newLoadingStyle:Z

    .line 362
    const-string/jumbo v3, "newLoadingStyle"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSliderStyle:Z

    .line 363
    const-string/jumbo v3, "newSliderStyle"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    .line 364
    const-string/jumbo v3, "newSwitchStyle"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 365
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 368
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 369
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->avatarCornersPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;->updateSliderStyle()V

    :cond_0
    return-void
.end method

.method private handleTabCounterClick()V
    .locals 3

    .line 393
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private handleTabTitleClick()V
    .locals 3

    .line 389
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private handleUseSystemEmojiClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 2

    .line 420
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleUseSystemEmoji()V

    .line 421
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    .line 422
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    .line 423
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private handleUseSystemFontsClick()V
    .locals 0

    .line 402
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->clearTypefaceCache()V

    .line 403
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->rebuildListWithStateRestore()V

    return-void
.end method

.method private synthetic lambda$onClick$1(I)V
    .locals 1

    .line 264
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->titleText:I

    const-string/jumbo v0, "titleText"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    .line 265
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->handleActionBarTitleClick()V

    return-void
.end method

.method private synthetic lambda$onClick$15(Ljava/lang/Boolean;)V
    .locals 0

    .line 331
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->newSliderStyle:Z

    .line 332
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->avatarCornersPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;->updateSliderStyle()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$7(I)V
    .locals 1

    .line 297
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    const-string/jumbo v0, "tabIcons"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    .line 298
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->handleTabTitleClick()V

    return-void
.end method

.method private rebuildListWithStateRestore()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->recyclerViewState:Landroid/os/Parcelable;

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    .line 410
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->recyclerViewState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 110
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string/jumbo v2, "preferences_preview_style"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getIntConfigValue(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->avatarCornersPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;

    .line 111
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->chatListPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

    .line 112
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;

    invoke-direct {v0, p1}, Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->filterTabsPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;

    .line 113
    new-instance v0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$1;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->fabShapeCell:Lcom/exteragram/messenger/preferences/appearance/components/FabShapeCell;

    .line 119
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 11

    .line 129
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->AVATAR_CORNERS_PREVIEW:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->avatarCornersPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "avatarCorners"

    .line 130
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->SINGLE_CORNER_RADIUS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->SingleCornerRadius:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->singleCornerRadius:Z

    .line 132
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "singleCornerRadius"

    .line 134
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget p2, Lorg/telegram/messenger/R$string;->SingleCornerRadiusInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget p2, Lorg/telegram/messenger/R$string;->ListOfChats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->CHAT_LIST_PREVIEW:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->chatListPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->FORCE_SNOW:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ForceSnow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ForceSnowInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->forceSnow:Z

    .line 140
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 141
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "forceSnow"

    .line 142
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 144
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->HIDE_ACTION_BAR_STATUS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideActionBarStatus:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideActionBarStatus:Z

    .line 145
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 146
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideActionBarStatus"

    .line 147
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 144
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->CENTER_TITLE:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->CenterTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    .line 150
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 151
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "centerTitle"

    .line 152
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 149
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->HIDE_STORIES:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideStories:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideStories:Z

    .line 154
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 155
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideStories"

    .line 156
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->HIDE_FLOATING_BUTTON:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideFloatingButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideFloatingButton:Z

    .line 158
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 159
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideFloatingButton"

    .line 160
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 157
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->SENDER_MINI_AVATARS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->SenderMiniAvatars:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->senderMiniAvatars:Z

    .line 162
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 163
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "senderMiniAvatars"

    .line 164
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 161
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->ACTION_BAR_TITLE:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ActionBarTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->titles:[Ljava/lang/CharSequence;

    sget v3, Lcom/exteragram/messenger/ExteraConfig;->titleText:I

    aget-object v1, v1, v3

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 166
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "actionBarTitle"

    .line 167
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 165
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget p2, Lorg/telegram/messenger/R$string;->ListOfChatsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget p2, Lorg/telegram/messenger/R$string;->Filters:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->FOLDERS_PREVIEW:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->filterTabsPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->TAB_TITLE:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->TabTitleStyle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->tabIcons:[Ljava/lang/CharSequence;

    sget v3, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    aget-object v1, v1, v3

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 173
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "tabTitleStyle"

    .line 174
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->TAB_COUNTER:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->TabCounter:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->tabCounter:Z

    .line 176
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 177
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "tabCounter"

    .line 178
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 175
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->HIDE_ALL_CHATS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideAllChats:I

    sget v1, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideAllChats:Z

    .line 180
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 181
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideAllChats"

    .line 182
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget p2, Lorg/telegram/messenger/R$string;->FoldersInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->APP_NAVIGATION_SETTINGS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_newphone:I

    sget p2, Lorg/telegram/messenger/R$string;->AppNavigation:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget p2, Lorg/telegram/messenger/R$string;->AppNavigationInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x40

    const/16 v10, 0x3c

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/UItem;->asButtonWithSubtext(IILjava/lang/CharSequence;Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 186
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "appNavigationSettings"

    .line 187
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 185
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->ICON_PACKS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_sticker:I

    sget p2, Lorg/telegram/messenger/R$string;->IconPacks:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget p2, Lorg/telegram/messenger/R$string;->IconPacksInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/UItem;->asButtonWithSubtext(IILjava/lang/CharSequence;Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 189
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "iconPacks"

    .line 190
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 188
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->PILL_STACK:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    sget p2, Lorg/telegram/messenger/R$string;->PillStackPills:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget p2, Lorg/telegram/messenger/R$string;->PillStackPillsInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/UItem;->asButtonWithSubtext(IILjava/lang/CharSequence;Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 192
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "pillStack"

    .line 193
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 191
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget p2, Lorg/telegram/messenger/R$string;->Appearance:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->FAB_SHAPE:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->fabShapeCell:Lcom/exteragram/messenger/preferences/appearance/components/FabShapeCell;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "fabShape"

    .line 198
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 197
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->USE_SYSTEM_FONTS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->UseSystemFonts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->useSystemFonts:Z

    .line 200
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 201
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "useSystemFonts"

    .line 202
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 199
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->USE_SYSTEM_EMOJI:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->UseSystemEmoji:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    .line 204
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 205
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "useSystemEmoji"

    .line 206
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 203
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->MD3_STYLES:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->MaterialDesign3:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v4}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->getMD3StylesSelectedCount(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->getMD3StylesSelectedCount(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    aput-object v5, v6, v2

    const-string v3, "%d/%d"

    invoke-static {v1, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda21;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;)V

    invoke-static {p2, v0, v1, v3}, Lorg/telegram/ui/Components/UItem;->asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 208
    invoke-direct {p0, v4}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->getMD3StylesSelectedCount(Z)I

    move-result v0

    if-lez v0, :cond_1

    move v4, v2

    :cond_1
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->md3StylesExpanded:Z

    xor-int/2addr v0, v2

    .line 209
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 210
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "md3Styles"

    .line 211
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 207
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-boolean p2, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->md3StylesExpanded:Z

    if-eqz p2, :cond_2

    .line 213
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->NEW_LOADING_STYLE:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->NewLoadingStyle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newLoadingStyle:Z

    .line 214
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 215
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 213
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->NEW_SLIDER_STYLE:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->NewSliderStyle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSliderStyle:Z

    .line 217
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 218
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 216
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->NEW_SWITCH_STYLE:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->NewSwitchStyle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    .line 220
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 221
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 219
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_2
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->SEPARATED_HEADERS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->SeparateHeaders:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    .line 224
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 225
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "sectionsSeparatedHeaders"

    .line 226
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 223
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->DISABLE_DIVIDERS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->DisableDividers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->disableDividers:Z

    .line 228
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 229
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "disableDividers"

    .line 230
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 227
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->GOOEY_AVATAR_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->GooeyAvatarAnimation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->gooeyAvatarAnimation:Z

    .line 232
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 233
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "gooeyAvatarAnimation"

    .line 234
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 231
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->CUSTOM_THEMES:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->CustomChatThemes:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->customThemes:Z

    .line 236
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 237
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "customThemes"

    .line 238
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 235
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget p2, Lorg/telegram/messenger/R$string;->CustomChatThemesInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget p2, Lorg/telegram/messenger/R$string;->BlurOptions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->GLARE_ON_ELEMENTS:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->GlareOnElements:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->GlareOnElementsInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->glareOnElements:Z

    .line 243
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 244
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "glareOnElements"

    .line 245
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 242
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object p2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->FORCE_BLUR:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ForceBlur:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->forceBlur:Z

    .line 247
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 248
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "forceBlur"

    .line 249
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 246
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget p2, Lorg/telegram/messenger/R$string;->ForceBlurInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 124
    sget v0, Lorg/telegram/messenger/R$string;->Appearance:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeOptionStrings()V
    .locals 7

    .line 95
    sget v0, Lorg/telegram/messenger/R$string;->exteraAppName:I

    .line 96
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ActionBarTitleUsername:I

    .line 97
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ActionBarTitleName:I

    .line 98
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FilterChats:I

    .line 99
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/4 v2, 0x3

    aput-object v3, v4, v2

    iput-object v4, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->titles:[Ljava/lang/CharSequence;

    .line 101
    sget v3, Lorg/telegram/messenger/R$string;->TabTitleStyleTextWithIcons:I

    .line 102
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->TabTitleStyleTextOnly:I

    .line 103
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$string;->TabTitleStyleIconsOnly:I

    .line 104
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v3, v2, v5

    aput-object v4, v2, v0

    aput-object v6, v2, v1

    iput-object v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->tabIcons:[Ljava/lang/CharSequence;

    return-void
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    .line 255
    iget v2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-lez v2, :cond_4

    invoke-static {}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->values()[Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    move-result-object v3

    array-length v3, v3

    if-le v2, v3, :cond_0

    goto/16 :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;->values()[Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$AppearanceItem;

    move-result-object v2

    iget v3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 257
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 346
    :pswitch_1
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda12;-><init>()V

    const-string v3, "forceBlur"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 347
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->handleForceBlurChange()V

    return-void

    .line 344
    :pswitch_2
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda10;-><init>()V

    const-string v3, "glareOnElements"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 339
    :pswitch_3
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda8;-><init>()V

    const-string v3, "customThemes"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 337
    :pswitch_4
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda7;-><init>()V

    const-string v3, "gooeyAvatarAnimation"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 327
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->handleUseSystemEmojiClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 324
    :pswitch_6
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda3;-><init>()V

    const-string/jumbo v3, "useSystemFonts"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 325
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->handleUseSystemFontsClick()V

    return-void

    .line 328
    :pswitch_7
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda4;-><init>()V

    const-string/jumbo v3, "newSwitchStyle"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 330
    :pswitch_8
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;)V

    const-string/jumbo v3, "newSliderStyle"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 329
    :pswitch_9
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda5;-><init>()V

    const-string/jumbo v3, "newLoadingStyle"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 350
    :pswitch_a
    iget-boolean v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->md3StylesExpanded:Z

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->md3StylesExpanded:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    .line 351
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 315
    :pswitch_b
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda2;-><init>()V

    const-string v4, "disableDividers"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 316
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyCommonTheme()V

    .line 317
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->avatarCornersPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/appearance/components/AvatarCornersPreviewCell;->invalidate()V

    .line 318
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->chatListPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;->invalidate()V

    .line 319
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->fabShapeCell:Lcom/exteragram/messenger/preferences/appearance/components/FabShapeCell;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/appearance/components/FabShapeCell;->invalidate()V

    .line 320
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->filterTabsPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 321
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 311
    :pswitch_c
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda1;-><init>()V

    const-string/jumbo v4, "sectionsSeparatedHeaders"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 309
    :pswitch_d
    new-instance v1, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;

    invoke-direct {v1}, Lcom/exteragram/messenger/icons/ui/IconPacksActivity;-><init>()V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 308
    :pswitch_e
    new-instance v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;

    invoke-direct {v1}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;-><init>()V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 305
    :pswitch_f
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda20;-><init>()V

    const-string v3, "hideAllChats"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 306
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->handleHideAllChatsClick()V

    return-void

    .line 301
    :pswitch_10
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda19;-><init>()V

    const-string/jumbo v3, "tabCounter"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 302
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->handleTabCounterClick()V

    return-void

    .line 296
    :pswitch_11
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->tabIcons:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->TabTitleStyle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    new-instance v5, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda18;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 267
    :pswitch_12
    new-instance v1, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;

    invoke-direct {v1}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;-><init>()V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 263
    :pswitch_13
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->titles:[Ljava/lang/CharSequence;

    sget v1, Lorg/telegram/messenger/R$string;->ActionBarTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->titleText:I

    new-instance v5, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda11;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 294
    :pswitch_14
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda17;-><init>()V

    const-string/jumbo v3, "senderMiniAvatars"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 290
    :pswitch_15
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda16;-><init>()V

    const-string v4, "hideFloatingButton"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 269
    :pswitch_16
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda13;-><init>()V

    const-string v4, "hideStories"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 270
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 280
    :pswitch_17
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda15;-><init>()V

    const-string v5, "centerTitle"

    invoke-virtual {p0, v5, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 281
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->chatListPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v1, v4}, Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;->updateCentered(Z)V

    .line 284
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->refreshTitlePosition(Z)V

    .line 287
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 273
    :pswitch_18
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda14;-><init>()V

    const-string v5, "hideActionBarStatus"

    invoke-virtual {p0, v5, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 274
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->chatListPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

    if-eqz v1, :cond_3

    .line 275
    invoke-virtual {v1, v4}, Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;->updateStatus(Z)V

    .line 277
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    .line 341
    :pswitch_19
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda9;-><init>()V

    const-string v3, "forceSnow"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 342
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->chatListPreviewCell:Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;

    invoke-virtual {v1}, Lcom/exteragram/messenger/preferences/appearance/components/ChatListPreviewCell;->invalidate()V

    return-void

    .line 259
    :pswitch_1a
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v4, "singleCornerRadius"

    invoke-virtual {p0, v4, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
