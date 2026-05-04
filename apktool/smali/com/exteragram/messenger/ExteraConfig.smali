.class public abstract Lcom/exteragram/messenger/ExteraConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;,
        Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;
    }
.end annotation


# static fields
.field public static final GSON:Lcom/google/gson/Gson;

.field public static YANDEX_SEARCH_ENGINE:Lorg/telegram/ui/web/SearchEngine;

.field public static addCommaAfterMention:Z

.field public static alwaysSendInHD:Z

.field public static archiveOnPull:Z

.field public static avatarCorners:F

.field public static bottomButton:I

.field public static cameraMirrorMode:Z

.field public static cameraStabilization:Z

.field public static cameraType:I

.field public static centerTitle:Z

.field public static checkUpdatesOnLaunch:Z

.field private static configLoaded:Z

.field private static volatile currentApiBot:Landroid/util/Pair;

.field public static customThemes:Z

.field public static disableDividers:Z

.field public static disableGreetingSticker:Z

.field public static disableNumberRounding:Z

.field public static disableUnarchiveSwipe:Z

.field public static doNotMarkAsNew:Ljava/util/ArrayList;

.field public static doNotUseProxyWithVpn:Z

.field public static doubleTapAction:I

.field public static doubleTapActionOutOwner:I

.field public static doubleTapSeekDuration:I

.field public static downloadSpeedBoost:I

.field public static editingIconPackId:Ljava/lang/String;

.field public static editor:Landroid/content/SharedPreferences$Editor;

.field public static enableAdBlock:Z

.field public static eventType:I

.field public static extendedFramesPerSecond:Z

.field public static filterZalgo:Z

.field public static flashIntensity:F

.field public static flashWarmth:F

.field public static forceBlur:Z

.field public static forceSnow:Z

.field public static formatTimeWithSeconds:Z

.field public static glareOnElements:Z

.field public static gooeyAvatarAnimation:Z

.field public static groupMessageMenu:Z

.field public static hideActionBarStatus:Z

.field public static hideAllChats:Z

.field public static hideArchiveFolder:Z

.field public static hideCameraTile:Z

.field public static hideFloatingButton:Z

.field public static hideKeyboardOnScroll:Z

.field public static hidePhoneNumber:Z

.field public static hidePhotoCounter:Z

.field public static hideReactionsInChannels:Z

.field public static hideReactionsInGroups:Z

.field public static hideReactionsInPrivateChats:Z

.field public static hideSendAsPeer:Z

.field public static hideShareButton:Z

.field public static hideStickerTime:Z

.field public static hideStories:Z

.field public static iconPack:I

.field public static iconPacksHidden:Ljava/util/ArrayList;

.field public static iconPacksLayout:Ljava/util/ArrayList;

.field public static immersiveDrawerAnimation:Z

.field public static inAppVibration:Z

.field public static mainMenuHiddenItems:Ljava/util/ArrayList;

.field public static mainMenuLayout:Ljava/util/ArrayList;

.field public static navigationDrawer:Z

.field public static newFeaturesShowedAt:Ljava/util/HashMap;

.field public static newLoadingStyle:Z

.field public static newSliderStyle:Z

.field public static newSwitchStyle:Z

.field public static pauseOnMinimizeRound:Z

.field public static pauseOnMinimizeVideo:Z

.field public static pauseOnMinimizeVoice:Z

.field public static pinnedPlugins:Ljava/util/Set;

.field public static pluginsCompactView:Z

.field public static pluginsDevMode:Z

.field public static pluginsDisableArtOpts:Z

.field public static pluginsEngine:Z

.field public static pluginsPySdkAutoUpdate:Z

.field public static pluginsPySdkBetaVersions:Z

.field public static pluginsSafeMode:Z

.field public static postprocessingWithAi:Z

.field public static predictiveBackAnimation:Z

.field public static preferOriginalQuality:Z

.field public static preferences:Landroid/content/SharedPreferences;

