.class public Lorg/telegram/messenger/SharedConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SharedConfig$BackgroundActivityPrefs;,
        Lorg/telegram/messenger/SharedConfig$ProxyInfo;,
        Lorg/telegram/messenger/SharedConfig$PerformanceClass;,
        Lorg/telegram/messenger/SharedConfig$PasscodeType;
    }
.end annotation


# static fields
.field private static final LOW_SOC:[I

.field public static final PASSCODE_TYPE_PASSWORD:I = 0x1

.field public static final PASSCODE_TYPE_PIN:I = 0x0

.field public static final PERFORMANCE_CLASS_AVERAGE:I = 0x1

.field public static final PERFORMANCE_CLASS_HIGH:I = 0x2

.field public static final PERFORMANCE_CLASS_LOW:I = 0x0

.field private static final PROXY_CURRENT_SCHEMA_VERSION:I = 0x2

.field private static final PROXY_SCHEMA_V2:I = 0x2

.field public static final SAVE_TO_GALLERY_FLAG_CHANNELS:I = 0x4

.field public static final SAVE_TO_GALLERY_FLAG_GROUP:I = 0x2

.field public static final SAVE_TO_GALLERY_FLAG_PEER:I = 0x1

.field public static adaptableColorInBrowser:Z = false

.field public static allowBigEmoji:Z = false

.field static allowPreparingHevcPlayers:Ljava/lang/Boolean; = null

.field public static allowScreenCapture:Z = false

.field private static animationsEnabled:Ljava/lang/Boolean; = null

.field public static appLocked:Z = false

.field public static archiveHidden:Z = false

.field public static autoLockIn:I = 0x0

.field public static badPasscodeTries:I = 0x0

.field public static bigCameraForRound:Z = false

.field public static bubbleRadius:I = 0x0

.field public static callEncryptionHintDisplayedCount:I = 0x0

.field public static chatBubbles:Z = false

.field private static chatSwipeAction:I = 0x0

.field private static configLoaded:Z = false

.field public static currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo; = null

.field public static customTabs:Z = false

.field public static dayNightThemeSwitchHintCount:I = 0x0

.field public static dayNightWallpaperSwitchHint:I = 0x0

.field public static debugVideoQualities:Z = false

.field public static debugWebView:Z = false

.field private static devicePerformanceClass:I = 0x0

.field public static directShare:Z = false

.field public static directShareHash:Ljava/lang/String; = null

.field public static disableVoiceAudioEffects:Z = false

.field public static distanceSystemType:I = 0x0

.field public static dontAskManageStorage:Z = false

.field public static drawActionBarShadow:Z = false

.field public static editor:Landroid/content/SharedPreferences$Editor; = null

.field public static emojiInteractionsHintCount:I = 0x0

.field public static fastScrollHintCount:I = 0x0

.field public static fastWallpaperDisabled:Z = false

.field public static fontSize:I = 0x0

.field public static fontSizeIsDefault:Z = false

.field public static forceDisableTabletMode:Z = false

.field public static forceForumTabs:Z = false

.field public static forwardingOptionsHintShown:Z = false

.field public static frameMetricsEnabled:Z = false

.field private static goodHevcEncoder:Ljava/lang/String; = null

.field public static hasCameraCache:Z = false

.field public static hasEmailLogin:Z = false

.field private static hevcEncoderWhitelist:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static inAppCamera:Z = false

.field public static inappBrowser:Z = false

.field public static isFloatingDebugActive:Z = false

.field public static isWaitingForPasscodeEnter:Z = false

.field public static ivFontSize:I = 0x0

.field public static keepMedia:I = 0x0

.field public static lastKeepMediaCheckTime:I = 0x0

.field private static lastLocalId:I = 0x0

.field public static lastLogsCheckTime:I = 0x0

.field public static lastPauseTime:I = 0x0

.field public static lastUpdateCheckTime:J = 0x0L

.field public static lastUptimeMillis:J = 0x0L

.field private static legacyDevicePerformanceClass:I = -0x1

.field public static liteMode:Lorg/telegram/messenger/LiteMode; = null

.field private static final localIdSync:Ljava/lang/Object;

.field public static lockRecordAudioVideoHint:I = 0x0

.field public static mapPreviewType:I = 0x0

.field public static mediaColumnsCount:I = 0x0

.field public static messageSeenHintCount:I = 0x0

.field public static multipleReactionsPromoShowed:Z = false

.field public static nextMediaTap:Z = false

.field public static noSoundHintShowed:Z = false

.field public static final noStatusBar:Z = true

.field public static noiseSupression:Z

.field public static onlyLocalInstantView:Z

.field private static overrideDevicePerformanceClass:I

.field public static passcodeHash:Ljava/lang/String;

.field public static passcodeRetryInMs:J

.field public static passcodeSalt:[B

.field public static passcodeType:I

.field public static passportConfigHash:I

.field private static passportConfigJson:Ljava/lang/String;

.field private static passportConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pauseMusicOnMedia:Z

.field public static pauseMusicOnRecord:Z

.field public static payByInvoice:Z

.field public static pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

.field public static pendingAppUpdateBuildVersion:I

.field public static photoViewerBlur:Z

.field public static playOrderReversed:Z

.field public static proxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SharedConfig$ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static proxyListLoaded:Z

.field public static proxyRotationEnabled:Z

.field public static proxyRotationTimeout:I

.field public static pushAuthKey:[B

.field public static pushAuthKeyId:[B

.field public static pushStatSent:Z

.field public static pushString:Ljava/lang/String;

.field public static pushStringGetTimeEnd:J

.field public static pushStringGetTimeStart:J

.field public static pushStringStatus:Ljava/lang/String;

.field public static pushType:I

.field public static raiseToListen:Z

.field public static raiseToSpeak:Z

.field public static readOnlyStorageDirAlertShowed:Z

.field public static recordViaSco:Z

.field public static repeatMode:I

.field public static replyingOptionsHintShown:Z

.field public static roundCamera16to9:Z

.field public static saveIncomingPhotos:Z

.field public static saveStreamMedia:Z

.field public static scheduledHintSeenAt:J

.field public static scheduledHintShows:I

.field public static scheduledOrNoSoundHintSeenAt:J

.field public static scheduledOrNoSoundHintShows:I

.field public static searchEngineCustomURLAutocomplete:Ljava/lang/String;

.field public static searchEngineCustomURLQuery:Ljava/lang/String;

.field public static searchEngineType:I

.field public static searchMessagesAsListUsed:Z

.field public static shadowsInSections:Z

.field public static showNotificationsForAllAccounts:Z

.field public static shuffleMusic:Z

.field public static sortContactsByName:Z

.field public static sortFilesByName:Z

.field public static stealthModeSendMessageConfirm:I

.field public static stickersReorderingHintUsed:Z

.field public static storageCacheDir:Ljava/lang/String;

.field public static storiesColumnsCount:I

.field public static storiesIntroShown:Z

.field public static storyReactionsLongPressHint:Z

.field public static streamAllVideo:Z

.field public static streamMedia:Z

.field public static streamMkv:Z

.field public static suggestAnimatedEmoji:Z

.field public static suggestStickers:I

.field private static final sync:Ljava/lang/Object;

.field public static textSelectionHintShows:I

.field public static translateChats:Z

.field public static updateStickersOrderOnSend:Z

.field public static useCamera2Force:Ljava/lang/Boolean;

.field public static useFaceLock:Z

.field public static useFingerprintLock:Z

.field public static useNewBlur:Z

.field public static useSurfaceInStories:Z

.field public static useSystemBoldFont:Z

.field public static useSystemEmoji:Z

.field public static useThreeLinesLayout:Z


# direct methods
.method public static synthetic $r8$lambda$2cAEOLzBgITOqEbt49ggm07xe_c()V
    .locals 4

    .line 1587
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "exteraGram"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1588
    new-instance v1, Ljava/io/File;

    const-string v2, "exteraGram Images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1589
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1590
    new-instance v2, Ljava/io/File;

    const-string v3, "exteraGram Video"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1593
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ".nomedia"

    if-nez v0, :cond_1

    .line 1594
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1597
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1598
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 1601
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1602
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V

    .line 1604
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1605
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->createEmptyFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 1609
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3gtbUfC6wnjRm8-ZleoIGK_ytoQ(Lorg/telegram/messenger/SharedConfig$ProxyInfo;Lorg/telegram/messenger/SharedConfig$ProxyInfo;)I
    .locals 10

    .line 1513
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-wide/16 v1, 0x0

    const-wide/32 v3, -0x30d40

    if-ne v0, p0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    move-wide v5, v1

    .line 1514
    :goto_0
    iget-boolean v7, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    const-wide/32 v8, 0x186a0

    if-nez v7, :cond_1

    add-long/2addr v5, v8

    :cond_1
    if-ne v0, p1, :cond_2

    move-wide v1, v3

    .line 1518
    :cond_2
    iget-boolean v0, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-nez v0, :cond_3

    add-long/2addr v1, v8

    .line 1521
    :cond_3
    iget-wide v3, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    add-long/2addr v3, v5

    iget-wide p0, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    add-long/2addr p0, v1

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5WZZbls8uHKhzrNqXgCrVdV5Lyk()V
    .locals 3

    .line 77
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->readOnlyStorageDirAlertShowed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 82
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    .line 83
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 84
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 88
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->readOnlyStorageDirAlertShowed:Z

    .line 89
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    sget v0, Lorg/telegram/messenger/R$string;->SdCardError:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 91
    sget v0, Lorg/telegram/messenger/R$string;->SdCardErrorDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 92
    sget v0, Lorg/telegram/messenger/R$string;->DoNotUseSDCard:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 95
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$6gZCUSeINXv3Os6LV1HVwzdvmRA(I)V
    .locals 3

    const v0, 0xd2f00

    sub-int/2addr p0, v0

    int-to-long v0, p0

    .line 1066
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1070
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clearDir(Ljava/lang/String;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1072
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1074
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1075
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1076
    const-string/jumbo v0, "lastLogsCheckTime"

    sget v1, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1077
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$AgzM-nIFjDK3Boj0GV34UBf8Qd8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$c1nolnMM8hkF5gEowxjTAWjtK-M()V
    .locals 0

    .line 0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->hevcEncoderWhitelist:Ljava/util/HashSet;

    .line 167
    const-string v1, "c2.exynos.hevc.encoder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->hevcEncoderWhitelist:Ljava/util/HashSet;

    const-string v1, "OMX.Exynos.HEVC.Encoder"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 211
    sput v0, Lorg/telegram/messenger/SharedConfig;->pushType:I

    .line 212
    const-string v1, ""

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    .line 213
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->pushStringStatus:Ljava/lang/String;

    .line 227
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    const/4 v2, 0x0

    .line 231
    new-array v3, v2, [B

    sput-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    const/16 v3, 0xe10

    .line 233
    sput v3, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    const/4 v3, 0x1

    .line 239
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->useFingerprintLock:Z

    .line 240
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->useFaceLock:Z

    .line 243
    sget v4, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    sput v4, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    .line 260
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    .line 265
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    .line 267
    sput v0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    const v4, -0x33450

    .line 268
    sput v4, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    .line 272
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    .line 277
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    .line 278
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->localIdSync:Ljava/lang/Object;

    .line 281
    sput v0, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    .line 282
    sput v2, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->chatBubbles:Z

    .line 285
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    .line 286
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    .line 287
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    .line 288
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 289
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    .line 290
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    .line 291
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    .line 292
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    .line 293
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    .line 294
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->inAppCamera:Z

    .line 295
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    .line 296
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    .line 297
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    .line 298
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    .line 299
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    .line 300
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    .line 301
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    .line 302
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    .line 311
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->showNotificationsForAllAccounts:Z

    .line 312
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    const/16 v0, 0x10

    .line 317
    sput v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/16 v1, 0x11

    .line 319
    sput v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    .line 320
    sput v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    const/4 v0, 0x3

    .line 346
    sput v0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    .line 347
    sput v0, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    .line 348
    sput v0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 352
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->translateChats:Z

    const/16 v0, 0xb

    .line 359
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->LOW_SOC:[I

    .line 374
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadConfig()V

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    .line 1897
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->drawActionBarShadow:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x69cfd661    # -1.42303E-25f
        0x2fd4a230
        0x2fd4a24d
        0x2fd4a22e
        0x7b397146
        0x7b39710c
        0x7b397124
        0x7b3971c1
        0x7b397145
        0x7b3970ce
        -0x6e7bbc02
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;
    .locals 6

    .line 1545
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadProxyList()V

    .line 1546
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1548
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1549
    iget-object v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1553
    :cond_1
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1554
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveProxyList()V

    return-object p0
.end method

.method public static allowPreparingHevcPlayers()Z
    .locals 8

    .line 109
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 110
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 115
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    move v5, v1

    .line 121
    :goto_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 122
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    const-string/jumbo v7, "video/hevc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    invoke-virtual {v4, v7}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result v4

    if-le v4, v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    if-lt v3, v0, :cond_4

    const/4 v1, 0x1

    .line 135
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers:Ljava/lang/Boolean;

    .line 137
    :cond_5
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static animationsEnabled()Z
    .locals 3

    .line 1809
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1810
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "view_animations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    .line 1812
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static buildVersion()I
    .locals 3

    const/4 v0, 0x0

    .line 707
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 709
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static canBlurChat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static chatBlurEnabled()Z
    .locals 1

    .line 1779
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->canBlurChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkLogsToDelete()V
    .locals 4

    .line 1055
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1059
    sget v1, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xe10

    if-ge v1, v2, :cond_1

    :goto_0
    return-void

    .line 1062
    :cond_1
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    .line 1063
    sget-object v1, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;)Z
    .locals 7

    .line 844
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length v0, v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 845
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    :try_start_0
    new-array v3, v1, [B

    sput-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    .line 849
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 850
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 851
    array-length v3, p0

    add-int/lit8 v3, v3, 0x20

    new-array v4, v3, [B

    .line 852
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    array-length v5, p0

    invoke-static {p0, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length p0, p0

    add-int/2addr p0, v1

    invoke-static {v5, v2, v4, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v5, v3

    .line 855
    invoke-static {v4, v2, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 856
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 858
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return v0

    .line 864
    :cond_1
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 865
    array-length v0, p0

    add-int/lit8 v0, v0, 0x20

    new-array v3, v0, [B

    .line 866
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 867
    array-length v4, p0

    invoke-static {p0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length p0, p0

    add-int/2addr p0, v1

    invoke-static {v4, v2, v3, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v0, v0

    .line 869
    invoke-static {v3, v2, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    .line 870
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 872
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v2
.end method

.method public static checkSaveToGalleryFiles()V
    .locals 2

    .line 1585
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static checkSdCard(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 72
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->readOnlyStorageDirAlertShowed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 76
    new-instance p0, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static clearConfig()V
    .locals 4

    const/4 v0, 0x0

    .line 879
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    .line 880
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 881
    sput v0, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    const-wide/16 v1, 0x0

    .line 882
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    .line 883
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    .line 884
    sput v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    .line 885
    const-string v3, ""

    sput-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 886
    new-array v3, v0, [B

    sput-object v3, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    const/16 v3, 0xe10

    .line 887
    sput v3, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 888
    sput v0, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    const/4 v3, 0x1

    .line 889
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->useFingerprintLock:Z

    .line 890
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->isWaitingForPasscodeEnter:Z

    .line 891
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    .line 892
    sput v0, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    .line 893
    sput v0, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    .line 894
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    .line 895
    sput v0, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    .line 896
    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    .line 897
    sput v0, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    .line 898
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    .line 899
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    const/4 v1, 0x3

    .line 900
    sput v1, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 901
    sput v1, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 902
    sput v1, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    const/4 v1, 0x2

    .line 903
    sput v1, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 904
    sput v0, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    .line 905
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method public static deleteProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 10

    .line 1563
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1564
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1565
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1566
    const-string/jumbo v1, "proxy_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1567
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1568
    const-string/jumbo v4, "proxy_ip"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1569
    const-string/jumbo v4, "proxy_pass"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1570
    const-string/jumbo v4, "proxy_user"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1571
    const-string/jumbo v4, "proxy_secret"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1572
    const-string/jumbo v4, "proxy_port"

    const/16 v5, 0x438

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1573
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1574
    const-string/jumbo v1, "proxy_enabled_calls"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1575
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v3, :cond_0

    .line 1577
    const-string v8, ""

    const-string v9, ""

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static/range {v4 .. v9}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1581
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveProxyList()V

    return-void
.end method

.method public static deviceIsAboveAverage()Z
    .locals 2

    .line 1824
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deviceIsAverage()Z
    .locals 2

    .line 1832
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deviceIsHigh()Z
    .locals 2

    .line 1828
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deviceIsLow()Z
    .locals 1

    .line 1820
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static enabledRaiseTo(Z)Z
    .locals 1

    .line 1286
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static findGoodHevcEncoder()Ljava/lang/String;
    .locals 7

    .line 173
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 174
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 176
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    move v4, v1

    .line 181
    :goto_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 182
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    const-string/jumbo v6, "video/hevc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->isWhitelisted(Landroid/media/MediaCodecInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 183
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    return-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_3
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    .line 189
    :cond_4
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->goodHevcEncoder:Ljava/lang/String;

    return-object v0
.end method

.method public static forwardingOptionsHintHintShowed()V
    .locals 3

    .line 996
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 997
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 998
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    .line 999
    const-string v2, "forwardingOptionsHintShown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1000
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getChatSwipeAction(I)I
    .locals 3

    .line 1615
    sget v0, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-ltz v0, :cond_1

    if-ne v0, v2, :cond_0

    .line 1616
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 1619
    :cond_0
    sget p0, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    return p0

    .line 1620
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static getCountryLangs()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 771
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    .line 774
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 776
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 778
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 781
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 784
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getDevicePerformanceClass()I
    .locals 2

    .line 1671
    sget v0, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1674
    :cond_0
    sget v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    if-ne v0, v1, :cond_1

    .line 1675
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v0

    sput v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    .line 1677
    :cond_1
    sget v0, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    return v0
.end method

.method public static getLastLocalId()I
    .locals 3

    .line 502
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->localIdSync:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_0
    sget v1, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    add-int/lit8 v2, v1, -0x1

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    .line 504
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLegacyDevicePerformanceClass()I
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1865
    sget v0, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1866
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1867
    sget v2, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 1868
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v5, v2, :cond_1

    .line 1873
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v4

    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "r"

    invoke-direct {v9, v8, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1876
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    .line 1879
    :cond_0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    int-to-float v5, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    .line 1882
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    :goto_1
    const/4 v6, 0x2

    if-le v2, v6, :cond_8

    const/16 v7, 0x64

    if-le v3, v7, :cond_8

    const/4 v7, 0x4

    if-gt v2, v7, :cond_3

    if-eq v5, v1, :cond_3

    const/16 v9, 0x4e2

    if-le v5, v9, :cond_8

    :cond_3
    if-gt v2, v7, :cond_4

    const/16 v7, 0x514

    if-gt v5, v7, :cond_4

    const/16 v7, 0x80

    if-gt v3, v7, :cond_4

    const/16 v7, 0x18

    if-gt v0, v7, :cond_4

    goto :goto_3

    :cond_4
    const/16 v4, 0x8

    if-lt v2, v4, :cond_7

    const/16 v7, 0xa0

    if-le v3, v7, :cond_7

    if-eq v5, v1, :cond_5

    const/16 v3, 0x802

    if-le v5, v3, :cond_7

    :cond_5
    if-ne v5, v1, :cond_6

    if-ne v2, v4, :cond_6

    const/16 v1, 0x17

    if-gt v0, v1, :cond_6

    goto :goto_2

    .line 1889
    :cond_6
    sput v6, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    goto :goto_4

    .line 1887
    :cond_7
    :goto_2
    sput v8, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    goto :goto_4

    .line 1885
    :cond_8
    :goto_3
    sput v4, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    .line 1892
    :cond_9
    :goto_4
    sget v0, Lorg/telegram/messenger/SharedConfig;->legacyDevicePerformanceClass:I

    return v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 1816
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "userconfing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static increaseBadPasscodeTries()V
    .locals 2

    .line 723
    sget v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x7530

    .line 742
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x61a8

    .line 739
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x4e20

    .line 736
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3a98

    .line 733
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x2710

    .line 730
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x1388

    .line 727
    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    .line 745
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    .line 747
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    return-void
.end method

.method public static increaseDayNightWallpaperSiwtchHint()V
    .locals 3

    .line 964
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 965
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 966
    sget v1, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    const-string v2, "dayNightWallpaperSwitchHint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseLockRecordAudioVideoHintShowed()V
    .locals 3

    .line 1026
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1027
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1028
    sget v1, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    const-string/jumbo v2, "lockRecordAudioVideoHint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1029
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseScheduledHintShowed()V
    .locals 4

    .line 987
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 988
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    .line 990
    sget v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    const-string/jumbo v2, "scheduledHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 991
    const-string/jumbo v1, "scheduledHintSeenAt"

    sget-wide v2, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 992
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseScheduledOrNoSoundHintShowed()V
    .locals 4

    .line 978
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 979
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    .line 981
    sget v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    const-string/jumbo v2, "scheduledOrNoSoundHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 982
    const-string/jumbo v1, "scheduledOrNoSoundHintSeenAt"

    sget-wide v2, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 983
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static increaseTextSelectionHintShowed()V
    .locals 3

    .line 957
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 958
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 959
    sget v1, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    const-string/jumbo v2, "textSelectionHintShows"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 960
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static incrementCallEncryptionHintDisplayed(I)V
    .locals 2

    .line 1107
    sget v0, Lorg/telegram/messenger/SharedConfig;->callEncryptionHintDisplayedCount:I

    add-int/2addr v0, p0

    sput v0, Lorg/telegram/messenger/SharedConfig;->callEncryptionHintDisplayedCount:I

    .line 1108
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1109
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1110
    const-string v0, "callEncryptionHintDisplayedCount"

    sget v1, Lorg/telegram/messenger/SharedConfig;->callEncryptionHintDisplayedCount:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static isAppUpdateAvailable()Z
    .locals 3

    .line 788
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_0

    goto :goto_1

    .line 793
    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 794
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 796
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 797
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->buildVersion()I

    move-result v0

    .line 799
    :goto_0
    sget v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1
.end method

.method public static isAutoplayGifs()Z
    .locals 1

    const/16 v0, 0x800

    .line 755
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isAutoplayVideo()Z
    .locals 1

    const/16 v0, 0x400

    .line 751
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isPassportConfigLoaded()Z
    .locals 1

    .line 759
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isProxyEnabled()Z
    .locals 3

    .line 1559
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "proxy_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public static isSecretMapPreviewSet()Z
    .locals 2

    .line 1230
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1231
    const-string/jumbo v1, "mapPreviewType"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUsingCamera2(I)Z
    .locals 1

    .line 1852
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->useCamera2Force:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-boolean p0, p0, Lorg/telegram/messenger/MessagesController;->androidDisableRoundCamera2:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static isWhitelisted(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 193
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 196
    :cond_0
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->hevcEncoderWhitelist:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static loadConfig()V
    .locals 13

    .line 522
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->configLoaded:Z

    if-nez v1, :cond_e

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 527
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "background_activity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig$BackgroundActivityPrefs;->-$$Nest$sfputprefs(Landroid/content/SharedPreferences;)V

    .line 529
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "userconfing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 530
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->editor:Landroid/content/SharedPreferences$Editor;

    .line 532
    const-string/jumbo v2, "saveIncomingPhotos"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    .line 533
    const-string/jumbo v2, "passcodeHash1"

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    .line 534
    const-string v2, "appLocked"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 535
    const-string/jumbo v2, "passcodeType"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    .line 536
    const-string/jumbo v2, "passcodeRetryInMs"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    .line 537
    const-string/jumbo v2, "lastUptimeMillis"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    .line 538
    const-string v2, "badPasscodeTries"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    .line 539
    const-string v2, "autoLockIn"

    const/16 v6, 0xe10

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    .line 540
    const-string/jumbo v2, "lastPauseTime"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 541
    const-string/jumbo v2, "useFingerprint"

    const/4 v6, 0x1

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useFingerprintLock:Z

    .line 542
    const-string v2, "allowScreenCapture"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    .line 543
    const-string/jumbo v2, "lastLocalId"

    const v7, -0x33450

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    .line 544
    const-string/jumbo v2, "pushString2"

    const-string v7, ""

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    .line 545
    const-string/jumbo v2, "pushType"

    const/4 v7, 0x2

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->pushType:I

    .line 546
    const-string/jumbo v2, "pushStatSent"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    .line 547
    const-string/jumbo v2, "passportConfigJson"

    const-string v8, ""

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    .line 548
    const-string/jumbo v2, "passportConfigHash"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    .line 549
    const-string/jumbo v2, "storageCacheDir"

    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    .line 550
    const-string/jumbo v2, "proxyRotationEnabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    .line 551
    const-string/jumbo v2, "proxyRotationTimeout"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    .line 552
    const-string/jumbo v2, "pushAuthKey"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 554
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_c

    .line 557
    :cond_1
    :goto_0
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    sget v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    if-nez v2, :cond_2

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    const-wide/16 v11, 0x258

    sub-long/2addr v9, v11

    long-to-int v2, v9

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    .line 561
    :cond_2
    const-string/jumbo v2, "passcodeSalt"

    const-string v9, ""

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 563
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    goto :goto_1

    .line 565
    :cond_3
    new-array v2, v3, [B

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    .line 567
    :goto_1
    const-string v2, "appUpdateCheckTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v1, v2, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sput-wide v9, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :try_start_1
    const-string v2, "appUpdate"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 571
    const-string v9, "appUpdateBuild"

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->buildVersion()I

    move-result v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    .line 572
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 574
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v2, v1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 575
    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {v2, v1, v3}, Lorg/telegram/tgnet/TLRPC$help_AppUpdate;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$help_AppUpdate;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 576
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_5

    .line 579
    :cond_4
    :goto_2
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    .line 583
    :try_start_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 584
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    :try_start_3
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    move v2, v3

    .line 587
    :goto_3
    :try_start_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, v8

    :goto_4
    if-nez v2, :cond_5

    .line 590
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->buildVersion()I

    move-result v2

    :cond_5
    if-nez v1, :cond_6

    .line 593
    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 595
    :cond_6
    sget v9, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    if-ne v9, v2, :cond_7

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_7

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_8

    .line 596
    :cond_7
    sput-object v8, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 597
    new-instance v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 601
    :goto_5
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 604
    :cond_8
    :goto_6
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 605
    invoke-static {v1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->load(Landroid/content/SharedPreferences;)V

    .line 606
    const-string/jumbo v2, "mapPreviewType"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    .line 607
    const-string/jumbo v2, "searchEngineType"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    .line 608
    const-string/jumbo v2, "raise_to_listen"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    .line 609
    const-string/jumbo v2, "raise_to_speak"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    .line 610
    const-string/jumbo v2, "next_media_on_tap"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    .line 611
    const-string/jumbo v2, "record_via_sco"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 612
    const-string v2, "custom_tabs"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    .line 613
    const-string v2, "inapp_browser"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    .line 614
    const-string v2, "adaptableBrowser"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    .line 615
    const-string/jumbo v2, "onlyLocalInstantView"

    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    .line 616
    const-string v2, "direct_share"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    .line 617
    const-string/jumbo v2, "shuffleMusic"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-nez v2, :cond_9

    .line 618
    const-string/jumbo v2, "playOrderReversed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v6

    goto :goto_7

    :cond_9
    move v2, v3

    :goto_7
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    .line 619
    const-string v2, "inappCamera"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->inAppCamera:Z

    .line 620
    const-string v2, "cameraCache"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->hasCameraCache:Z

    .line 621
    sput-boolean v6, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    .line 622
    const-string/jumbo v2, "repeatMode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    .line 623
    const-string v2, "fons_size"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x12

    goto :goto_8

    :cond_a
    const/16 v9, 0x10

    :goto_8
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    .line 624
    const-string v2, "fons_size"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v6

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    .line 625
    const-string v2, "bubbleRadius"

    const/16 v9, 0x11

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    .line 626
    const-string/jumbo v2, "iv_font_size"

    sget v9, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    .line 627
    const-string v2, "allowBigEmoji"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    .line 628
    const-string/jumbo v2, "useSystemEmoji"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    .line 629
    const-string/jumbo v2, "useSystemBoldFont"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSystemBoldFont:Z

    .line 630
    const-string v2, "forceForumTabs"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->forceForumTabs:Z

    .line 631
    const-string v2, "fastWallpaperDisabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->fastWallpaperDisabled:Z

    .line 632
    const-string v2, "frameMetricsEnabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->frameMetricsEnabled:Z

    .line 633
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSystemBoldFont:Z

    if-eqz v2, :cond_b

    .line 634
    sput-object v8, Lorg/telegram/messenger/AndroidUtilities;->mediumTypeface:Landroid/graphics/Typeface;

    .line 636
    :cond_b
    const-string/jumbo v2, "streamMedia"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    .line 637
    const-string/jumbo v2, "saveStreamMedia"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    .line 638
    const-string/jumbo v2, "pauseMusicOnRecord"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    .line 639
    const-string/jumbo v2, "pauseMusicOnMedia"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    .line 640
    const-string v2, "forceDisableTabletMode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    .line 641
    const-string/jumbo v2, "streamAllVideo"

    sget-boolean v9, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    .line 642
    const-string/jumbo v2, "streamMkv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    .line 643
    const-string/jumbo v2, "suggestStickers"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    .line 644
    const-string/jumbo v2, "suggestAnimatedEmoji"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    .line 645
    const-string/jumbo v2, "overrideDevicePerformanceClass"

    const/4 v9, -0x1

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    .line 646
    const-string v2, "devicePerformanceClass"

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->devicePerformanceClass:I

    .line 647
    const-string/jumbo v2, "sortContactsByName"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    .line 648
    const-string/jumbo v2, "sortFilesByName"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    .line 649
    const-string/jumbo v2, "noSoundHintShowed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    .line 650
    const-string v2, "directShareHash2"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/SharedConfig;->directShareHash:Ljava/lang/String;

    .line 651
    const-string/jumbo v2, "useThreeLinesLayout"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    .line 652
    const-string v2, "archiveHidden"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    .line 653
    const-string v2, "distanceSystemType"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    .line 654
    const-string/jumbo v2, "keep_media"

    sget v10, Lorg/telegram/messenger/CacheByChatsController;->KEEP_MEDIA_ONE_MONTH:I

    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    .line 655
    const-string v2, "debugWebView"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    .line 656
    const-string/jumbo v2, "lastKeepMediaCheckTime"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastKeepMediaCheckTime:I

    .line 657
    const-string/jumbo v2, "lastLogsCheckTime"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lastLogsCheckTime:I

    .line 658
    const-string/jumbo v2, "searchMessagesAsListUsed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    .line 659
    const-string/jumbo v2, "stickersReorderingHintUsed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    .line 660
    const-string/jumbo v2, "storyReactionsLongPressHint"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    .line 661
    const-string/jumbo v2, "storiesIntroShown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    .line 662
    const-string/jumbo v2, "textSelectionHintShows"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    .line 663
    const-string/jumbo v2, "scheduledOrNoSoundHintShows"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    .line 664
    const-string/jumbo v2, "scheduledOrNoSoundHintSeenAt"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sput-wide v10, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    .line 665
    const-string/jumbo v2, "scheduledHintShows"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    .line 666
    const-string/jumbo v2, "scheduledHintSeenAt"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    .line 667
    const-string v2, "forwardingOptionsHintShown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    .line 668
    const-string/jumbo v2, "replyingOptionsHintShown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    .line 669
    const-string/jumbo v2, "lockRecordAudioVideoHint"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    .line 670
    const-string v2, "disableVoiceAudioEffects"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    .line 671
    const-string/jumbo v2, "noiseSupression"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    .line 672
    const-string v2, "ChatSwipeAction"

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    .line 673
    const-string/jumbo v2, "messageSeenCount"

    const/4 v4, 0x3

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 674
    const-string v2, "emojiInteractionsHintCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 675
    const-string v2, "dayNightThemeSwitchHintCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 676
    const-string/jumbo v2, "stealthModeSendMessageConfirm"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 677
    const-string/jumbo v2, "mediaColumnsCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    .line 678
    const-string/jumbo v2, "storiesColumnsCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    .line 679
    const-string v2, "fastScrollHintCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 680
    const-string v2, "dontAskManageStorage"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->dontAskManageStorage:Z

    .line 681
    const-string v2, "hasEmailLogin"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    .line 682
    const-string v2, "floatingDebugActive"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    .line 683
    const-string/jumbo v2, "updateStickersOrderOnSend"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    .line 684
    const-string v2, "dayNightWallpaperSwitchHint"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->dayNightWallpaperSwitchHint:I

    .line 685
    const-string v2, "bigCameraForRound"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    .line 686
    const-string/jumbo v2, "useNewBlur"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    .line 687
    const-string/jumbo v2, "useCamera2Force_2"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_9

    :cond_c
    const-string/jumbo v2, "useCamera2Force_2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_9
    sput-object v8, Lorg/telegram/messenger/SharedConfig;->useCamera2Force:Ljava/lang/Boolean;

    .line 688
    const-string/jumbo v2, "useSurfaceInStories"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_d

    move v4, v6

    goto :goto_a

    :cond_d
    move v4, v3

    :goto_a
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    .line 689
    const-string/jumbo v2, "payByInvoice"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    .line 690
    const-string/jumbo v2, "photoViewerBlur"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    .line 691
    const-string/jumbo v2, "multipleReactionsPromoShowed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->multipleReactionsPromoShowed:Z

    .line 692
    const-string v2, "callEncryptionHintDisplayedCount"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/SharedConfig;->callEncryptionHintDisplayedCount:I

    .line 693
    const-string v2, "debugVideoQualities"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    .line 694
    const-string/jumbo v2, "shadowsInSections"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->shadowsInSections:Z

    .line 696
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->loadDebugConfig(Landroid/content/SharedPreferences;)V

    .line 698
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "Notifications"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 699
    const-string v2, "AllAccounts"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->showNotificationsForAllAccounts:Z

    .line 701
    sput-boolean v6, Lorg/telegram/messenger/SharedConfig;->configLoaded:Z

    .line 702
    monitor-exit v0

    return-void

    .line 524
    :cond_e
    :goto_b
    monitor-exit v0

    return-void

    .line 702
    :goto_c
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method private static loadDebugConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1900
    const-string v0, "drawActionBarShadow"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->drawActionBarShadow:Z

    return-void
.end method

.method public static loadProxyList()V
    .locals 16

    .line 1441
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->proxyListLoaded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1444
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1445
    const-string/jumbo v1, "proxy_ip"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1446
    const-string/jumbo v1, "proxy_user"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1447
    const-string/jumbo v1, "proxy_pass"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1448
    const-string/jumbo v1, "proxy_secret"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1449
    const-string/jumbo v1, "proxy_port"

    const/16 v3, 0x438

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v1, 0x1

    .line 1451
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->proxyListLoaded:Z

    .line 1452
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 1453
    sput-object v1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1454
    const-string/jumbo v3, "proxy_list"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1456
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1457
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 1458
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 1460
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1463
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 1466
    new-instance v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1467
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v11

    .line 1468
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    .line 1469
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v13

    .line 1470
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v14

    .line 1471
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v11

    iput-wide v11, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    .line 1474
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

    move-result-wide v11

    iput-wide v11, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    .line 1476
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1477
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v4, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1478
    iget-object v4, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    if-ne v6, v4, :cond_1

    iget-object v4, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1479
    sput-object v10, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1484
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown proxy schema version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 1488
    new-instance v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1489
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v11

    .line 1490
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    .line 1491
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v13

    .line 1492
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v14

    .line 1493
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1495
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v4, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1496
    iget-object v4, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    if-ne v6, v4, :cond_4

    iget-object v4, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v10, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1497
    sput-object v10, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1502
    :cond_5
    :goto_2
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 1504
    :cond_6
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    if-nez v0, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1505
    new-instance v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1506
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static loopStickers()Z
    .locals 1

    const/4 v0, 0x2

    .line 66
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static measureDevicePerformanceClass()I
    .locals 14

    .line 1681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1682
    sget v1, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 1683
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v4, 0x1f

    const/4 v5, 0x0

    if-lt v0, v4, :cond_1

    .line 1685
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1686
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v6, v5

    .line 1687
    :goto_0
    sget-object v7, Lorg/telegram/messenger/SharedConfig;->LOW_SOC:[I

    array-length v8, v7

    if-ge v6, v8, :cond_1

    .line 1688
    aget v7, v7, v6

    if-ne v7, v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    move v6, v4

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v4, v1, :cond_3

    .line 1698
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "/sys/devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v5

    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "r"

    invoke-direct {v9, v8, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1701
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    .line 1704
    :cond_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    if-nez v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    int-to-float v7, v7

    int-to-float v6, v6

    div-float/2addr v7, v6

    float-to-double v6, v7

    .line 1707
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    :goto_2
    const-wide/16 v9, -0x1

    .line 1711
    :try_start_1
    new-instance v7, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v7}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1712
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3, v7}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1713
    iget-wide v11, v7, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-wide v11, v9

    :goto_3
    const/4 v3, 0x2

    if-le v1, v3, :cond_b

    const/16 v7, 0x64

    if-le v2, v7, :cond_b

    const/4 v7, 0x4

    if-gt v1, v7, :cond_5

    if-eq v6, v4, :cond_5

    const/16 v13, 0x4e2

    if-le v6, v13, :cond_b

    :cond_5
    if-gt v1, v7, :cond_6

    const/16 v7, 0x514

    if-gt v6, v7, :cond_6

    const/16 v7, 0x80

    if-gt v2, v7, :cond_6

    const/16 v7, 0x18

    if-le v0, v7, :cond_b

    :cond_6
    cmp-long v7, v11, v9

    if-eqz v7, :cond_7

    const-wide v9, 0x80000000L

    cmp-long v7, v11, v9

    if-gez v7, :cond_7

    goto :goto_5

    :cond_7
    const/16 v5, 0x8

    if-lt v1, v5, :cond_a

    const/16 v7, 0xa0

    if-le v2, v7, :cond_a

    if-eq v6, v4, :cond_8

    const/16 v7, 0x807

    if-le v6, v7, :cond_a

    :cond_8
    if-ne v6, v4, :cond_9

    if-ne v1, v5, :cond_9

    const/16 v4, 0x17

    if-gt v0, v4, :cond_9

    goto :goto_4

    :cond_9
    move v5, v3

    goto :goto_5

    :cond_a
    :goto_4
    move v5, v8

    .line 1737
    :cond_b
    :goto_5
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_c

    .line 1738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device performance info selected_class = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (cpu_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freq = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memoryClass = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", android version "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", manufacture "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", screenRefreshRate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", screenMaxRefreshRate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenMaxRefreshRate:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_c
    return v5
.end method

.method public static overrideDevicePerformanceClass(I)V
    .locals 2

    .line 1198
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput p0, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass:I

    const-string/jumbo v1, "overrideDevicePerformanceClass"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "lite_mode"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1199
    sget-object p0, Lorg/telegram/messenger/SharedConfig;->liteMode:Lorg/telegram/messenger/LiteMode;

    if-eqz p0, :cond_0

    .line 1200
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->loadPreference()V

    :cond_0
    return-void
.end method

.method public static performanceClassName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 1749
    const-string p0, "UNKNOWN"

    return-object p0

    .line 1746
    :cond_0
    const-string p0, "HIGH"

    return-object p0

    .line 1747
    :cond_1
    const-string p0, "AVERAGE"

    return-object p0

    .line 1748
    :cond_2
    const-string p0, "LOW"

    return-object p0
.end method

.method public static reloadConfig()V
    .locals 1

    const/4 v0, 0x0

    .line 517
    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->configLoaded:Z

    .line 518
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->loadConfig()V

    return-void
.end method

.method public static removeLockRecordAudioVideoHint()V
    .locals 3

    .line 1033
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1034
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1035
    const-string/jumbo v1, "lockRecordAudioVideoHint"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1036
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeScheduledHint()V
    .locals 3

    .line 1019
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1020
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1021
    const-string/jumbo v1, "scheduledHintShows"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1022
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeScheduledOrNoSoundHint()V
    .locals 3

    .line 1012
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1013
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1014
    const-string/jumbo v1, "scheduledOrNoSoundHintShows"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1015
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static removeTextSelectionHint()V
    .locals 3

    .line 971
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 972
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 973
    const-string/jumbo v1, "textSelectionHintShows"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 974
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static replyingOptionsHintHintShowed()V
    .locals 3

    .line 1004
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1005
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 1006
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    .line 1007
    const-string/jumbo v2, "replyingOptionsHintShown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1008
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveConfig()V
    .locals 6

    .line 434
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "userconfing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 437
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 438
    const-string/jumbo v2, "saveIncomingPhotos"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->saveIncomingPhotos:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 439
    const-string/jumbo v2, "passcodeHash1"

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string/jumbo v2, "passcodeSalt"

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passcodeSalt:[B

    array-length v5, v4

    if-lez v5, :cond_0

    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    const-string v2, "appLocked"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 442
    const-string/jumbo v2, "passcodeType"

    sget v4, Lorg/telegram/messenger/SharedConfig;->passcodeType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 443
    const-string/jumbo v2, "passcodeRetryInMs"

    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->passcodeRetryInMs:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 444
    const-string/jumbo v2, "lastUptimeMillis"

    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->lastUptimeMillis:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 445
    const-string v2, "badPasscodeTries"

    sget v4, Lorg/telegram/messenger/SharedConfig;->badPasscodeTries:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 446
    const-string v2, "autoLockIn"

    sget v4, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 447
    const-string/jumbo v2, "lastPauseTime"

    sget v4, Lorg/telegram/messenger/SharedConfig;->lastPauseTime:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 448
    const-string/jumbo v2, "useFingerprint"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->useFingerprintLock:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    const-string v2, "allowScreenCapture"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    const-string/jumbo v2, "pushString2"

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->pushString:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 451
    const-string/jumbo v2, "pushType"

    sget v4, Lorg/telegram/messenger/SharedConfig;->pushType:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 452
    const-string/jumbo v2, "pushStatSent"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->pushStatSent:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 453
    const-string/jumbo v2, "pushAuthKey"

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->pushAuthKey:[B

    if-eqz v4, :cond_1

    invoke-static {v4, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    const-string/jumbo v2, "lastLocalId"

    sget v4, Lorg/telegram/messenger/SharedConfig;->lastLocalId:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 455
    const-string/jumbo v2, "passportConfigJson"

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    const-string/jumbo v2, "passportConfigHash"

    sget v4, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    const-string/jumbo v2, "sortContactsByName"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 458
    const-string/jumbo v2, "sortFilesByName"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 459
    const-string/jumbo v2, "textSelectionHintShows"

    sget v4, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 460
    const-string/jumbo v2, "scheduledOrNoSoundHintShows"

    sget v4, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintShows:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 461
    const-string/jumbo v2, "scheduledOrNoSoundHintSeenAt"

    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->scheduledOrNoSoundHintSeenAt:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 462
    const-string/jumbo v2, "scheduledHintShows"

    sget v4, Lorg/telegram/messenger/SharedConfig;->scheduledHintShows:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 463
    const-string/jumbo v2, "scheduledHintSeenAt"

    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->scheduledHintSeenAt:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 464
    const-string v2, "forwardingOptionsHintShown"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 465
    const-string/jumbo v2, "replyingOptionsHintShown"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 466
    const-string/jumbo v2, "lockRecordAudioVideoHint"

    sget v4, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 467
    const-string/jumbo v2, "storageCacheDir"

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v4, ""

    :goto_2
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 468
    const-string/jumbo v2, "proxyRotationEnabled"

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->proxyRotationEnabled:Z

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 469
    const-string/jumbo v2, "proxyRotationTimeout"

    sget v4, Lorg/telegram/messenger/SharedConfig;->proxyRotationTimeout:I

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 471
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 473
    :try_start_1
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v2

    invoke-direct {v4, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 474
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    invoke-virtual {v2, v4}, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 475
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 476
    const-string v5, "appUpdate"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    const-string v2, "appUpdateBuild"

    sget v5, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 483
    :cond_3
    :try_start_2
    const-string v2, "appUpdate"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    :catch_1
    :goto_3
    const-string v2, "appUpdateCheckTime"

    sget-wide v4, Lorg/telegram/messenger/SharedConfig;->lastUpdateCheckTime:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 489
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 490
    const-string v2, "hasEmailLogin"

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 491
    const-string v2, "floatingDebugActive"

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    const-string/jumbo v2, "record_via_sco"

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 495
    :goto_4
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 497
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static saveDebugConfig()V
    .locals 3

    .line 1904
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1905
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "drawActionBarShadow"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->drawActionBarShadow:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static saveProxyList()V
    .locals 7

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/SharedConfig;->proxyList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1512
    new-instance v1, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/messenger/SharedConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1523
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    const/4 v2, -0x1

    .line 1524
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v2, 0x2

    .line 1525
    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeByte(I)V

    .line 1526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1527
    invoke-virtual {v1, v3}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    .line 1529
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 1530
    iget-object v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    const-string v6, ""

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1531
    iget v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 1532
    iget-object v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move-object v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1533
    iget-object v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1534
    iget-object v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v6, v5

    :cond_3
    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1536
    iget-wide v5, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    invoke-virtual {v1, v5, v6}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    .line 1537
    iget-wide v4, v4, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1539
    :cond_4
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1540
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "proxy_list"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1541
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    return-void
.end method

.method public static setAnimationsEnabled(Z)V
    .locals 0

    .line 1805
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lorg/telegram/messenger/SharedConfig;->animationsEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static setDistanceSystemType(I)V
    .locals 2

    .line 1432
    sput p0, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    .line 1433
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1434
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1435
    const-string v0, "distanceSystemType"

    sget v1, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1436
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1437
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->resetImperialSystemType()V

    return-void
.end method

.method public static setFastScrollHintCount(I)V
    .locals 2

    .line 1768
    sget v0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    if-eq v0, p0, :cond_0

    .line 1769
    sput p0, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 1770
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "fastScrollHintCount"

    sget v1, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setKeepMedia(I)V
    .locals 2

    .line 1040
    sput p0, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    .line 1041
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1042
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1043
    const-string/jumbo v0, "keep_media"

    sget v1, Lorg/telegram/messenger/SharedConfig;->keepMedia:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1044
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setMediaColumnsCount(I)V
    .locals 2

    .line 1754
    sget v0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    if-eq v0, p0, :cond_0

    .line 1755
    sput p0, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    .line 1756
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "mediaColumnsCount"

    sget v1, Lorg/telegram/messenger/SharedConfig;->mediaColumnsCount:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setMultipleReactionsPromoShowed(Z)V
    .locals 2

    .line 909
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->multipleReactionsPromoShowed:Z

    .line 910
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 911
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 912
    const-string/jumbo v0, "multipleReactionsPromoShowed"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->multipleReactionsPromoShowed:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 913
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNewAppVersionAvailable(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;)Z
    .locals 4

    const/4 v0, 0x0

    .line 806
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 807
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 808
    :try_start_1
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move v2, v0

    .line 810
    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 813
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->buildVersion()I

    move-result v2

    :cond_0
    if-nez v1, :cond_1

    .line 816
    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    .line 818
    :cond_1
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->version:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-static {v1, v3}, Lorg/telegram/messenger/SharedConfig;->versionBiggerOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 821
    :cond_2
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 822
    sput v2, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdateBuildVersion:I

    .line 823
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    return v0
.end method

.method public static setNoSoundHintShowed(Z)V
    .locals 2

    .line 1251
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    if-ne v0, p0, :cond_0

    return-void

    .line 1254
    :cond_0
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    .line 1255
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1256
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1257
    const-string/jumbo v0, "noSoundHintShowed"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->noSoundHintShowed:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1258
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPassportConfig(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 763
    sput-object v0, Lorg/telegram/messenger/SharedConfig;->passportConfigMap:Ljava/util/HashMap;

    .line 764
    sput-object p0, Lorg/telegram/messenger/SharedConfig;->passportConfigJson:Ljava/lang/String;

    .line 765
    sput p1, Lorg/telegram/messenger/SharedConfig;->passportConfigHash:I

    .line 766
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 767
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getCountryLangs()Ljava/util/HashMap;

    return-void
.end method

.method public static setPlaybackOrderType(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    .line 1169
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    .line 1170
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    .line 1172
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    .line 1173
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    goto :goto_0

    .line 1175
    :cond_1
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    .line 1176
    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    .line 1178
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMediaFileDownloaded()V

    .line 1179
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1180
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1181
    const-string/jumbo v0, "shuffleMusic"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1182
    const-string/jumbo v0, "playOrderReversed"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1183
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRepeatMode(I)V
    .locals 2

    .line 1187
    sput p0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 1189
    sput p0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    .line 1191
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1192
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1193
    const-string/jumbo v0, "repeatMode"

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1194
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSearchEngineType(I)V
    .locals 2

    .line 1243
    sput p0, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    .line 1244
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1245
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1246
    const-string/jumbo v0, "searchEngineType"

    sget v1, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1247
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSearchMessagesAsListUsed(Z)V
    .locals 2

    .line 925
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    .line 926
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 927
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 928
    const-string/jumbo v0, "searchMessagesAsListUsed"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->searchMessagesAsListUsed:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 929
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSecretMapPreviewType(I)V
    .locals 2

    .line 1235
    sput p0, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    .line 1236
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1237
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1238
    const-string/jumbo v0, "mapPreviewType"

    sget v1, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1239
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStickersReorderingHintUsed(Z)V
    .locals 2

    .line 933
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    .line 934
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 935
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 936
    const-string/jumbo v0, "stickersReorderingHintUsed"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 937
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStoriesColumnsCount(I)V
    .locals 2

    .line 1761
    sget v0, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    if-eq v0, p0, :cond_0

    .line 1762
    sput p0, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    .line 1763
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "storiesColumnsCount"

    sget v1, Lorg/telegram/messenger/SharedConfig;->storiesColumnsCount:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setStoriesIntroShown(Z)V
    .locals 2

    .line 949
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    .line 950
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 951
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 952
    const-string/jumbo v0, "storiesIntroShown"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->storiesIntroShown:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 953
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStoriesReactionsLongPressHintUsed(Z)V
    .locals 2

    .line 941
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    .line 942
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 943
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 944
    const-string/jumbo v0, "storyReactionsLongPressHint"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->storyReactionsLongPressHint:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 945
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSuggestStickers(I)V
    .locals 2

    .line 917
    sput p0, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    .line 918
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 919
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 920
    const-string/jumbo v0, "suggestStickers"

    sget v1, Lorg/telegram/messenger/SharedConfig;->suggestStickers:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 921
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUseThreeLinesLayout(Z)V
    .locals 4

    .line 1209
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    .line 1210
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1211
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1212
    const-string/jumbo v0, "useThreeLinesLayout"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1213
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1214
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static toggleArchiveHidden()V
    .locals 3

    .line 1218
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    .line 1219
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1220
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1221
    const-string v1, "archiveHidden"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleAutoplayGifs()V
    .locals 1

    const/16 v0, 0x800

    .line 1205
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleAutoplayVideo()V
    .locals 1

    const/16 v0, 0x400

    .line 1226
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleBigEmoji()V
    .locals 3

    .line 1119
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    .line 1120
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1121
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1122
    const-string v1, "allowBigEmoji"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->allowBigEmoji:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleBrowserAdaptableColors()V
    .locals 3

    .line 1306
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    .line 1307
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1308
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1309
    const-string v1, "adaptableBrowser"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleChatBlur()V
    .locals 1

    const/16 v0, 0x100

    .line 1404
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleCustomTabs(Z)V
    .locals 2

    .line 1290
    sput-boolean p0, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    .line 1291
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1292
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1293
    const-string v0, "custom_tabs"

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1294
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleDebugVideoQualities()V
    .locals 3

    .line 1314
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    .line 1315
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1316
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1317
    const-string v1, "debugVideoQualities"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleDebugWebView()V
    .locals 3

    .line 1098
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    .line 1099
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1100
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1102
    const-string v1, "debugWebView"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleDirectShare()V
    .locals 3

    .line 1330
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    .line 1331
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1332
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1333
    const-string v1, "direct_share"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1335
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeAllDynamicShortcuts(Landroid/content/Context;)V

    .line 1336
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->buildShortcuts()V

    return-void
.end method

.method public static toggleDisableVoiceAudioEffects()V
    .locals 3

    .line 1082
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    .line 1083
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1085
    const-string v1, "disableVoiceAudioEffects"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1086
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleFastWallpaperDisabled()V
    .locals 3

    .line 1144
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->fastWallpaperDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->fastWallpaperDisabled:Z

    .line 1145
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1147
    const-string v1, "fastWallpaperDisabled"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->fastWallpaperDisabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleForceDisableTabletMode()V
    .locals 3

    .line 1408
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    .line 1409
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1410
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1411
    const-string v1, "forceDisableTabletMode"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleForceForumTabs()V
    .locals 3

    .line 1136
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceForumTabs:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->forceForumTabs:Z

    .line 1137
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1139
    const-string v1, "forceForumTabs"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->forceForumTabs:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleFrameMetricsEnabled()V
    .locals 3

    .line 1152
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->frameMetricsEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->frameMetricsEnabled:Z

    .line 1153
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1154
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1155
    const-string v1, "frameMetricsEnabled"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->frameMetricsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleInappBrowser()V
    .locals 3

    .line 1298
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    .line 1299
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1300
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1301
    const-string v1, "inapp_browser"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleInappCamera()V
    .locals 3

    .line 1416
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->inAppCamera:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->inAppCamera:Z

    .line 1417
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1418
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1419
    const-string v1, "inappCamera"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->inAppCamera:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleLocalInstantView()V
    .locals 3

    .line 1322
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    .line 1323
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1324
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1325
    const-string/jumbo v1, "onlyLocalInstantView"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->onlyLocalInstantView:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleLoopStickers()V
    .locals 1

    const/4 v0, 0x2

    .line 1115
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(I)V

    return-void
.end method

.method public static toggleNextMediaTap()V
    .locals 3

    .line 1278
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    .line 1279
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1280
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1281
    const-string/jumbo v1, "next_media_on_tap"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleNoiseSupression()V
    .locals 3

    .line 1090
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    .line 1091
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1092
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1093
    const-string/jumbo v1, "noiseSupression"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1094
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static togglePauseMusicOnMedia()V
    .locals 3

    .line 1396
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    .line 1397
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1398
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1399
    const-string/jumbo v1, "pauseMusicOnMedia"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static togglePauseMusicOnRecord()V
    .locals 3

    .line 1388
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    .line 1389
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1390
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1391
    const-string/jumbo v1, "pauseMusicOnRecord"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static togglePaymentByInvoice()V
    .locals 3

    .line 141
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    .line 142
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "payByInvoice"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    .line 144
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static togglePhotoViewerBlur()V
    .locals 3

    .line 157
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    .line 158
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "photoViewerBlur"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    .line 160
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRaiseToListen()V
    .locals 3

    .line 1270
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    .line 1271
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1272
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1273
    const-string/jumbo v1, "raise_to_listen"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRaiseToSpeak()V
    .locals 3

    .line 1262
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    .line 1263
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1264
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1265
    const-string/jumbo v1, "raise_to_speak"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRoundCamera()V
    .locals 3

    .line 1836
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    .line 1837
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1838
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bigCameraForRound"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    .line 1839
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleRoundCamera16to9()V
    .locals 3

    .line 1424
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    .line 1425
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1426
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1427
    const-string/jumbo v1, "roundCamera16to9"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->roundCamera16to9:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSaveStreamMedia()V
    .locals 3

    .line 1380
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    .line 1381
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1382
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1383
    const-string/jumbo v1, "saveStreamMedia"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSortContactsByName()V
    .locals 3

    .line 1348
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    .line 1349
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1350
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1351
    const-string/jumbo v1, "sortContactsByName"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSortFilesByName()V
    .locals 3

    .line 1356
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    .line 1357
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1358
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1359
    const-string/jumbo v1, "sortFilesByName"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleStreamAllVideo()V
    .locals 3

    .line 1364
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    .line 1365
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1366
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1367
    const-string/jumbo v1, "streamAllVideo"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleStreamMedia()V
    .locals 3

    .line 1340
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    .line 1341
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1342
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1343
    const-string/jumbo v1, "streamMedia"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleStreamMkv()V
    .locals 3

    .line 1372
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    .line 1373
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1374
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1375
    const-string/jumbo v1, "streamMkv"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSuggestAnimatedEmoji()V
    .locals 3

    .line 1160
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    .line 1161
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1162
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1163
    const-string/jumbo v1, "suggestAnimatedEmoji"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->suggestAnimatedEmoji:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleSurfaceInStories()V
    .locals 3

    .line 149
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    .line 150
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "useSurfaceInStories"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    .line 152
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleUpdateStickersOrderOnSend()V
    .locals 3

    .line 1048
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1049
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1050
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    const-string/jumbo v2, "updateStickersOrderOnSend"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1051
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleUseCamera2(I)V
    .locals 3

    .line 1856
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1857
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1858
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->isUsingCamera2(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/SharedConfig;->useCamera2Force:Ljava/lang/Boolean;

    const-string/jumbo v1, "useCamera2Force_2"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1859
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleUseNewBlur()V
    .locals 3

    .line 1844
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    .line 1845
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1846
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "useNewBlur"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    .line 1847
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1848
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleUseSystemBoldFont()V
    .locals 3

    .line 1127
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemBoldFont:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemBoldFont:Z

    const/4 v0, 0x0

    .line 1128
    sput-object v0, Lorg/telegram/messenger/AndroidUtilities;->mediumTypeface:Landroid/graphics/Typeface;

    .line 1129
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1130
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1131
    const-string/jumbo v1, "useSystemBoldFont"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSystemBoldFont:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static toggleUseSystemEmoji()V
    .locals 3

    .line 509
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    .line 510
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 512
    const-string/jumbo v1, "useSystemEmoji"

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateChatListSwipeSetting(I)V
    .locals 2

    .line 1628
    sput p0, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    .line 1629
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1630
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ChatSwipeAction"

    sget v1, Lorg/telegram/messenger/SharedConfig;->chatSwipeAction:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateDayNightThemeSwitchHintCount(I)V
    .locals 2

    .line 1646
    sput p0, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 1647
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1648
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "dayNightThemeSwitchHintCount"

    sget v1, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateEmojiInteractionsHintCount(I)V
    .locals 2

    .line 1640
    sput p0, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 1641
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1642
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "emojiInteractionsHintCount"

    sget v1, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateMessageSeenHintCount(I)V
    .locals 2

    .line 1634
    sput p0, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 1635
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1636
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "messageSeenCount"

    sget v1, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateStealthModeSendMessageConfirm(I)V
    .locals 2

    .line 1652
    sput p0, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 1653
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "mainconfig"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1654
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "stealthModeSendMessageConfirm"

    sget v1, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateTabletConfig()V
    .locals 3

    .line 715
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    if-eqz v0, :cond_1

    .line 716
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 717
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    const-string v2, "fons_size"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    .line 718
    const-string/jumbo v2, "iv_font_size"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    :cond_1
    return-void
.end method

.method public static versionBiggerOrEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 829
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 830
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 831
    :goto_0
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 832
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 833
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v2, v4, :cond_0

    return v0

    :cond_0
    if-le v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
