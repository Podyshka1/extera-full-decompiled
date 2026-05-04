.class public Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$NRsEF8su6gdKJS7t9jHv61ZMa1A(Ljava/lang/Boolean;)V
    .locals 0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkAutoUpdate:Z

    return-void
.end method

.method public static synthetic $r8$lambda$W4VL9MhcoPOWziaGyIvwfRWHxNQ(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V
    .locals 2

    .line 183
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsSafeMode:Z

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-wide v0, -0x53130d9c1c0974dbL    # -2.7754438852182786E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    const-wide v0, -0x53130dae1c0974dbL    # -2.7754175507887835E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 187
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-wide v0, -0x53130db61c0974dbL    # -2.7754058465978967E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    :goto_0
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/PluginsController;->restart()V

    return-void
.end method

.method public static synthetic $r8$lambda$oGEhBVpvu1ZHOLcdA2t2-Fvw0i8(Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;->lambda$onClick$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pWKtYTy-PbBtRw4e0nvUkinwVnM(Ljava/lang/Boolean;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->pluginsCompactView:Z

    .line 178
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s1k45N0SihJ1Lfr6dtegNEuyfDE(Ljava/lang/Boolean;)V
    .locals 0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkBetaVersions:Z

    .line 204
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->checkUpdates()V

    return-void
.end method

.method public static synthetic $r8$lambda$z5KmkC8nnWhTu59KTFdZgYLSJVg(Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;->lambda$onClick$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Ljava/lang/Boolean;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->pluginsDevMode:Z

    .line 172
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->checkDevServers()V

    .line 173
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsDevMode:Z

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->PluginsDevServerLaunched:I

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->PluginsDevServerStopped:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onClick$3(Ljava/lang/Boolean;)V
    .locals 0

    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->pluginsDisableArtOpts:Z

    .line 194
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->applyArtOpts()V

    .line 195
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showRestartBulletin()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 85
    sget p2, Lorg/telegram/messenger/NotificationCenter;->pluginsPySdkInfoChanged:I

    if-ne p1, p2, :cond_0

    .line 86
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/UItem;",
            ">;",
            "Lorg/telegram/ui/Components/UniversalAdapter;",
            ")V"
        }
    .end annotation

    .line 92
    sget p2, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->DEVELOPER_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PluginsDevMode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsDevMode:Z

    .line 94
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    .line 95
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 96
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v0, -0x53130c011c0974dbL    # -2.7760451880250844E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->COMPACT_VIEW:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PluginsCompactView:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_topics:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsCompactView:Z

    .line 99
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    .line 100
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 101
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v0, -0x53130c161c0974dbL    # -2.7760144645240067E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->PLUGINS_DISABLE_ART_OPTS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PluginsDisableArt:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsDisableArtOpts:Z

    .line 104
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    .line 105
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 106
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->PluginsDisableArtInfo:I

    .line 107
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setValue(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setMultiline(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v1, -0x53130c291c0974dbL    # -2.7759866670706507E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p2, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SAFE_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v1, Lorg/telegram/messenger/R$string;->PluginsSafeMode:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsSafeMode:Z

    .line 111
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 112
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v1, -0x53130c3f1c0974dbL    # -2.7759544805457122E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p2, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget p2, Lorg/telegram/messenger/R$string;->PluginsSafeModeInfo2:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_HEADER:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    const-wide v1, -0x53130c4f1c0974dbL    # -2.7759310721639388E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->markAsNewFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v1, -0x53130c621c0974dbL    # -2.7759032747105828E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-wide v1, -0x53130c6d1c0974dbL    # -2.7758871814481135E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asAnimatedHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_AUTO_UPDATE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v1, Lorg/telegram/messenger/R$string;->PluginsPySdkAutoUpdate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkAutoUpdate:Z

    .line 118
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 119
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    .line 120
    :goto_1
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 121
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->getStateString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setValue(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 122
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setMultiline(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v4, -0x53130c781c0974dbL    # -2.7758710881856443E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p2, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_BETA_VERSIONS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v1, Lorg/telegram/messenger/R$string;->PluginsPySdkEnableBetaVersion:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkBetaVersions:Z

    .line 125
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 126
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    if-ge v1, v2, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v3

    .line 127
    :goto_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v4, -0x53130c8f1c0974dbL    # -2.775837438636845E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p2, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->CHECK_SDK_UPDATES:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v1, Lorg/telegram/messenger/R$string;->PluginsPySdkCheckUpdates:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 130
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 131
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    if-ge v1, v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    .line 132
    :goto_3
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setEnabled(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    .line 133
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setIcon(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v0, -0x53130ca81c0974dbL    # -2.775800863040324E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->pluginsDevMode:Z

    if-eqz p2, :cond_4

    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-nez p2, :cond_4

    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->isSdkFromApk()Z

    move-result p2

    if-nez p2, :cond_4

    .line 136
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->RESTORE_SDK_FROM_APK:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->RestoreSdkFromApk:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 137
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->red()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    .line 138
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setIcon(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_4
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget p2, Lorg/telegram/messenger/R$string;->Links:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->DOCUMENTATION:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PluginsDocumentation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 144
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_intro:I

    .line 145
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setIcon(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v0, -0x53130cc11c0974dbL    # -2.775764287443803E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 143
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->TRUSTED_PLUGINS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->PluginsTrusted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 148
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg2_policy:I

    .line 149
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setIcon(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 150
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-wide v0, -0x53130cd61c0974dbL    # -2.7757335639427252E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget p2, Lorg/telegram/messenger/R$string;->PluginsPoweredBy:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    .line 156
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 158
    :cond_5
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    :goto_4
    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithHtmlURLs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 62
    sget v0, Lorg/telegram/messenger/R$string;->PluginsEngine:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 164
    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-lez p3, :cond_d

    invoke-static {}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->values()[Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    move-result-object p4

    array-length p4, p4

    if-le p3, p4, :cond_0

    goto/16 :goto_3

    .line 165
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->values()[Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    move-result-object p3

    iget p4, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p5, 0x1

    sub-int/2addr p4, p5

    aget-object p3, p3, p4

    .line 167
    instance-of p2, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p2, :cond_8

    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    if-nez p2, :cond_1

    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SAFE_MODE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    if-eq p3, p2, :cond_1

    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_AUTO_UPDATE:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    if-eq p3, p2, :cond_1

    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->SDK_BETA_VERSIONS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    if-ne p3, p2, :cond_8

    .line 168
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_7

    if-eq p2, p5, :cond_6

    const/4 p3, 0x2

    if-eq p2, p3, :cond_5

    const/4 p3, 0x3

    if-eq p2, p3, :cond_4

    const/4 p3, 0x4

    if-eq p2, p3, :cond_3

    const/16 p3, 0x9

    if-eq p2, p3, :cond_2

    goto/16 :goto_3

    :cond_2
    const-wide p2, -0x53130d111c0974dbL    # -2.7756472455349356E-92

    .line 192
    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_3
    const-wide p2, -0x53130d3e1c0974dbL    # -2.7755814094611977E-92

    .line 202
    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p2, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_4
    const-wide p2, -0x53130d271c0974dbL    # -2.775615059009997E-92

    .line 198
    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p2, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 181
    :cond_5
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p2

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController;->preferences:Landroid/content/SharedPreferences;

    const-wide p3, -0x53130d071c0974dbL    # -2.775661875773544E-92

    .line 182
    invoke-static {p3, p4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda2;

    invoke-direct {p4, p2}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda2;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_6
    const-wide p2, -0x53130cf41c0974dbL    # -2.7756896732269E-92

    .line 176
    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p2, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_7
    const-wide p2, -0x53130ce51c0974dbL    # -2.7757116185848126E-92

    .line 170
    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 207
    :cond_8
    sget-object p1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->DOCUMENTATION:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    if-eq p3, p1, :cond_b

    sget-object p2, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->TRUSTED_PLUGINS:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    if-ne p3, p2, :cond_9

    goto :goto_0

    .line 209
    :cond_9
    sget-object p1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->CHECK_SDK_UPDATES:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    if-ne p3, p1, :cond_a

    invoke-static {p5}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->checkUpdates(Z)V

    return-void

    .line 210
    :cond_a
    sget-object p1, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;->RESTORE_SDK_FROM_APK:Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$PreferenceItem;

    if-ne p3, p1, :cond_d

    .line 211
    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->restoreSdkFromApk()V

    .line 212
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget p3, Lorg/telegram/messenger/R$string;->RestartRequired:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 213
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 208
    :cond_b
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-ne p3, p1, :cond_c

    const-wide p3, -0x53130d571c0974dbL    # -2.7755448338646767E-92

    :goto_1
    invoke-static {p3, p4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_c
    const-wide p3, -0x53130d761c0974dbL    # -2.7754994801249906E-92

    goto :goto_1

    :goto_2
    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 67
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 69
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginsPySdkInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    .line 70
    sput-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->notifyWhenChangeStatus:Z

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 76
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 78
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pluginsPySdkInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 79
    sput-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->notifyWhenChangeStatus:Z

    .line 80
    sget v1, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sput v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->status:I

    :cond_0
    return-void
.end method