.field public static quickAdminShortcuts:Z

.field public static quickTransitionForChannels:Z

.field public static quickTransitionForTopics:Z

.field public static recognitionLanguage:Ljava/lang/String;

.field public static relativeLastSeen:Z

.field public static rememberLastUsedCamera:Z

.field public static removeMessageTail:Z

.field public static replaceEditedWithIcon:Z

.field public static replyBackground:Z

.field public static replyColors:Z

.field public static replyEmoji:Z

.field public static sdkUpdateScheduleTimestamp:J

.field public static sectionsSeparatedHeaders:Z

.field public static senderMiniAvatars:Z

.field public static showClearButton:Z

.field public static showCopyPhotoButton:Z

.field public static showDetailsButton:Z

.field public static showGenerateButton:Z

.field public static showHistoryButton:Z

.field public static showIdAndDc:I

.field public static showOnlineStatus:Z

.field public static showRepeatMessageButton:Z

.field public static showReportButton:Z

.field public static showResultsBeforeVoting:Z

.field public static showSaveMessageButton:Z

.field public static singleCornerRadius:Z

.field public static springAnimations:Z

.field public static squareFab:Z

.field public static staticZoom:Z

.field public static stickerShape:I

.field public static stickerSize:F

.field public static swipeToPip:Z

.field private static final sync:Ljava/lang/Object;

.field public static tabCounter:Z

.field public static tabIcons:I

.field public static tabletMode:I

.field public static targetLang:Ljava/lang/String;

.field public static titleText:I

.field public static translationFormality:I

.field public static translationProvider:I

.field public static unlimitedRecentStickers:Z

.field public static unmuteWithVolumeButtons:Z

.field public static updateScheduleTimestamp:J

.field public static uploadSpeedBoost:Z

.field public static useGoogleAnalytics:Z

.field public static useGoogleCrashlytics:Z

.field public static useSystemFonts:Z

.field public static useSystemIconShape:Z

.field public static useYandexMaps:Z

.field public static videoMessagesCamera:I

.field public static voiceHintShowcases:I


