.class public Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;
    }
.end annotation


# instance fields
.field private final fiveMinutesAgo:I

.field private idOptions:[Ljava/lang/CharSequence;

.field private translationFormalities:[Ljava/lang/CharSequence;

.field private translationProviders:[Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$05QeoiTBW-I_qS9PsyWOijhw7Q8(Ljava/lang/Boolean;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->archiveOnPull:Z

    return-void
.end method

.method public static synthetic $r8$lambda$4MyUgTYjC4Jvh-WUIJkeSrUYvFk(Ljava/lang/Boolean;)V
    .locals 0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->filterZalgo:Z

    return-void
.end method

.method public static synthetic $r8$lambda$4WhyElQHjTw0LWkBNiK6YyPyqMA(Ljava/lang/Boolean;)V
    .locals 0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->disableUnarchiveSwipe:Z

    return-void
.end method

.method public static synthetic $r8$lambda$6kvkovtLoJjjZ-9OzA-ZuMe7hvc(Ljava/lang/Boolean;)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->uploadSpeedBoost:Z

    return-void
.end method

.method public static synthetic $r8$lambda$8FEJnod0pAye5vGNNTwldg4hDSw(Ljava/lang/Boolean;)V
    .locals 0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hidePhoneNumber:Z

    return-void
.end method

.method public static synthetic $r8$lambda$Ad-pHSbYXpShU5NkcM4B3gRTaF0(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->lambda$onClick$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NJelppls1pr6MkI7xl57nDsh4hg(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->lambda$onClick$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UMBJiYK_3KhbEbkntQjDaNAfWLk([ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 264
    invoke-static {p1, p0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UtWxFmLsiF7tfop4Umn5PehhpyQ(Ljava/lang/Boolean;)V
    .locals 0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->disableNumberRounding:Z

    return-void
.end method

.method public static synthetic $r8$lambda$_lqnQ628dSxCBy-xSpKfW84-lLg(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->lambda$onClick$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_x4m0Kej_9Tsfus6Lykb0PaneIk(Ljava/lang/Boolean;)V
    .locals 0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    return-void
.end method

.method public static synthetic $r8$lambda$eRAF97tvF0HckvSyjyYESg6EgD4(Ljava/lang/Boolean;)V
    .locals 0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->useYandexMaps:Z

    return-void
.end method

.method public static synthetic $r8$lambda$hrdyyY6SV9BccSQb77HaDJjMaNE(Ljava/lang/Boolean;)V
    .locals 0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->hideArchiveFolder:Z

    return-void
.end method

.method public static synthetic $r8$lambda$lQl2FgFFngcJUgt1xt0bxWOGMxU(Ljava/lang/Boolean;)V
    .locals 0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->relativeLastSeen:Z

    return-void
.end method

.method public static synthetic $r8$lambda$pRTEZx74x6kUcDn7cRC-MSNqjx0(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->lambda$fillItems$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t970aLDiyjtXBtGnirNYA-6zW8I(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->lambda$handleChatTranslateClick$17(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trT6fARzd2mlkLv8KM8JEvCvsKI(Ljava/lang/Boolean;)V
    .locals 0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->formatTimeWithSeconds:Z

    return-void
.end method

.method public static synthetic $r8$lambda$usGlpYGgbG6w8JuokkwLbwf9tVA(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->lambda$onClick$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 68
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    add-int/lit16 v0, v0, -0x12c

    iput v0, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->fiveMinutesAgo:I

    return-void
.end method

.method private getChatTranslateValue()Z
    .locals 1

    .line 279
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->isChatTranslateEnabled()Z

    move-result v0

    return v0
.end method

.method private getContextTranslateValue()Z
    .locals 1

    .line 270
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->isContextTranslateEnabled()Z

    move-result v0

    return v0
.end method

.method private getDoNotTranslateValue()Ljava/lang/CharSequence;
    .locals 3

    .line 261
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x1

    .line 262
    new-array v1, v1, [Z

    .line 263
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda16;-><init>([Z)V

    .line 264
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda17;-><init>()V

    .line 265
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    .line 266
    invoke-static {v1}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private handleChatTranslateClick(Lorg/telegram/ui/Components/UItem;)V
    .locals 3

    .line 283
    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v0, 0xd

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda18;-><init>(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;)V

    const-string v2, "chatTranslateEnabled"

    invoke-virtual {p0, v2, p1, v0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 288
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateSearchSettings:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method

.method private handleContextTranslateClick()V
    .locals 4

    .line 274
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateSearchSettings:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method

.method private handleFormatTimeWithSecondsClick()V
    .locals 2

    .line 293
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method

.method private handleHidePhoneNumberClick()V
    .locals 4

    .line 298
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method

.method private synthetic lambda$fillItems$0(Ljava/lang/Integer;)V
    .locals 1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/exteragram/messenger/ExteraConfig;->downloadSpeedBoost:I

    const-string v0, "downloadSpeedBoost"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$handleChatTranslateClick$17(Ljava/lang/Boolean;)V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/TranslateController;->setChatTranslateEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$1(Ljava/lang/Boolean;)V
    .locals 1

    .line 204
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/TranslateController;->setContextTranslateEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$12(I)V
    .locals 1

    .line 246
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->showIdAndDc:I

    const-string/jumbo v0, "showIdAndDc"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method

.method private synthetic lambda$onClick$2(I)V
    .locals 1

    .line 210
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->translationProvider:I

    const-string/jumbo v0, "translationProvider"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    .line 211
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->ensureTargetLanguageCompatibleWithProvider()V

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method

.method private synthetic lambda$onClick$3(I)V
    .locals 1

    .line 216
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->translationFormality:I

    const-string/jumbo v0, "translationFormality"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method


# virtual methods
.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    .line 97
    sget p2, Lorg/telegram/messenger/R$string;->TranslateMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->SHOW_TRANSLATE_BUTTON:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ShowTranslateButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 99
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->getContextTranslateValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 100
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "showTranslateButton"

    .line 101
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->SHOW_TRANSLATE_CHAT_BUTTON:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ShowTranslateChatButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCheckBoxIcon(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 104
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->getChatTranslateValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 105
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "showTranslateChatButton"

    .line 106
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->TRANSLATION_PROVIDERS:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->TranslationProvider:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->translationProviders:[Ljava/lang/CharSequence;

    sget v3, Lcom/exteragram/messenger/ExteraConfig;->translationProvider:I

    aget-object v2, v2, v3

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 108
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "translationProvider"

    .line 109
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget p2, Lcom/exteragram/messenger/ExteraConfig;->translationProvider:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 111
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->TRANSLATION_FORMALITY:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->TranslationFormality:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->translationFormalities:[Ljava/lang/CharSequence;

    sget v3, Lcom/exteragram/messenger/ExteraConfig;->translationFormality:I

    aget-object v2, v2, v3

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 112
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "translationFormality"

    .line 113
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->TRANSLATION_TARGET_LANGUAGE:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->TranslationTarget:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getCurrentLangName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 115
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "translationTargetLanguage"

    .line 116
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->DO_NOT_TRANSLATE_LANGUAGES:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->getDoNotTranslateValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 118
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "doNotTranslateLanguages"

    .line 119
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget p2, Lorg/telegram/messenger/R$string;->TranslateMessagesInfo1:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget p2, Lorg/telegram/messenger/R$string;->General:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->DISABLE_NUMBER_ROUNDING:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->DisableNumberRounding:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1.23K -> 1,234"

    invoke-static {p2, v0, v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->disableNumberRounding:Z

    .line 124
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 125
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "disableNumberRounding"

    .line 126
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->FORMAT_TIME_WITH_SECONDS:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->FormatTimeWithSeconds:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "12:34 -> 12:34:56"

    invoke-static {p2, v0, v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->formatTimeWithSeconds:Z

    .line 128
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 129
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "formatTimeWithSeconds"

    .line 130
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 127
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->IN_APP_VIBRATION:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->InAppVibration:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    .line 132
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "inAppVibration"

    .line 134
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->FILTER_ZALGO:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->FilterZalgo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->filterZalgo:Z

    .line 136
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 137
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "filterZalgo"

    .line 138
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 135
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget p2, Lorg/telegram/messenger/R$string;->FilterZalgoInfo:I

    const-string v0, "Z\u0337\u034c\u034da\u0338\u0304\u031cl\u0338\u0302\u031eg\u0337\u034d\u031do\u0336\u0313\u0329"

    invoke-static {v0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {p2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {p2}, Lorg/telegram/messenger/ApplicationLoader;->allowToUseYandexMaps()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 142
    sget p2, Lorg/telegram/messenger/R$string;->Maps:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->YANDEX_MAPS:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->UseYandexMaps:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->useYandexMaps:Z

    .line 144
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 145
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "useYandexMaps"

    .line 146
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 143
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget p2, Lorg/telegram/messenger/R$string;->TermsOfUseYandexMaps:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithHtmlURLs(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->DownloadSpeedBoost:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->DOWNLOAD_SPEED_BOOST:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    .line 152
    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->BlurOff:I

    .line 154
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->SpeedFast:I

    .line 155
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->Ultra:I

    .line 156
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/exteragram/messenger/ExteraConfig;->downloadSpeedBoost:I

    new-instance v4, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;)V

    .line 151
    invoke-static {p2, v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asSlideView(I[Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "downloadSpeedBoost"

    .line 159
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->UPLOAD_SPEED_BOOST:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->UploadSpeedBoost:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->uploadSpeedBoost:Z

    .line 161
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 162
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "uploadSpeedBoost"

    .line 163
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 160
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget p2, Lorg/telegram/messenger/R$string;->SpeedBoostInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget p2, Lorg/telegram/messenger/R$string;->Profile:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->RELATIVE_LAST_SEEN:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->RelativeLastSeen:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->fiveMinutesAgo:I

    int-to-long v3, v3

    const/4 v5, 0x0

    new-array v2, v2, [Z

    invoke-static {v3, v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J[Z[Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->relativeLastSeen:Z

    .line 168
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 169
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "relativeLastSeen"

    .line 170
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->HIDE_PHONE_NUMBER:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HidePhoneNumber:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hidePhoneNumber:Z

    .line 172
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 173
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hidePhoneNumber"

    .line 174
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 171
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->SHOW_ID_AND_DC:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ShowIdAndDc:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->idOptions:[Ljava/lang/CharSequence;

    sget v2, Lcom/exteragram/messenger/ExteraConfig;->showIdAndDc:I

    aget-object v1, v1, v2

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 176
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string/jumbo v0, "showIdAndDc"

    .line 177
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 175
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget p2, Lorg/telegram/messenger/R$string;->ShowIdAndDcInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget p2, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->HIDE_ARCHIVE_FOLDER:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->HideArchiveFolder:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideArchiveFolder:Z

    .line 182
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 183
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "hideArchiveFolder"

    .line 184
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 181
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-boolean p2, Lcom/exteragram/messenger/ExteraConfig;->hideArchiveFolder:Z

    if-nez p2, :cond_3

    .line 186
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->ARCHIVE_ON_PULL:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->ArchiveOnPull:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->archiveOnPull:Z

    .line 187
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 188
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "archiveOnPull"

    .line 189
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 186
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_3
    sget-object p2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->DISABLE_UNARCHIVE_SWIPE:Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    invoke-virtual {p2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->getId()I

    move-result p2

    sget v0, Lorg/telegram/messenger/R$string;->DisableUnarchiveSwipe:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->disableUnarchiveSwipe:Z

    .line 192
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 193
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    const-string v0, "disableUnarchiveSwipe"

    .line 194
    invoke-virtual {p2, v0, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 191
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget p2, Lorg/telegram/messenger/R$string;->DisableUnarchiveSwipeInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 92
    sget v0, Lorg/telegram/messenger/R$string;->General:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeOptionStrings()V
    .locals 7

    .line 72
    sget v0, Lorg/telegram/messenger/R$string;->Hide:I

    .line 73
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v4, "Telegram API"

    aput-object v4, v2, v0

    const/4 v4, 0x2

    const-string v5, "Bot API"

    aput-object v5, v2, v4

    iput-object v2, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->idOptions:[Ljava/lang/CharSequence;

    const/4 v2, 0x4

    .line 77
    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v5, "Telegram"

    aput-object v5, v2, v3

    const-string v5, "Google"

    aput-object v5, v2, v0

    const-string v5, "Yandex"

    aput-object v5, v2, v4

    const-string v5, "DeepL"

    aput-object v5, v2, v1

    iput-object v2, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->translationProviders:[Ljava/lang/CharSequence;

    .line 83
    sget v2, Lorg/telegram/messenger/R$string;->Default:I

    .line 84
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$string;->TranslationFormalityLess:I

    .line 85
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->TranslationFormalityMore:I

    .line 86
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    aput-object v5, v1, v0

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->translationFormalities:[Ljava/lang/CharSequence;

    return-void
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    .line 200
    iget v2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-lez v2, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->values()[Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    move-result-object v3

    array-length v3, v3

    if-le v2, v3, :cond_0

    goto/16 :goto_0

    .line 201
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;->values()[Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;

    move-result-object v2

    iget v3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 202
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 256
    :pswitch_1
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda6;-><init>()V

    const-string v3, "disableUnarchiveSwipe"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 254
    :pswitch_2
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda5;-><init>()V

    const-string v3, "archiveOnPull"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 250
    :pswitch_3
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "hideArchiveFolder"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 251
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->checkArchiveFolder()V

    return-void

    .line 245
    :pswitch_4
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->idOptions:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->ShowIdAndDc:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->showIdAndDc:I

    new-instance v5, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 241
    :pswitch_5
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "hidePhoneNumber"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 242
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->handleHidePhoneNumberClick()V

    return-void

    .line 239
    :pswitch_6
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda15;-><init>()V

    const-string/jumbo v3, "uploadSpeedBoost"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 235
    :pswitch_7
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda14;-><init>()V

    const-string/jumbo v3, "useYandexMaps"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->updateMapsProvider()V

    return-void

    .line 233
    :pswitch_8
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda13;-><init>()V

    const-string v3, "filterZalgo"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 231
    :pswitch_9
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda12;-><init>()V

    const-string v3, "inAppVibration"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 229
    :pswitch_a
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda11;-><init>()V

    const-string/jumbo v3, "relativeLastSeen"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 226
    :pswitch_b
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda10;-><init>()V

    const-string v3, "formatTimeWithSeconds"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 227
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->handleFormatTimeWithSecondsClick()V

    return-void

    .line 224
    :pswitch_c
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda9;-><init>()V

    const-string v3, "disableNumberRounding"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 222
    :pswitch_d
    new-instance v1, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;-><init>()V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 220
    :pswitch_e
    new-instance v1, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {v1, v4}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;-><init>(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 215
    :pswitch_f
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->translationFormalities:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->TranslationFormality:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->translationFormality:I

    new-instance v5, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda8;-><init>(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 209
    :pswitch_10
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->translationProviders:[Ljava/lang/CharSequence;

    sget v1, Lorg/telegram/messenger/R$string;->TranslationProvider:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->translationProvider:I

    new-instance v5, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 207
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->handleChatTranslateClick(Lorg/telegram/ui/Components/UItem;)V

    return-void

    .line 204
    :pswitch_12
    new-instance v2, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;)V

    const-string v3, "contextTranslateEnabled"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 205
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;->handleContextTranslateClick()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
