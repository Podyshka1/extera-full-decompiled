.class public abstract Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$15gD65yOpa3rDErTy8NwfewFuCA(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 0

    .line 68
    const/high16 p0, 0x33000000

    return p0
.end method

.method public static synthetic $r8$lambda$Hu03si0pU-Ox6f-YgIxiDqD1b5o(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 0

    .line 79
    invoke-static {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->checkBlurEnabled(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    .line 81
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_0

    :cond_0
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelBackground:I

    .line 80
    :goto_0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    const/16 p1, 0xff

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0

    :cond_1
    const/high16 p0, 0x40000

    .line 84
    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x3f59999a    # 0.85f

    goto :goto_1

    :cond_2
    const p0, 0x3f428f5c    # 0.76f

    .line 85
    :goto_1
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_topPanelBackground:I

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    .line 86
    invoke-static {p1, p0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Uf8Q0Io7ACfo2w8f3bb9ccMYAUA(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 2

    const/high16 p1, 0x40000

    .line 103
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const p1, 0x3f428f5c    # 0.76f

    .line 104
    :goto_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 105
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    .line 106
    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->solveSrcColor(IIF)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bh8Wi0pKzsRvX8abf50Bjdo7WvI(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 2

    const/high16 p1, 0x40000

    .line 38
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const p1, 0x3f428f5c    # 0.76f

    .line 39
    :goto_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 40
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_glass_targetMainTopPanel:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    .line 41
    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->solveSrcColor(IIF)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lVkm7AnUPg4K1xNBgWvdJSqq43U(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 0

    const/high16 p0, 0x40000

    .line 119
    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$t1moWzY8gK6AU5YF02QgR76dKyI(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 1

    const/high16 p1, 0x40000

    .line 54
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const p1, 0x3f428f5c    # 0.76f

    .line 55
    :goto_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    .line 56
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$umplXd1K40FUZ0EbLQ6nrXzd0Ms(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 0

    .line 134
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    const p1, 0x3f47ae14    # 0.78f

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wfoIaOdccp5qam9I3rr5JeZYqrU(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 2

    const/high16 p1, 0x40000

    .line 22
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const p1, 0x3f428f5c    # 0.76f

    .line 23
    :goto_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 24
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_glass_targetMainTabs:I

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    .line 25
    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->solveSrcColor(IIF)I

    move-result p0

    return p0
.end method

.method public static attachMenuSearch(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 3

    .line 52
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p0, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setBackgroundColor(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder$ColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x17000000

    const v1, 0x17ffffff

    .line 58
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorTop(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorBottom(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x11000000

    const v1, 0x4ffffff

    .line 60
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowColor(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x40000000    # 2.0f

    .line 61
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const v1, 0x3eaaaaab

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowLayer(FFF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    .line 62
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeWidth(FF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->build()Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method

.method public static checkBlurEnabled(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p1

    .line 180
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 182
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v2, v2, Lorg/telegram/messenger/AppGlobalConfig;->disableBlurInLightTheme:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    invoke-virtual {v2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 187
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object p0, p0, Lorg/telegram/messenger/AppGlobalConfig;->disableBlurInDarkTheme:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    invoke-virtual {p0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static checkBlurEnabled(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 1

    .line 174
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->checkBlurEnabled(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p0

    return p0
.end method

.method public static inputFieldDialogActivity(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 0

    .line 97
    invoke-static {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->topPanel(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method

.method public static inputFieldShareAlert(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 3

    .line 101
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p0, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 102
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setBackgroundColor(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder$ColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x17000000

    const v1, 0x17ffffff

    .line 108
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorTop(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 109
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorBottom(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x26000000

    const v1, 0x4ffffff

    .line 110
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowColor(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x40555555

    .line 111
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const v1, 0x3f2aaaab

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowLayer(FFF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    .line 112
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeWidth(FF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->build()Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method

.method public static mainTabs(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 3

    .line 20
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p0, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 21
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setBackgroundColor(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder$ColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x11000000

    const v1, 0x6ffffff

    .line 27
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorTop(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x11ffffff

    const/high16 v1, 0x20000000

    .line 28
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorBottom(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x4ffffff

    .line 29
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowColor(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x402ab021    # 2.667f

    .line 30
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowLayer(FFF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    .line 31
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeWidth(FF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->build()Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method

.method public static photoViewer(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 2

    .line 117
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p0, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda5;-><init>()V

    .line 118
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setBackgroundColor(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder$ColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x28ffffff

    .line 124
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorTop(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v1, 0x14ffffff

    .line 125
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorBottom(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 126
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorFull(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x3f2aaaab

    .line 127
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeWidth(FF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 128
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->build()Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method

.method public static premiumButton(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 3

    .line 132
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p0, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 133
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setBackgroundColor(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder$ColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/4 v0, -0x1

    const v1, 0x20ffffff

    .line 135
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorTop(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorBottom(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x30000000

    const v1, 0x4ffffff

    .line 137
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowColor(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x40800000    # 4.0f

    .line 138
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const v1, 0x3eaaaaab

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowLayer(FFF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x3f2b851f    # 0.67f

    .line 139
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeWidth(FF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->build()Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method

.method public static searchFloatingDate(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 2

    .line 67
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p0, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda7;-><init>()V

    .line 68
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setBackgroundColor(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder$ColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x17000000

    const v1, 0x17ffffff

    .line 69
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorTop(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 70
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorBottom(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowColor(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 72
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeWidth(FF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->build()Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method

.method public static solveSrcColor(IIF)I
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 144
    invoke-static {p2, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    cmpg-float v0, p2, v0

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 148
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_0
    cmpl-float v0, p2, v1

    const/16 v3, 0xff

    if-ltz v0, :cond_1

    .line 151
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v3, p0, p2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    .line 154
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 155
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 156
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 158
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 160
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    sub-float/2addr v1, p2

    int-to-float v5, v5

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v5, v0

    div-float/2addr v5, p2

    .line 164
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v2, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    int-to-float v5, v6

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v5, v4

    div-float/2addr v5, p2

    .line 165
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4, v2, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v4

    int-to-float p1, p1

    int-to-float p0, p0

    mul-float/2addr p0, v1

    sub-float/2addr p1, p0

    div-float/2addr p1, p2

    .line 166
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0, v2, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p2, p1

    .line 168
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    .line 170
    invoke-static {p1, v0, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static topPanel(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 3

    .line 36
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p0, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda6;-><init>()V

    .line 37
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setBackgroundColor(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder$ColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x17000000

    const v1, 0x17ffffff

    .line 43
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorTop(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 44
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorBottom(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x26000000

    const v1, 0x4ffffff

    .line 45
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowColor(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x40555555

    .line 46
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const v1, 0x3f2aaaab

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowLayer(FFF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    .line 47
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeWidth(FF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->build()Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method

.method public static topPanelChatActivity(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;
    .locals 2

    .line 77
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 78
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setBackgroundColor(Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder$ColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x28ffffff

    const/4 v1, -0x1

    .line 88
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorTop(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const v0, 0x14ffffff

    .line 89
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeColorBottom(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x20000000

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setShadowColor(II)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 92
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->setStrokeWidth(FF)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProviderBuilder;->build()Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object p0

    return-object p0
.end method
