.class public Lorg/telegram/ui/MainTabsActivity;
.super Lorg/telegram/ui/ViewPagerActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;,
        Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;
    }
.end annotation


# instance fields
.field private accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private accountSwitchHintShown:Z

.field private final animatorTabsVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private dialogsActivity:Lorg/telegram/ui/DialogsActivity;

.field private dropCallsFragmentAfterPageScroll:Z

.field private fadeView:Landroid/view/View;

.field private final fragmentPosition:Landroid/graphics/RectF;

.field private iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private iBlur3SourceTabGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private navigationBarHeight:I

.field public tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

.field private tabsView:Lorg/telegram/ui/MainTabsLayout;

.field private tabsViewBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

.field private updateLayout:Lorg/telegram/ui/IUpdateLayout;

.field private updateLayoutWrapper:Lorg/telegram/ui/UpdateLayoutWrapper;


# direct methods
.method public static synthetic $r8$lambda$0CDbZsop8SJ4z4mcDLryBsOEVYY(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->lambda$showFiltersMenu$11(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1RLZ09LG7UTwBssEhRFjQbkqHnc(Lorg/telegram/ui/MainTabsActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->lambda$createView$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7FVGuC5xHt2hS_5TSy-bqFy-hZU(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->lambda$showAccountChangeHint$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ed6YdXW-ynN9CBuScrBb8wTiR_o(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 562
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 564
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ItemOptions;->dispatchCapturedTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$PvBB-_i0SQTxZSocEYXf2GD7haI(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 328
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 330
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ItemOptions;->dispatchCapturedTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$RJsv77aj9ZKvX2xhWe9xn9JGl2w(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 486
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    int-to-long v0, p0

    .line 487
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Vqs7unwEi7lP1Xo9a1xkqhRRIaw(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$XrOn8qJVMxgEoWA5_ZfD1rdmNt4(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->lambda$showAccountChangeHint$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$c-eBN2P5emev6TxdI9c4dsSaefM(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->openAddAccountFlow()V

    return-void
.end method

.method public static synthetic $r8$lambda$fQAoFVq4jKjjC4S-sAN3JPQBT-s(Lorg/telegram/ui/MainTabsActivity;ILorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MainTabsActivity;->lambda$openAccountSelectorInternal$8(ILorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQbJRMDw3YnrhKqE_9ykeZkxnO8(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->blur3_updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$qulX4G3DallFjoKzto_7IHkjnYE(Lorg/telegram/ui/MainTabsActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->lambda$createView$3(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xkMeHX6JfrRR5n6e1M7h7v4GfAc(Lorg/telegram/ui/MainTabsActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->lambda$createView$4(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xqBRb7ssOj1gRnRuflH2Sps8lZU(Lorg/telegram/ui/MainTabsActivity;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/MainTabsActivity;->lambda$createView$5(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zdmMyODP3-sV6BvT2i20eZ7_Wl4(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/Components/ItemOptions;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/MainTabsActivity;->lambda$showFiltersMenu$10(Lorg/telegram/ui/Components/ItemOptions;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zqcDYBv05qt4XzODvfzemh-_25A(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 506
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 508
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ItemOptions;->dispatchCapturedTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatorTabsVisible(Lorg/telegram/ui/MainTabsActivity;)Lme/vkryl/android/animator/BoolAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MainTabsActivity;->animatorTabsVisible:Lme/vkryl/android/animator/BoolAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfragmentPosition(Lorg/telegram/ui/MainTabsActivity;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MainTabsActivity;->fragmentPosition:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/MainTabsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettabsView(Lorg/telegram/ui/MainTabsActivity;)Lorg/telegram/ui/MainTabsLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mblur3_invalidateBlur(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->blur3_invalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_fadeView(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_fadeView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_tabsPosition(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_tabsPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misBottomTabsEnabled(Lorg/telegram/ui/MainTabsActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mopenAccountSelector(Lorg/telegram/ui/MainTabsActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/MainTabsActivity;->openAccountSelector(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    .line 143
    invoke-direct {p0}, Lorg/telegram/ui/ViewPagerActivity;-><init>()V

    .line 126
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x17c

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;JZ)V

    iput-object v0, v2, Lorg/telegram/ui/MainTabsActivity;->animatorTabsVisible:Lme/vkryl/android/animator/BoolAnimator;

    .line 1267
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/MainTabsActivity;->fragmentPosition:Landroid/graphics/RectF;

    .line 144
    iput-object p1, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    .line 145
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->initBlurSources()V

    return-void
.end method

.method private addAddAccountItem(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 3

    .line 472
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    sget v1, Lorg/telegram/messenger/R$string;->AddAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private blur3_invalidateBlur()V
    .locals 3

    .line 1269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceTabGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1273
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1274
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1276
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceTabGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setSize(II)V

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceTabGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->updateDisplayListIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method private blur3_updateColors()V
    .locals 4

    .line 1281
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsViewBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->updateColors()V

    .line 1285
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->blur3_invalidateBlur()V

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1289
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    if-eqz v0, :cond_2

    .line 1290
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1292
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    if-eqz v0, :cond_3

    .line 1293
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1294
    invoke-virtual {v3}, Lorg/telegram/ui/Components/glass/GlassTabView;->updateColorsLottie()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private canAddAccount()Z
    .locals 2

    .line 447
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private canScrollInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3

    .line 888
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 892
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 893
    instance-of v2, v0, Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;

    if-eqz v2, :cond_1

    .line 894
    check-cast v0, Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;

    .line 895
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;->canParentTabsSlide(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private checkContactsTabBadge()V
    .locals 4

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 270
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    .line 271
    const-string v2, "askAboutContacts2"

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    :cond_0
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v0, v0, v1

    const-string v2, "!"

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setCounter(Ljava/lang/String;ZZ)V

    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setCounter(Ljava/lang/String;ZZ)V

    :cond_2
    return-void
.end method

.method private checkUi_callTabVisible(ZZ)V
    .locals 3

    .line 1142
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v1, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v1, v2, p2}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    .line 1144
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    iget-object v1, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method private checkUi_contactsTabVisible(ZZ)V
    .locals 3

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v1, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method private checkUi_fadeView()V
    .locals 6

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1093
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1095
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1099
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v0

    .line 1100
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionProfile()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    sub-float v0, v3, v0

    .line 1101
    iget v4, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->getNavigationBarThirdButtonsFactor(FFI)F

    move-result v4

    sub-float v4, v3, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 1102
    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->animatorTabsVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v4}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v4

    mul-float/2addr v3, v4

    .line 1104
    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1105
    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkUi_tabsPosition()V
    .locals 9

    .line 1110
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayoutWrapper:Lorg/telegram/ui/UpdateLayoutWrapper;

    invoke-virtual {v0}, Lorg/telegram/ui/UpdateLayoutWrapper;->isUpdateLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42300000    # 44.0f

    .line 1119
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1120
    :goto_0
    iget v4, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    add-int/2addr v4, v0

    neg-int v0, v4

    const/high16 v4, 0x42200000    # 40.0f

    .line 1121
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v0

    .line 1123
    iget-object v5, p0, Lorg/telegram/ui/MainTabsActivity;->animatorTabsVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v5}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v5

    const v6, 0x3f59999a    # 0.85f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1124
    invoke-static {v6, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 1126
    iget-object v8, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-static {v4, v0, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    cmpl-float v4, v5, v7

    const/4 v6, 0x1

    if-lez v4, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    if-lez v4, :cond_3

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1131
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private checkUnreadCount(Z)V
    .locals 4

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getMainUnreadCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    int-to-long v2, v0

    const/16 v0, 0x2c

    .line 431
    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, v1, p1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setCounter(Ljava/lang/String;ZZ)V

    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setCounter(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private createDialogsActivity(Landroid/os/Bundle;)Lorg/telegram/ui/DialogsActivity;
    .locals 2

    .line 766
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->createDialogsArguments(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;->prepareTabFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/DialogsActivity;

    .line 767
    new-instance v0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;-><init>(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/MainTabsActivity-IA;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/DialogsActivity;->setMainTabsActivityController(Lorg/telegram/ui/MainTabsActivityController;)V

    return-object p1
.end method

.method private createDialogsArguments(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 754
    new-instance v0, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 755
    :goto_0
    const-string p1, "hasMainTabs"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static getIcon(Lorg/telegram/messenger/MessagesController$DialogFilter;)I
    .locals 3

    .line 617
    iget p0, p0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v0, p0

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 618
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    return p0

    .line 619
    :cond_0
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int v1, p0, v0

    if-ne v1, v0, :cond_1

    .line 620
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_markunread:I

    return p0

    .line 621
    :cond_1
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v0, p0

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    if-ne v0, v1, :cond_2

    .line 622
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    return p0

    .line 623
    :cond_2
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v0, p0

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    if-ne v0, v1, :cond_3

    .line 624
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    return p0

    .line 625
    :cond_3
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v0, p0

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    if-ne v0, v1, :cond_4

    .line 626
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    return p0

    .line 627
    :cond_4
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr p0, v0

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    if-ne p0, v0, :cond_5

    .line 628
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_bots:I

    return p0

    .line 630
    :cond_5
    sget p0, Lorg/telegram/messenger/R$drawable;->msg_folders:I

    return p0
.end method

.method private getPositionCallsOrSettings()I
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showContactsTab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getPositionChats()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getPositionContacts()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getPositionProfile()I
    .locals 1

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showContactsTab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private indexToPosition(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionChats()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 117
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionContacts()I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 119
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionProfile()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 118
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionCallsOrSettings()I

    move-result p1

    return p1
.end method

.method private initBlurSources()V
    .locals 3

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 150
    new-instance v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceTabGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 151
    new-instance v1, Lorg/telegram/ui/MainTabsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MainTabsActivity$1;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->setupRenderer(Lorg/telegram/ui/Components/blur3/RenderNodeWithHash$Renderer;)V

    goto :goto_0

    .line 216
    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceTabGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 219
    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    return-void
.end method

.method private isBottomTabsEnabled()Z
    .locals 1

    .line 908
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v0

    return v0
.end method

.method private isDrawerAccountPreview()Z
    .locals 3

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "drawer_account_preview"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)Z
    .locals 5

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->hasRightFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance(I)Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->hasArchivedChats()Z

    move-result v2

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    .line 317
    :cond_2
    invoke-direct {p0, p1, v0, v2}, Lorg/telegram/ui/MainTabsActivity;->showFiltersMenu(Landroid/view/View;Ljava/util/ArrayList;Z)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$createView$2()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/UserConfig;->setShowContactsTab(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)Z
    .locals 6

    const/high16 v0, 0x41e00000    # 28.0f

    .line 323
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, -0x1000000

    const v5, 0x3e19999a    # 0.15f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 325
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 327
    new-instance v2, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1, p1}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 335
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_archive_hide:I

    sget v2, Lorg/telegram/messenger/R$string;->HideContactsTab:I

    .line 336
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    invoke-virtual {v1, p1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v1, 0x1

    .line 339
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 v2, 0x40800000    # 4.0f

    .line 340
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v5, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 341
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setDiscardScrolls(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 343
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDismissOnMoveOutside(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v1
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)Z
    .locals 0

    .line 351
    invoke-virtual {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->openAccountSelector(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createView$5(ILandroid/view/View;)V
    .locals 0

    .line 358
    iget-object p2, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->isManualScrolling()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->isTouch()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->indexToPosition(I)I

    move-result p1

    .line 363
    iget-object p2, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 364
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    .line 365
    instance-of p2, p1, Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;

    if-eqz p2, :cond_2

    .line 366
    check-cast p1, Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;->onParentScrollToTop()V

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 371
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/MainTabsActivity;->selectTab(IZ)V

    .line 372
    iget-object p2, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$openAccountSelectorInternal$8(ILorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 520
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    if-ne p3, p1, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 522
    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    .line 523
    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$showAccountChangeHint$12()V
    .locals 1

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showAccountChangeHint$13()V
    .locals 9

    .line 1234
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 1236
    aget-object v0, v0, v1

    .line 1237
    iget-object v1, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v0

    .line 1239
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1240
    iget v2, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    neg-int v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const v2, 0x40ea8f5c    # 7.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v3, Lorg/telegram/messenger/R$string;->SwitchAccountHint:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    neg-float v1, v1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v7, 0x0

    const/high16 v8, 0x42900000    # 72.0f

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    const/16 v4, 0x57

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v1, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$showFiltersMenu$10(Lorg/telegram/ui/Components/ItemOptions;ILandroid/view/View;)V
    .locals 0

    .line 589
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->switchToFilter(I)V

    return-void
.end method

.method private synthetic lambda$showFiltersMenu$11(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 2

    .line 597
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 598
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 599
    const-string v0, "folderId"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 600
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private openAccountSelector(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 443
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/MainTabsActivity;->openAccountSelectorInternal(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private openAccountSelectorInternal(Landroid/view/View;Landroid/view/View;Z)V
    .locals 8

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 481
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    :cond_1
    new-instance v2, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p3, :cond_2

    .line 496
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 499
    :cond_2
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    if-nez p3, :cond_3

    .line 500
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->canAddAccount()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 501
    invoke-direct {p0, v2}, Lorg/telegram/ui/MainTabsActivity;->addAddAccountItem(Lorg/telegram/ui/Components/ItemOptions;)V

    .line 503
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_9

    if-eqz p2, :cond_4

    move-object p1, p2

    .line 505
    :cond_4
    new-instance p2, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, v2}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 512
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 513
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v1

    :goto_1
    if-ge p2, p1, :cond_9

    .line 514
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz p3, :cond_6

    if-nez p2, :cond_6

    move v5, v4

    goto :goto_2

    :cond_6
    move v5, v1

    :goto_2
    if-nez p3, :cond_7

    add-int/lit8 v6, p1, -0x1

    if-ne p2, v6, :cond_7

    move v6, v4

    goto :goto_3

    :cond_7
    move v6, v1

    .line 518
    :goto_3
    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    if-ne v7, v3, :cond_8

    move v7, v4

    goto :goto_4

    :cond_8
    move v7, v1

    :goto_4
    invoke-virtual {p0, v3, v7, v5, v6}, Lorg/telegram/ui/MainTabsActivity;->accountView(IZZZ)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 519
    new-instance v6, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, v3, v2}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/MainTabsActivity;ILorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0xe6

    const/16 v6, 0x30

    .line 526
    invoke-static {v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_b

    .line 530
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->canAddAccount()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 531
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result p1

    if-lez p1, :cond_a

    .line 532
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 534
    :cond_a
    invoke-direct {p0, v2}, Lorg/telegram/ui/MainTabsActivity;->addAddAccountItem(Lorg/telegram/ui/Components/ItemOptions;)V

    .line 539
    :cond_b
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->setBlur(Z)Lorg/telegram/ui/Components/ItemOptions;

    const/high16 p1, 0x40800000    # 4.0f

    .line 540
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/4 p2, 0x0

    invoke-virtual {v2, p2, p1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    if-eqz p3, :cond_c

    const/high16 p1, 0x42200000    # 40.0f

    .line 543
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p3

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    goto :goto_5

    :cond_c
    const/high16 p1, 0x41e00000    # 28.0f

    .line 545
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p3

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    .line 547
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, -0x1000000

    const v6, 0x3e19999a    # 0.15f

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {p3, v0, p2, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 548
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 549
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDiscardScrolls(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 550
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->setDismissOnMoveOutside(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 551
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    .line 553
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "accountswitchhint"

    const/4 p3, 0x3

    .line 554
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 555
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private openAddAccountFlow()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xf

    :goto_0
    if-ltz v2, :cond_1

    .line 454
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_0

    .line 457
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, -0x8

    :cond_2
    if-lez v0, :cond_3

    if-eqz v1, :cond_3

    .line 465
    new-instance v0, Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 466
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result v0

    if-nez v0, :cond_4

    .line 467
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v6, 0x0

    const/4 v4, 0x7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_4
    move-object v2, p0

    return-void
.end method

.method private prepareTabFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 760
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setCurrentAccount(I)V

    .line 761
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    return-object p1
.end method

.method private showAccountChangeHint()V
    .locals 6

    .line 1228
    iget-boolean v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHintShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isDrawerAccountPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1230
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 1232
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "accountswitchhint"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_3

    .line 1233
    new-instance v0, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    const-wide/16 v4, 0x5dc

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1252
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1253
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "channelgifthint"

    .line 1254
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v3, v1

    .line 1253
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1258
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHintShown:Z

    return-void
.end method

.method private showFiltersMenu(Landroid/view/View;Ljava/util/ArrayList;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 560
    invoke-static/range {p0 .. p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    .line 561
    new-instance v5, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, v4, v1}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x3

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 569
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v5

    .line 570
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 571
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 572
    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/exteragram/messenger/ExteraConfig;->hideAllChats:Z

    if-eqz v8, :cond_0

    goto :goto_3

    .line 576
    :cond_0
    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_1

    sget v8, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    iget-object v8, v7, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 577
    :goto_1
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v8

    .line 578
    iget-object v9, v7, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 579
    iget-object v9, v7, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v8

    .line 583
    :cond_2
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ItemOptions;->add()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    .line 584
    invoke-static {v7}, Lorg/telegram/ui/MainTabsActivity;->getIcon(Lorg/telegram/messenger/MessagesController$DialogFilter;)I

    move-result v7

    invoke-virtual {v9, v8, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 585
    iget-object v7, v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->textView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 586
    iget-object v7, v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 587
    iget-object v7, v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x5

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    or-int/lit8 v12, v8, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v10, 0x18

    const/high16 v11, 0x41c00000    # 24.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    new-instance v7, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v7, v0, v4, v6}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/Components/ItemOptions;I)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 593
    :cond_4
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/ItemOptions;->addGapIf(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 596
    :cond_5
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    sget v6, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v7, v0, v4}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v4, v3, v2, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    const/high16 v2, 0x41e00000    # 28.0f

    .line 603
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    .line 604
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, -0x1000000

    const v9, 0x3e19999a    # 0.15f

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 606
    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/high16 v3, 0x40800000    # 4.0f

    .line 607
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v9, v3}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 608
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 609
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ItemOptions;->setDiscardScrolls(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, 0x1

    .line 610
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setDismissOnMoveOutside(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 611
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v2
.end method


# virtual methods
.method public accountView(IZZZ)Landroid/widget/LinearLayout;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 636
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 637
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 638
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v3, v9, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v7, 0x3d23d70a    # 0.04f

    const/high16 v8, 0x3fc00000    # 1.5f

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v6, 0x3

    move/from16 v4, p3

    move/from16 v5, p4

    .line 639
    invoke-static/range {v2 .. v8}, Lcom/exteragram/messenger/utils/ui/UIUtil;->applyScaleStateListAnimator(Landroid/view/View;FZZIFF)V

    .line 641
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 643
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 644
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 646
    new-instance v5, Lorg/telegram/ui/MainTabsActivity$4;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v0, v6, v1}, Lorg/telegram/ui/MainTabsActivity$4;-><init>(Lorg/telegram/ui/MainTabsActivity;Landroid/content/Context;Z)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v10, 0x22

    const/16 v11, 0x22

    const/16 v12, 0x10

    const/16 v13, 0xc

    const/4 v14, 0x0

    .line 660
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    new-instance v6, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    const v1, 0x3f553f7d    # 0.833f

    .line 664
    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleX(F)V

    .line 665
    invoke-virtual {v6, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    const/high16 v1, 0x42000000    # 32.0f

    .line 667
    invoke-static {v1}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v1

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 668
    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    move/from16 v7, p1

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    .line 669
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/16 v12, 0x11

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 670
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 673
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    .line 674
    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 675
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    .line 677
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 678
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x10

    const/16 v8, 0xd

    const/4 v9, 0x0

    .line 679
    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method public canBeginSlide()Z
    .locals 1

    .line 1188
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected canScrollBackward(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 884
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/MainTabsActivity;->canScrollInternal(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method protected canScrollForward(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 879
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/MainTabsActivity;->canScrollInternal(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method protected createBaseFragmentAt(I)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 6

    .line 779
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionContacts()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "needFinishFragment"

    const/4 v3, 0x1

    const-string v4, "hasMainTabs"

    const/4 v5, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showContactsTab:Z

    if-eqz v0, :cond_0

    .line 780
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 781
    const-string v0, "needPhonebook"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 782
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 783
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 784
    new-instance v0, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;->prepareTabFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ContactsActivity;

    .line 785
    new-instance v0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;-><init>(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/MainTabsActivity-IA;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ContactsActivity;->setMainTabsActivityController(Lorg/telegram/ui/MainTabsActivityController;)V

    return-object p1

    .line 787
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionCallsOrSettings()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 788
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    if-eqz p1, :cond_1

    .line 789
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 790
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 791
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 792
    new-instance v0, Lorg/telegram/ui/CallLogActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/CallLogActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;->prepareTabFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CallLogActivity;

    .line 793
    new-instance v0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;-><init>(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/MainTabsActivity-IA;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CallLogActivity;->setMainTabsActivityController(Lorg/telegram/ui/MainTabsActivityController;)V

    return-object p1

    .line 796
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 797
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 798
    new-instance v0, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/SettingsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;->prepareTabFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/SettingsActivity;

    .line 799
    new-instance v0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;-><init>(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/MainTabsActivity-IA;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/SettingsActivity;->setMainTabsActivityController(Lorg/telegram/ui/MainTabsActivityController;)V

    return-object p1

    .line 801
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionChats()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 802
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->createDialogsActivity(Landroid/os/Bundle;)Lorg/telegram/ui/DialogsActivity;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    return-object p1

    .line 804
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionProfile()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 805
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 806
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    const-string/jumbo v2, "user_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 807
    const-string v0, "my_profile"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 809
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 810
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;->prepareTabFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    .line 811
    new-instance v0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;-><init>(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/MainTabsActivity-IA;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity;->setMainTabsActivityController(Lorg/telegram/ui/MainTabsActivityController;)V

    return-object p1

    :cond_4
    return-object v5
.end method

.method protected createContentView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    .line 224
    new-instance v0, Lorg/telegram/ui/MainTabsActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/MainTabsActivity$2;-><init>(Lorg/telegram/ui/MainTabsActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 300
    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 302
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ViewPagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 304
    new-instance v0, Lorg/telegram/ui/MainTabsLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/MainTabsLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    const/4 v1, 0x0

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, 0x5

    .line 308
    new-array v0, v0, [Lorg/telegram/ui/Components/glass/GlassTabView;

    iput-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    .line 309
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v3, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->CHATS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v4, Lorg/telegram/messenger/R$string;->MainTabsChats:I

    invoke-static {p1, v2, v3, v4}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v2

    aput-object v2, v0, v1

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v0, v0, v1

    new-instance v2, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v3, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->CONTACTS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v4, Lorg/telegram/messenger/R$string;->MainTabsContacts:I

    invoke-static {p1, v2, v3, v4}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v0, v0, v3

    new-instance v2, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v4, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->SETTINGS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v5, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {p1, v2, v4, v5}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v4, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->CALLS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v5, Lorg/telegram/messenger/R$string;->MainTabsCalls:I

    invoke-static {p1, v2, v4, v5}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    sget v5, Lorg/telegram/messenger/R$string;->MainTabsProfile:I

    invoke-static {p1, v2, v4, v5}, Lorg/telegram/ui/Components/glass/GlassTabView;->createAvatar(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v0, v4

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move v0, v1

    .line 355
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 357
    aget-object v2, v2, v0

    new-instance v4, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/MainTabsActivity;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 376
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4, v3, v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showContactsTab:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/MainTabsActivity;->checkUi_contactsTabVisible(ZZ)V

    .line 379
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/MainTabsActivity;->checkUi_callTabVisible(ZZ)V

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/MainTabsActivity;->selectTab(IZ)V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    .line 386
    new-instance v0, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v2, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    .line 389
    new-instance v2, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceTabGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    :goto_1
    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    .line 390
    iget-object v4, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    const/high16 v4, 0x40000

    .line 391
    invoke-static {v4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    .line 393
    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->mainTabs(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabsViewBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v4, 0x41e00000    # 28.0f

    .line 394
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 395
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabsViewBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const v4, 0x40f54fdf    # 7.666f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 396
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->tabsViewBackground:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    new-instance v2, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    .line 399
    iget-object v4, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 401
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    .line 402
    new-instance v0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;

    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;-><init>(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    const/high16 v2, 0x42700000    # 60.0f

    .line 403
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundWithFadeDrawable;->setFadeHeight(IZ)V

    .line 404
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    const/4 v3, -0x1

    const/16 v4, 0x50

    invoke-static {v3, v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    const/16 v5, 0x48

    const/16 v6, 0x51

    const/16 v7, 0x158

    invoke-static {v7, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    new-instance v0, Lorg/telegram/ui/UpdateLayoutWrapper;

    invoke-direct {v0, p1}, Lorg/telegram/ui/UpdateLayoutWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayoutWrapper:Lorg/telegram/ui/UpdateLayoutWrapper;

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayoutWrapper:Lorg/telegram/ui/UpdateLayoutWrapper;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/ApplicationLoader;->takeUpdateLayout(Landroid/app/Activity;Landroid/view/ViewGroup;)Lorg/telegram/ui/IUpdateLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayout:Lorg/telegram/ui/IUpdateLayout;

    if-eqz p1, :cond_3

    .line 414
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/IUpdateLayout;->updateAppUpdateViews(IZ)V

    .line 420
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/MainTabsActivity;->checkUnreadCount(Z)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 948
    sget p2, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_11

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_0

    goto/16 :goto_2

    .line 950
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->appUpdateLoading:I

    if-ne p1, p2, :cond_1

    .line 951
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayout:Lorg/telegram/ui/IUpdateLayout;

    if-eqz p1, :cond_10

    const/4 p2, 0x0

    .line 952
    invoke-virtual {p1, p2}, Lorg/telegram/ui/IUpdateLayout;->updateFileProgress([Ljava/lang/Object;)V

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayout:Lorg/telegram/ui/IUpdateLayout;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/IUpdateLayout;->updateAppUpdateViews(IZ)V

    return-void

    .line 955
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_2

    .line 956
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 957
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 958
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    .line 959
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayout:Lorg/telegram/ui/IUpdateLayout;

    if-eqz p1, :cond_10

    .line 960
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/IUpdateLayout;->updateAppUpdateViews(IZ)V

    return-void

    .line 963
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_3

    .line 964
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 965
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAppUpdateAvailable()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 966
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    .line 967
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayout:Lorg/telegram/ui/IUpdateLayout;

    if-eqz p1, :cond_10

    .line 968
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/IUpdateLayout;->updateAppUpdateViews(IZ)V

    return-void

    .line 971
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_4

    .line 972
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayout:Lorg/telegram/ui/IUpdateLayout;

    if-eqz p1, :cond_10

    .line 973
    invoke-virtual {p1, p3}, Lorg/telegram/ui/IUpdateLayout;->updateFileProgress([Ljava/lang/Object;)V

    return-void

    .line 975
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    if-ne p1, p2, :cond_6

    .line 976
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayout:Lorg/telegram/ui/IUpdateLayout;

    if-eqz p1, :cond_10

    .line 977
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getMainFragmentsStackSize()I

    move-result p3

    if-ne p3, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/IUpdateLayout;->updateAppUpdateViews(IZ)V

    return-void

    .line 979
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    if-ne p1, p2, :cond_7

    .line 980
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->clearAllHiddenFragments()V

    return-void

    .line 981
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->callTabsVisibleToggled:I

    if-ne p1, p2, :cond_9

    .line 982
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    .line 983
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/MainTabsActivity;->checkUi_callTabVisible(ZZ)V

    .line 984
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionCallsOrSettings()I

    move-result p2

    if-ne p1, p2, :cond_8

    .line 985
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionChats()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    .line 986
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionChats()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/MainTabsActivity;->selectTab(IZ)V

    .line 987
    iput-boolean v1, p0, Lorg/telegram/ui/MainTabsActivity;->dropCallsFragmentAfterPageScroll:Z

    return-void

    .line 989
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionCallsOrSettings()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ViewPagerActivity;->dropFragmentAtPosition(I)V

    return-void

    .line 991
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsTabVisibleToggled:I

    if-ne p1, p2, :cond_e

    .line 992
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/UserConfig;->showContactsTab:Z

    .line 993
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/MainTabsActivity;->checkUi_contactsTabVisible(ZZ)V

    .line 995
    iget-object p2, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p2, :cond_10

    .line 996
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p2

    if-eqz p1, :cond_a

    if-lt p2, v1, :cond_c

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_a
    if-ne p2, v1, :cond_b

    move p2, v0

    goto :goto_0

    :cond_b
    if-le p2, v1, :cond_c

    add-int/lit8 p2, p2, -0x1

    .line 1009
    :cond_c
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->clearAllHiddenFragments()V

    move p1, v0

    .line 1010
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/MainTabsActivity;->getTabsCount()I

    move-result p3

    add-int/2addr p3, v1

    if-ge p1, p3, :cond_d

    .line 1011
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ViewPagerActivity;->dropFragmentAtPosition(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1013
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iput p2, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    .line 1014
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->rebuild(Z)V

    .line 1015
    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/MainTabsActivity;->selectTab(IZ)V

    return-void

    .line 1017
    :cond_e
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    if-ne p1, p2, :cond_f

    .line 1018
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    if-eqz p1, :cond_10

    const/4 p2, 0x4

    aget-object p1, p1, p2

    if-eqz p1, :cond_10

    .line 1019
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/glass/GlassTabView;->updateUserAvatar(I)V

    return-void

    .line 1021
    :cond_f
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsPermissionBadgeCheck:I

    if-ne p1, p2, :cond_10

    .line 1022
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkContactsTabBadge()V

    :cond_10
    return-void

    .line 949
    :cond_11
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_12

    move v0, v1

    :cond_12
    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;->checkUnreadCount(Z)V

    return-void
.end method

.method public getCustomSlideTransition(ZZF)Landroid/animation/Animator;
    .locals 1

    .line 1211
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCustomSlideTransition(ZZF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDialogsActivity()Lorg/telegram/ui/DialogsActivity;
    .locals 1

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    return-object v0
.end method

.method protected getFragmentsCount()I
    .locals 1

    .line 724
    invoke-virtual {p0}, Lorg/telegram/ui/MainTabsActivity;->getTabsCount()I

    move-result v0

    return v0
.end method

.method protected getStartPosition()I
    .locals 1

    .line 729
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionChats()I

    move-result v0

    return v0
.end method

.method public getTabsCount()I
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showContactsTab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 17

    move-object/from16 v0, p0

    .line 1150
    invoke-super {v0}, Lorg/telegram/ui/ViewPagerActivity;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    .line 1152
    new-instance v8, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v8, v0}, Lorg/telegram/ui/MainTabsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    .line 1153
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    .line 914
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    iput v0, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayoutWrapper:Lorg/telegram/ui/UpdateLayoutWrapper;

    invoke-virtual {v0}, Lorg/telegram/ui/UpdateLayoutWrapper;->isUpdateLayoutVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v2, 0x42300000    # 44.0f

    .line 916
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 917
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/MainTabsActivity;->updateLayoutWrapper:Lorg/telegram/ui/UpdateLayoutWrapper;

    iget v4, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    invoke-virtual {v3, v1, v1, v1, v4}, Lorg/telegram/ui/UpdateLayoutWrapper;->setPadding(IIII)V

    .line 921
    iget v3, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    add-int/2addr v3, v2

    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->isBottomTabsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    .line 922
    iget-object v4, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 923
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v5, v3, :cond_2

    .line 924
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 925
    iget-object v3, p0, Lorg/telegram/ui/MainTabsActivity;->fadeView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 929
    iget v3, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    add-int/2addr v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 930
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 931
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v4, v3, :cond_4

    .line 932
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 933
    iget-object v3, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 938
    iget v0, p0, Lorg/telegram/ui/MainTabsActivity;->navigationBarHeight:I

    invoke-virtual {p2, v1, v1, v1, v0}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    .line 940
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_tabsPosition()V

    .line 941
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_fadeView()V

    .line 943
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ViewPagerActivity;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed(Z)Z
    .locals 3

    .line 736
    invoke-super {p0, p1}, Lorg/telegram/ui/ViewPagerActivity;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p0}, Lorg/telegram/ui/MainTabsActivity;->getStartPosition()I

    move-result v1

    .line 739
    iget-object v2, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v2

    if-eq v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 741
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public onBeginSlide()V
    .locals 1

    .line 1194
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    .line 1195
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    :cond_0
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

    .line 1078
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_tabsPosition()V

    .line 1079
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_fadeView()V

    .line 1081
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1083
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 1041
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1042
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1043
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1044
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1045
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1046
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->callTabsVisibleToggled:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1047
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsTabVisibleToggled:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1048
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1049
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsPermissionBadgeCheck:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1050
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1051
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateLoading:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1052
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1054
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 1059
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1060
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1061
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1062
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsCountUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1063
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1064
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->callTabsVisibleToggled:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1065
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsTabVisibleToggled:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1066
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1067
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsPermissionBadgeCheck:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1068
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1069
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appUpdateLoading:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1070
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1072
    invoke-super {p0}, Lorg/telegram/ui/ViewPagerActivity;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 284
    invoke-super {p0}, Lorg/telegram/ui/ViewPagerActivity;->onPause()V

    .line 285
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->accountSwitchHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_0
    return-void
.end method

.method public onPreviewOpenAnimationEnd()V
    .locals 1

    .line 854
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 242
    invoke-super {p0}, Lorg/telegram/ui/ViewPagerActivity;->onResume()V

    .line 243
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->blur3_updateColors()V

    .line 244
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_tabsPosition()V

    .line 245
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_fadeView()V

    .line 246
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkContactsTabBadge()V

    const/4 v0, 0x1

    .line 247
    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;->checkUnreadCount(Z)V

    .line 249
    new-instance v0, Lorg/telegram/ui/MainTabsActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/MainTabsActivity$3;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    .line 262
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/ViewPagerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 265
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->showAccountChangeHint()V

    return-void
.end method

.method public onSlideProgress(ZF)V
    .locals 1

    .line 1203
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onSlideProgress(ZF)V

    :cond_0
    return-void
.end method

.method protected onViewPagerScrollEnd()V
    .locals 3

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/MainTabsActivity;->selectTab(IZ)V

    const/4 v0, 0x0

    .line 688
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/MainTabsActivity;->setGestureSelectedOverride(FZ)V

    .line 690
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->blur3_invalidateBlur()V

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz v0, :cond_2

    .line 693
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    .line 694
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionCallsOrSettings()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/MainTabsActivity;->dropCallsFragmentAfterPageScroll:Z

    if-eqz v2, :cond_1

    .line 695
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionCallsOrSettings()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ViewPagerActivity;->dropFragmentAtPosition(I)V

    .line 696
    iput-boolean v1, p0, Lorg/telegram/ui/MainTabsActivity;->dropCallsFragmentAfterPageScroll:Z

    .line 698
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionProfile()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 699
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionProfile()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ViewPagerActivity;->dropFragmentAtPosition(I)V

    :cond_2
    return-void
.end method

.method protected onViewPagerTabAnimationUpdate(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 709
    iget-object v1, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lorg/telegram/ui/ViewPagerActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v1

    .line 711
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/MainTabsActivity;->setGestureSelectedOverride(FZ)V

    if-nez p1, :cond_0

    .line 713
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/MainTabsActivity;->selectTab(IZ)V

    .line 717
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->checkUi_fadeView()V

    .line 718
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->blur3_invalidateBlur()V

    return-void
.end method

.method public openAccountSelector(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 439
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/MainTabsActivity;->openAccountSelectorInternal(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public prepareDialogsActivity(Landroid/os/Bundle;)Lorg/telegram/ui/DialogsActivity;
    .locals 1

    .line 772
    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity;->createDialogsActivity(Landroid/os/Bundle;)Lorg/telegram/ui/DialogsActivity;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    .line 773
    invoke-direct {p0}, Lorg/telegram/ui/MainTabsActivity;->getPositionChats()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ViewPagerActivity;->putFragmentAtPosition(ILorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 774
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    return-object p1
.end method

.method public prepareFragmentToSlide(ZZ)V
    .locals 1

    .line 1217
    invoke-virtual {p0}, Lorg/telegram/ui/ViewPagerActivity;->getCurrentVisibleFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    :cond_0
    return-void
.end method

.method public selectTab(IZ)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 826
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 827
    aget-object v2, v2, v1

    .line 828
    invoke-direct {p0, v1}, Lorg/telegram/ui/MainTabsActivity;->indexToPosition(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

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

    .line 833
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 834
    invoke-direct {p0, v0}, Lorg/telegram/ui/MainTabsActivity;->indexToPosition(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    .line 835
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 836
    iget-object v2, p0, Lorg/telegram/ui/MainTabsActivity;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p2}, Lorg/telegram/ui/Components/glass/GlassTabView;->setGestureSelectedOverride(FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity;->tabsView:Lorg/telegram/ui/MainTabsLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInPreviewMode(Z)V
    .locals 3

    .line 843
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity;->fragmentsArr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 845
    iget-object v2, p0, Lorg/telegram/ui/ViewPagerActivity;->fragmentsArr:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ViewPagerActivity$FragmentState;

    if-eqz v2, :cond_0

    .line 847
    iget-object v2, v2, Lorg/telegram/ui/ViewPagerActivity$FragmentState;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
