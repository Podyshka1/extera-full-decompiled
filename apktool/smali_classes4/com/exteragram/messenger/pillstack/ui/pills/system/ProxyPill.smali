.class public Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;
.super Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private final iconView:Landroid/widget/ImageView;

.field private final layout:Landroid/widget/LinearLayout;

.field private final textView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$Bw4AuW8-no2h670OQT3qE3zO-WE(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 157
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;

    invoke-direct {v0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 45
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->layout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 47
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 48
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumWidth(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 49
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    const/16 v2, 0x10

    or-int/2addr v1, v2

    const/4 v3, -0x2

    const/16 v4, 0x1c

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->iconView:Landroid/widget/ImageView;

    .line 53
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 54
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, 0x1

    invoke-direct {v1, p1, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p1, 0x41500000    # 13.0f

    .line 57
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 58
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setIncludeFontPadding(Z)V

    .line 59
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    iput-boolean v4, v1, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    .line 61
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->setLoadingTargetView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->updateColors()V

    .line 65
    invoke-static {p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->onUpdateData(Z)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 139
    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->proxyPingUpdated:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->onUpdateData(Z)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->loading:Z

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->drawableHotspotChanged(FF)V

    .line 177
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    return-void
.end method

.method public getPillId()I
    .locals 1

    .line 77
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->PROXY:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget v0, v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->onUpdateData(Z)V

    .line 124
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 125
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyPingUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 126
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onDetachedFromWindow()V

    .line 132
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 133
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxyPingUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 134
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPillClicked()V
    .locals 2

    .line 146
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onPillLongClicked()Z
    .locals 6

    .line 154
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {v0, p0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v4, Lorg/telegram/messenger/R$string;->Settings:I

    .line 157
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onUpdateData(Z)V
    .locals 11

    .line 82
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isProxyEnabled()Z

    move-result v0

    .line 83
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 86
    :goto_1
    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    if-eqz v0, :cond_5

    .line 89
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    .line 91
    iget-wide v5, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    const-wide/16 v7, 0x270f

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    .line 92
    iget-object v5, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->iconView:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->drawer_proxy_on:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    .line 94
    sget v5, Lorg/telegram/messenger/R$string;->NavigationDrawerProxyPingShort:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 96
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->MenuProxyConnected:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_3
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->stopLoading()V

    goto :goto_4

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->iconView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->drawer_proxy_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    sget v0, Lorg/telegram/messenger/R$string;->MenuProxyConnecting:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->startLoading()V

    goto :goto_4

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->iconView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->drawer_proxy_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    sget v0, Lorg/telegram/messenger/R$string;->Proxy:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->stopLoading()V

    :goto_4
    if-nez p1, :cond_6

    .line 110
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    if-eqz p1, :cond_7

    .line 112
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->animateSizeChange()V

    .line 114
    :cond_7
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 117
    :cond_8
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->updateColors()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->loading:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 170
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 182
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isProxyEnabled()Z

    move-result v0

    .line 183
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 187
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 188
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->getThemedColor(I)I

    move-result v0

    goto :goto_2

    .line 190
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->getThemedColor(IF)I

    move-result v0

    .line 193
    :goto_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->getThemedColor(I)I

    move-result v1

    goto :goto_3

    :cond_3
    const v1, 0x3db851ec    # 0.09f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 194
    :goto_3
    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->layout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-static {v3, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 196
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/ProxyPill;->iconView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 197
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->updateLoadingColors()V

    return-void
.end method
