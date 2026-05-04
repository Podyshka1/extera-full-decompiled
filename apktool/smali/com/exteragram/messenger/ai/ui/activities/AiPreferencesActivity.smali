.class public Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3dLCxx3DkeDJvi8ue1OI55wueaI(Ljava/lang/Boolean;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ai/AiConfig;->showResponseOnly:Z

    return-void
.end method

.method public static synthetic $r8$lambda$alSaTOsvpjclKrEM3Zm1_g_9B5A(Ljava/lang/Boolean;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ai/AiConfig;->saveHistory:Z

    return-void
.end method

.method public static synthetic $r8$lambda$d_2CgapyuEz2KDIt0xVlFkNzIcY(Ljava/lang/Boolean;)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ai/AiConfig;->insertAsQuote:Z

    return-void
.end method

.method public static synthetic $r8$lambda$fZcSgozNrLStZiwN3hYWsv0qC48(Ljava/lang/Boolean;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ai/AiConfig;->responseStreaming:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    return-void
.end method

.method private getEndpointValue()Ljava/lang/String;
    .locals 2

    .line 114
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/AiController;->getSelected()Lcom/exteragram/messenger/ai/data/Service;

    move-result-object v1

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Service;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->canUseAI()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    const-string v1, "generativelanguage.googleapis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string v0, "Gemini"

    :cond_1
    return-object v0

    .line 116
    :cond_2
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->BlockedEmpty:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    sget v0, Lorg/telegram/messenger/R$string;->BlockedEmpty:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 4

    .line 58
    const-string p2, "exteraGramPlaceholders"

    const-string/jumbo v0, "\ud83e\udd16"

    const/4 v1, 0x0

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/UItem;->asTopView(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget p2, Lorg/telegram/messenger/R$string;->General:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object p2, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->ENDPOINT:Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_language:I

    sget v1, Lorg/telegram/messenger/R$string;->Services:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity;->getEndpointValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->prioritizeTitleOverValue(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 64
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v1, "aiServices"

    .line 65
    invoke-virtual {p2, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object p2, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->ROLE:Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->getId()I

    move-result p2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    sget v2, Lorg/telegram/messenger/R$string;->Roles:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->getSelectedRole()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v1, v2, v3}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 67
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->prioritizeTitleOverValue(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 68
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v1, "aiRoles"

    .line 69
    invoke-virtual {p2, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p2, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->SAVE_HISTORY:Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->getId()I

    move-result p2

    sget v1, Lorg/telegram/messenger/R$string;->MessageHistory:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v1, Lcom/exteragram/messenger/ai/AiConfig;->saveHistory:Z

    .line 71
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 73
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v2, "saveAiHistory"

    .line 74
    invoke-virtual {p2, v2, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget p2, Lorg/telegram/messenger/R$string;->HistoryInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget p2, Lorg/telegram/messenger/R$string;->LocalOther:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object p2, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->RESPONSE_STREAMING:Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->getId()I

    move-result p2

    sget v2, Lorg/telegram/messenger/R$string;->ResponseStreaming:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ResponseStreamingInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ai/AiConfig;->responseStreaming:Z

    .line 79
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 80
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "responseStreaming"

    .line 81
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object p2, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->SHOW_RESPONSE_ONLY:Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ShowResponseOnly:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ai/AiConfig;->showResponseOnly:Z

    .line 83
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 84
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "showResponseOnly"

    .line 85
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object p2, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->INSERT_AS_QUOTE:Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->InsertResponseAsQuote:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ai/AiConfig;->insertAsQuote:Z

    .line 87
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 88
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->showDivider(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 89
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "insertResponseAsQuote"

    .line 90
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->asShadow()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    sget v0, Lorg/telegram/messenger/R$string;->AIChat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasWhiteActionBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 96
    iget p2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-lez p2, :cond_7

    invoke-static {}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->values()[Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;

    move-result-object p3

    array-length p3, p3

    if-le p2, p3, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;->values()[Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$PreferenceItem;

    move-result-object p2

    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    aget-object p2, p2, p3

    .line 98
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_6

    if-eq p2, p4, :cond_5

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_3

    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    const/4 p3, 0x5

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    sget-object p2, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    new-instance p3, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$$ExternalSyntheticLambda3;

    invoke-direct {p3}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$$ExternalSyntheticLambda3;-><init>()V

    const-string p4, "insertAsQuote"

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 106
    :cond_2
    sget-object p2, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    new-instance p3, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$$ExternalSyntheticLambda2;-><init>()V

    const-string/jumbo p4, "showResponseOnly"

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 104
    :cond_3
    sget-object p2, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    new-instance p3, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$$ExternalSyntheticLambda1;-><init>()V

    const-string/jumbo p4, "responseStreaming"

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 102
    :cond_4
    sget-object p2, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    new-instance p3, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/exteragram/messenger/ai/ui/activities/AiPreferencesActivity$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo p4, "saveHistory"

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Landroid/content/SharedPreferences;Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 100
    :cond_5
    new-instance p1, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;

    invoke-direct {p1}, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 99
    :cond_6
    new-instance p1, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;

    invoke-direct {p1}, Lcom/exteragram/messenger/ai/ui/activities/ServicesActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_7
    :goto_0
    return-void
.end method