# direct methods
.method public static synthetic $r8$lambda$643pELgA7zqe0U7JlqyTgQXrh0Y(Ljava/lang/Integer;)Z
    .locals 2

    .line 230
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->getById(I)Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$h7BRFgABoRY5QwtNqrN7NcY9YGk()V
    .locals 2

    .line 733
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    const-string v1, "app_start"

    invoke-virtual {v0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->executeOnAppEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yancDyn822JxHSRJYrTDqJWKvqY(Ljava/lang/Integer;)Z
    .locals 2

    .line 231
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->getById(I)Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->sync:Ljava/lang/Object;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    .line 338
    new-instance v1, Lorg/telegram/ui/web/SearchEngine;

    const-string v5, "https://suggestqueries.google.com/complete/search?client=chrome&q="

    const-string v6, "https://yandex.ru/legal/confidential"

    const-string v2, "Yandex"

    const-string v3, "https://mini.ya.ru/"

    const-string v4, "https://ya.ru/search/?text="

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/web/SearchEngine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->YANDEX_SEARCH_ENGINE:Lorg/telegram/ui/web/SearchEngine;

    .line 362
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->loadConfig()V

    return-void
.end method

.method public static canUseYandexMaps()Z
    .locals 1

    .line 750
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->useYandexMaps:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationLoaderInstance:Lorg/telegram/messenger/ApplicationLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/ApplicationLoader;->allowToUseYandexMaps()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ensureSettingsVisibility()V
    .locals 2

    .line 219
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v0, v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveMainMenuLayout()V

    :cond_0
    return-void
.end method

.method public static getApiBotInfo()Landroid/util/Pair;
    .locals 5

    .line 55
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->currentApiBot:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->currentApiBot:Landroid/util/Pair;

    return-object v0

    .line 59
    :cond_0
    const-class v0, Lcom/exteragram/messenger/ExteraConfig;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->currentApiBot:Landroid/util/Pair;

    if-eqz v1, :cond_1

    .line 61
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->currentApiBot:Landroid/util/Pair;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "extera_api_bot"

    const-string v2, "8083294286:exteraAuthBot"

    invoke-static {v1, v2}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->getStringConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 71
    :try_start_1
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 72
    array-length v2, v1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .line 73
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 74
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v4, Lcom/exteragram/messenger/ExteraConfig;->currentApiBot:Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v4

    :catch_0
    move-exception v1

    .line 78
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 81
    :cond_2
    new-instance v1, Landroid/util/Pair;

    const-wide v2, 0x1e1cd484eL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "exteraAuthBot"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->currentApiBot:Landroid/util/Pair;

    monitor-exit v0

    return-object v1

    .line 82
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static getAvatarCorners(F)I
    .locals 1

    const/4 v0, 0x0

    .line 635
    invoke-static {p0, v0, v0, v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZZ)I

    move-result p0

    return p0
.end method

.method public static getAvatarCorners(FZ)I
    .locals 1

    const/4 v0, 0x0

    .line 639
    invoke-static {p0, p1, v0, v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZZ)I

    move-result p0

    return p0
.end method

.method public static getAvatarCorners(FZZ)I
    .locals 1

    const/4 v0, 0x0

    .line 643
    invoke-static {p0, p1, p2, v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZZ)I

    move-result p0

    return p0
.end method

.method public static getAvatarCorners(FZZZ)I
    .locals 2

    .line 647
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->avatarCorners:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-float/2addr v0, p0

    const/high16 p0, 0x42600000    # 56.0f

    div-float/2addr v0, p0

    if-eqz p3, :cond_1

    const/high16 p0, 0x40200000    # 2.5f

    sub-float/2addr v0, p0

    :cond_1
    if-nez p1, :cond_2

    .line 658
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float v0, p0

    :cond_2
    if-eqz p2, :cond_3

    .line 661
    sget-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->singleCornerRadius:Z

    if-nez p0, :cond_3

    float-to-int p0, v0

    mul-int/lit8 p0, p0, 0x2a

    shr-int/lit8 p0, p0, 0x6

    int-to-float v0, p0

    :cond_3
    float-to-double p0, v0

    .line 665
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static getAvatarSquareness()F
    .locals 4

    .line 669
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->avatarCorners:F

    const/high16 v1, 0x41e00000    # 28.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static getCurrentLangName()Ljava/lang/String;
    .locals 1

    .line 708
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getTargetLanguageTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultMainMenuLayout()Ljava/util/ArrayList;
    .locals 2

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->ARCHIVE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PROFILE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->NEW_GROUP:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->CONTACTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_1
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SAVED:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->BOTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static getDoubleTapSeekDuration()I
    .locals 3

    .line 713
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->doubleTapSeekDuration:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/16 v0, 0x7530

    return v0

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x1388

    return v0
.end method

.method public static getLogging()Z
    .locals 3

    .line 699
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "systemConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "logsEnabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getOnlineDotInnerRadius()I
    .locals 2

    .line 682
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarSquareness()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr v0, v1

    .line 684
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public static getOnlineDotOffset(FF)F
    .locals 5

    .line 688
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarSquareness()F

    move-result v0

    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 689
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float p1, v1

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    return p0
.end method

.method public static getOnlineDotOuterRadius()I
    .locals 2

    .line 676
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarSquareness()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40e00000    # 7.0f

    add-float/2addr v0, v1

    .line 678
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public static init(Z)V
    .locals 2

    .line 731
    invoke-static {}, Lcom/exteragram/messenger/api/ApiController;->init()V

    .line 732
    invoke-static {}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->init()V

    .line 733
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/ExteraConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/exteragram/messenger/ExteraConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/exteragram/messenger/plugins/PluginsController;->init(ZLjava/lang/Runnable;)V

    .line 734
    sget-object p0, Lcom/exteragram/messenger/utils/chats/ChatUtils;->utilsQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lcom/exteragram/messenger/ExteraConfig$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/exteragram/messenger/ExteraConfig$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static loadConfig()V
    .locals 11

    .line 366
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->configLoaded:Z

    if-eqz v1, :cond_0

    .line 368
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_b

    .line 371
    :cond_0
    const-string v1, "exteraconfig"

    invoke-static {v1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    .line 372
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    .line 374
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "cameraType"

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->cameraType:I

    .line 377
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "translationProvider"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->translationProvider:I

    .line 378
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "translationFormality"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->translationFormality:I

    .line 380
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "disableNumberRounding"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->disableNumberRounding:Z

    .line 381
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "formatTimeWithSeconds"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->formatTimeWithSeconds:Z

    .line 382
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "relativeLastSeen"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->relativeLastSeen:Z

    .line 383
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "inAppVibration"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->inAppVibration:Z

    .line 384
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "filterZalgo"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->filterZalgo:Z

    .line 385
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "tabletMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->tabletMode:I

    .line 387
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "downloadSpeedBoost"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->downloadSpeedBoost:I

    .line 388
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "uploadSpeedBoost"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->uploadSpeedBoost:Z

    .line 390
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hidePhoneNumber"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hidePhoneNumber:Z

    .line 391
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showIdAndDc"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->showIdAndDc:I

    .line 393
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideArchiveFolder"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideArchiveFolder:Z

    .line 394
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "archiveOnPull"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->archiveOnPull:Z

    .line 395
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "disableUnarchiveSwipe"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->disableUnarchiveSwipe:Z

    .line 397
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "useYandexMaps"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->useYandexMaps:Z

    .line 398
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "enableAdBlock"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->enableAdBlock:Z

    .line 399
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "doNotUseProxyWithVpn"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->doNotUseProxyWithVpn:Z

    .line 402
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "avatarCorners"

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->avatarCorners:F

    .line 403
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "singleCornerRadius"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->singleCornerRadius:Z

    .line 405
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideActionBarStatus"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideActionBarStatus:Z

    .line 406
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideStories"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideStories:Z

    .line 407
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "centerTitle"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    .line 408
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideFloatingButton"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideFloatingButton:Z

    .line 409
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "bottomNavigationBarMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->setMode(I)V

    .line 410
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "senderMiniAvatars"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->senderMiniAvatars:Z

    .line 411
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "titleText"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->titleText:I

    .line 413
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "tabCounter"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->tabCounter:Z

    .line 414
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "tabIcons"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    .line 415
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideAllChats"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideAllChats:Z

    .line 417
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "iconPack"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->iconPack:I

    .line 418
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "editingIconPackId"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    .line 420
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "squareFab"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->squareFab:Z

    .line 421
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sectionsSeparatedHeaders"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    .line 422
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "disableDividers"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->disableDividers:Z

    .line 423
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "newLoadingStyle"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->newLoadingStyle:Z

    .line 424
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "newSliderStyle"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->newSliderStyle:Z

    .line 425
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "forceSnow"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->forceSnow:Z

    .line 426
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "useSystemFonts"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->useSystemFonts:Z

    .line 427
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "newSwitchStyle"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->newSwitchStyle:Z

    .line 428
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "removeMessageTail"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->removeMessageTail:Z

    .line 429
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "gooeyAvatarAnimation"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->gooeyAvatarAnimation:Z

    .line 430
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "predictiveBackAnimation"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->predictiveBackAnimation:Z

    .line 431
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "springAnimations"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    .line 433
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "glareOnElements"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->glareOnElements:Z

    .line 434
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "forceBlur"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->forceBlur:Z

    .line 436
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "eventType"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->eventType:I

    .line 437
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "navigationDrawer"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->navigationDrawer:Z

    .line 438
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "immersiveDrawerAnimation"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->immersiveDrawerAnimation:Z

    .line 440
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "iconPacksLayout"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "iconPacksHidden"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    if-eqz v1, :cond_3

    .line 444
    sget-object v8, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    new-instance v9, Lcom/exteragram/messenger/ExteraConfig$1;

    invoke-direct {v9}, Lcom/exteragram/messenger/ExteraConfig$1;-><init>()V

    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 446
    new-instance v1, Lcom/exteragram/messenger/ExteraConfig$2;

    invoke-direct {v1}, Lcom/exteragram/messenger/ExteraConfig$2;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    goto :goto_3

    .line 448
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    goto :goto_3

    .line 451
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    .line 454
    const-string v1, "base.default"

    const-string v2, "base.solar"

    const-string v8, "base.remix"

    filled-new-array {v1, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    move v2, v5

    :goto_1
    if-ge v2, v7, :cond_5

    .line 456
    sget v8, Lcom/exteragram/messenger/ExteraConfig;->iconPack:I

    if-ne v2, v8, :cond_4

    .line 457
    sget-object v8, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 459
    :cond_4
    sget-object v8, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 463
    :cond_5
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveIconPacksLayout()V

    .line 466
    :goto_3
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "doNotMarkAsNew"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 467
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    new-instance v8, Lcom/exteragram/messenger/ExteraConfig$3;

    invoke-direct {v8}, Lcom/exteragram/messenger/ExteraConfig$3;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->doNotMarkAsNew:Ljava/util/ArrayList;

    goto :goto_4

    .line 468
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->doNotMarkAsNew:Ljava/util/ArrayList;

    .line 470
    :goto_4
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "newFeaturesShowedAt"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 472
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    new-instance v8, Lcom/exteragram/messenger/ExteraConfig$4;

    invoke-direct {v8}, Lcom/exteragram/messenger/ExteraConfig$4;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->newFeaturesShowedAt:Ljava/util/HashMap;

    if-nez v1, :cond_8

    .line 474
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->newFeaturesShowedAt:Ljava/util/HashMap;

    goto :goto_5

    .line 477
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->newFeaturesShowedAt:Ljava/util/HashMap;

    .line 481
    :cond_8
    :goto_5
    const-string v1, "base.default"

    const-string v2, "base.solar"

    const-string v8, "base.remix"

    filled-new-array {v1, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v2

    :goto_6
    if-ge v2, v7, :cond_a

    .line 483
    aget-object v9, v1, v2

    .line 484
    sget-object v10, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    sget-object v10, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 485
    sget-object v8, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    if-eqz v8, :cond_b

    .line 489
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveIconPacksLayout()V

    .line 491
    :cond_b
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "mainMenuLayout"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "mainMenuHiddenItems"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_d

    .line 495
    sget-object v6, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    new-instance v7, Lcom/exteragram/messenger/ExteraConfig$5;

    invoke-direct {v7}, Lcom/exteragram/messenger/ExteraConfig$5;-><init>()V

    .line 496
    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 495
    invoke-virtual {v6, v1, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    .line 498
    new-instance v1, Lcom/exteragram/messenger/ExteraConfig$6;

    invoke-direct {v1}, Lcom/exteragram/messenger/ExteraConfig$6;-><init>()V

    .line 499
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 498
    invoke-virtual {v6, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    goto :goto_9

    .line 501
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    goto :goto_9

    .line 504
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    .line 505
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    .line 507
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getDefaultMainMenuLayout()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 508
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->values()[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    move-result-object v1

    array-length v2, v1

    move v6, v5

    :goto_7
    if-ge v6, v2, :cond_11

    aget-object v7, v1, v6

    .line 509
    sget-object v8, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    if-eq v7, v8, :cond_10

    sget-object v8, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    iget v9, v7, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_8

    .line 512
    :cond_e
    sget-object v8, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    if-ne v7, v8, :cond_f

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_8

    .line 515
    :cond_f
    sget-object v8, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    iget v7, v7, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 518
    :cond_11
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveMainMenuLayout()V

    .line 521
    :goto_9
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result v1

    if-nez v1, :cond_13

    .line 522
    sput-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    .line 523
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pluginsEngine"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 524
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "pluginsEngine"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 526
    :cond_12
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 527
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 528
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 530
    :cond_13
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pluginsEngine"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsEngine:Z

    .line 531
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 532
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 533
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_14
    :goto_a
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 539
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->ensureSettingsVisibility()V

    .line 540
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->sanitizeMenu()V

    .line 543
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "stickerSize"

    const/high16 v6, 0x41400000    # 12.0f

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->stickerSize:F

    .line 544
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "stickerShape"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->stickerShape:I

    .line 546
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "replyColors"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->replyColors:Z

    .line 547
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "replyEmoji"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->replyEmoji:Z

    .line 548
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "replyBackground"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->replyBackground:Z

    .line 550
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideStickerTime"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideStickerTime:Z

    .line 551
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "unlimitedRecentStickers"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->unlimitedRecentStickers:Z

    .line 552
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideSendAsPeer"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideSendAsPeer:Z

    .line 553
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideReactionsInPrivateChats"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInPrivateChats:Z

    .line 554
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideReactionsInGroups"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInGroups:Z

    .line 555
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideReactionsInChannels"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideReactionsInChannels:Z

    .line 557
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "doubleTapAction"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->sanitizeSetting(I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    .line 558
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "doubleTapActionOutOwner"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/chats/DoubleTapUtils;->sanitizeSetting(I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    .line 560
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "bottomButton"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->bottomButton:I

    .line 561
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideKeyboardOnScroll"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideKeyboardOnScroll:Z

    .line 562
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "quickAdminShortcuts"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->quickAdminShortcuts:Z

    .line 563
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "quickTransitionForChannels"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForChannels:Z

    .line 564
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "quickTransitionForTopics"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->quickTransitionForTopics:Z

    .line 565
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "disableGreetingSticker"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->disableGreetingSticker:Z

    .line 566
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideShareButton"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideShareButton:Z

    .line 567
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showResultsBeforeVoting"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showResultsBeforeVoting:Z

    .line 568
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showOnlineStatus"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showOnlineStatus:Z

    .line 569
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "replaceEditedWithIcon"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->replaceEditedWithIcon:Z

    .line 570
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showDetailsButton"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showDetailsButton:Z

    .line 571
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showGenerateButton"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showGenerateButton:Z

    .line 572
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showSaveMessageButton"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showSaveMessageButton:Z

    .line 573
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showRepeatMessageButton"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showRepeatMessageButton:Z

    .line 574
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showCopyPhotoButton"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showCopyPhotoButton:Z

    .line 575
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showClearButton"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showClearButton:Z

    .line 576
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showReportButton"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showReportButton:Z

    .line 577
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showHistoryButton"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->showHistoryButton:Z

    .line 578
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "groupMessageMenu"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->groupMessageMenu:Z

    .line 579
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "customThemes"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->customThemes:Z

    .line 581
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "addCommaAfterMention"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->addCommaAfterMention:Z

    .line 583
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hidePhotoCounter"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hidePhotoCounter:Z

    .line 584
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "alwaysSendInHD"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->alwaysSendInHD:Z

    .line 585
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "hideCameraTile"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    .line 587
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "recognitionLanguage"

    const-string/jumbo v4, "none"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->recognitionLanguage:Ljava/lang/String;

    .line 588
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "postprocessingWithAi"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->postprocessingWithAi:Z

    .line 590
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "extendedFramesPerSecond"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->extendedFramesPerSecond:Z

    .line 591
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "cameraStabilization"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->cameraStabilization:Z

    .line 592
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "cameraMirrorMode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->cameraMirrorMode:Z

    .line 593
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "staticZoom"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->staticZoom:Z

    .line 594
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "videoMessagesCamera"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    .line 595
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "rememberLastUsedCamera"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->rememberLastUsedCamera:Z

    .line 596
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pauseOnMinimizeVideo"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVideo:Z

    .line 597
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pauseOnMinimizeVoice"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeVoice:Z

    .line 598
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pauseOnMinimizeRound"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pauseOnMinimizeRound:Z

    .line 599
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "doubleTapSeekDuration"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->doubleTapSeekDuration:I

    .line 600
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "preferOriginalQuality"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->preferOriginalQuality:Z

    .line 601
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "swipeToPip"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->swipeToPip:Z

    .line 602
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "unmuteWithVolumeButtons"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->unmuteWithVolumeButtons:Z

    .line 605
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "updateScheduleTimestamp"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/exteragram/messenger/ExteraConfig;->updateScheduleTimestamp:J

    .line 606
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sdkUpdateScheduleTimestamp"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/exteragram/messenger/ExteraConfig;->sdkUpdateScheduleTimestamp:J

    .line 607
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "checkUpdatesOnLaunch"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->checkUpdatesOnLaunch:Z

    .line 610
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "targetLang"

    const-string v4, "app"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->targetLang:Ljava/lang/String;

    .line 611
    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->ensureTargetLanguageCompatibleWithProvider()V

    .line 612
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "voiceHintShowcases"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->voiceHintShowcases:I

    .line 613
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "useGoogleCrashlytics"

    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isBetaApp()Z

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->useGoogleCrashlytics:Z

    .line 614
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "useGoogleAnalytics"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->useGoogleAnalytics:Z

    .line 616
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "flashWarmth"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->flashWarmth:F

    .line 617
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "flashIntensity"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/exteragram/messenger/ExteraConfig;->flashIntensity:F

    .line 619
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pluginsDevMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsDevMode:Z

    .line 620
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pluginsSafeMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsSafeMode:Z

    .line 621
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pluginsCompactView"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsCompactView:Z

    .line 622
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pluginsPySdkAutoUpdate"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkAutoUpdate:Z

    .line 623
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pluginsPySdkBetaVersions"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkBetaVersions:Z

    .line 624
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pluginsDisableArtOpts"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsDisableArtOpts:Z

    .line 626
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "pinnedPlugins"

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ExteraConfig;->pinnedPlugins:Ljava/util/Set;

    .line 628
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "useSystemIconShape"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->useSystemIconShape:Z

    .line 630
    sput-boolean v3, Lcom/exteragram/messenger/ExteraConfig;->configLoaded:Z

    .line 631
    monitor-exit v0

    return-void

    :goto_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static reloadConfig()V
    .locals 2

    .line 720
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 721
    :try_start_0
    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->configLoaded:Z

    .line 722
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->loadConfig()V

    .line 723
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sanitizeMenu()V
    .locals 7

    .line 230
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    new-instance v1, Lcom/exteragram/messenger/ExteraConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/exteragram/messenger/ExteraConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    .line 231
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/exteragram/messenger/ExteraConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/exteragram/messenger/ExteraConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 233
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->values()[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 234
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 236
    :cond_1
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    iget v6, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    iget v6, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 237
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    iget v4, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 243
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveMainMenuLayout()V

    :cond_4
    return-void
.end method

.method public static saveIconPacksLayout()V
    .locals 4

    .line 744
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iconPacksLayout"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 745
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iconPacksHidden"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveMainMenuLayout()V
    .locals 4

    .line 738
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mainMenuLayout"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mainMenuHiddenItems"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 740
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLogging(Z)V
    .locals 3

    .line 703
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "systemConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string/jumbo v1, "logsEnabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 704
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez p0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FileLog;->cleanupLogs()V

    :cond_0
    return-void
.end method

.method public static toggleLogging()V
    .locals 3

    .line 694
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "systemConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string/jumbo v2, "logsEnabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 695
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FileLog;->cleanupLogs()V

    :cond_0
    return-void
.end method
