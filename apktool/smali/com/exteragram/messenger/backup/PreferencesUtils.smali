.class public Lcom/exteragram/messenger/backup/PreferencesUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;
    }
.end annotation


# static fields
.field private static final configs:[Ljava/lang/String;

.field private static instance:Lcom/exteragram/messenger/backup/PreferencesUtils;


# instance fields
.field private final backup:[Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    const-string/jumbo v0, "mainconfig"

    const-string/jumbo v1, "pillstackconfig"

    const-string v2, "exteraconfig"

    const-string v3, "gptconfig"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->configs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 146

    move-object/from16 v0, p0

    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iput-object v1, v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->gson:Lcom/google/gson/Gson;

    .line 72
    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v2, "addCommaAfterMention"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v3, "alwaysSendInHD"

    invoke-direct {v2, v3}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v4, "archiveOnPull"

    invoke-direct {v3, v4}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v5, "avatarCorners"

    const-class v6, Ljava/lang/Float;

    invoke-direct {v4, v5, v6}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v5, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v7, "bottomButton"

    invoke-direct {v5, v7}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v8, "bottomNavigationBarMode"

    invoke-direct {v7, v8}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v9, "cameraMirrorMode"

    invoke-direct {v8, v9}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v10, "cameraStabilization"

    invoke-direct {v9, v10}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v11, "cameraType"

    invoke-direct {v10, v11}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v12, "centerTitle"

    invoke-direct {v11, v12}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v13, "channelToSave"

    const-class v14, Ljava/lang/Long;

    invoke-direct {v12, v13, v14}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v13, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v14, "checkUpdatesOnLaunch"

    invoke-direct {v13, v14}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string v15, "customThemes"

    invoke-direct {v14, v15}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v16, v1

    const-string v1, "disableDividers"

    invoke-direct {v15, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v17, v2

    const-string v2, "disableGreetingSticker"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v18, v1

    const-string v1, "disableNumberRounding"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v19, v2

    const-string v2, "disableUnarchiveSwipe"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v20, v1

    const-string v1, "doubleTapAction"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v21, v2

    const-string v2, "doubleTapActionOutOwner"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v22, v1

    const-string v1, "doubleTapSeekDuration"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v23, v2

    const-string v2, "downloadSpeedBoost"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v24, v1

    const-string v1, "eventType"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v25, v2

    const-string v2, "extendedFramesPerSecond"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v26, v1

    const-string v1, "filterZalgo"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v27, v2

    const-string v2, "flashIntensity"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v28, v1

    const-string v1, "flashWarmth"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v29, v2

    const-string v2, "forceBlur"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v30, v1

    const-string v1, "forceSnow"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v31, v2

    const-string v2, "formatTimeWithSeconds"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v32, v1

    const-string v1, "glareOnElements"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v33, v2

    const-string v2, "gooeyAvatarAnimation"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v34, v1

    const-string v1, "groupMessageMenu"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v35, v2

    const-string v2, "hideActionBarStatus"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v36, v1

    const-string v1, "hideAllChats"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v37, v2

    const-string v2, "hideArchiveFolder"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v38, v1

    const-string v1, "hideCameraTile"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v39, v2

    const-string v2, "hideFloatingButton"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v40, v1

    const-string v1, "hideKeyboardOnScroll"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v41, v2

    const-string v2, "hidePhoneNumber"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v42, v1

    const-string v1, "hidePhotoCounter"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v43, v2

    const-string v2, "hideReactionsInChannels"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v44, v1

    const-string v1, "hideReactionsInGroups"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v45, v2

    const-string v2, "hideReactionsInPrivateChats"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v46, v1

    const-string v1, "hideSendAsPeer"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v47, v2

    const-string v2, "hideShareButton"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v48, v1

    const-string v1, "hideStickerTime"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v49, v2

    const-string v2, "hideStories"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v50, v1

    const-string v1, "iconPack"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v51, v2

    const-string v2, "immersiveDrawerAnimation"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v52, v1

    const-string v1, "inAppVibration"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v53, v2

    const-string/jumbo v2, "mainMenuHiddenItems"

    move-object/from16 v54, v3

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v55, v1

    const-string/jumbo v1, "mainMenuLayout"

    invoke-direct {v2, v1, v3}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v56, v2

    const-string/jumbo v2, "navigationDrawer"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v57, v1

    const-string/jumbo v1, "newLoadingStyle"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v58, v2

    const-string/jumbo v2, "newSliderStyle"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v59, v1

    const-string/jumbo v1, "newSwitchStyle"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v60, v2

    const-string/jumbo v2, "pauseOnMinimizeRound"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v61, v1

    const-string/jumbo v1, "pauseOnMinimizeVideo"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v62, v2

    const-string/jumbo v2, "pauseOnMinimizeVoice"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v63, v1

    const-string/jumbo v1, "pinnedPlugins"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v64, v2

    const-string/jumbo v2, "pluginsCompactView"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v65, v1

    const-string/jumbo v1, "pluginsDevMode"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v66, v2

    const-string/jumbo v2, "pluginsDisableArtOpts"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v67, v1

    const-string/jumbo v1, "pluginsEngine"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v68, v2

    const-string/jumbo v2, "pluginsPySdkAutoUpdate"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v69, v1

    const-string/jumbo v1, "pluginsPySdkBetaVersions"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v70, v2

    const-string/jumbo v2, "postprocessingWithAi"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v71, v1

    const-string/jumbo v1, "predictiveBackAnimation"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v72, v2

    const-string/jumbo v2, "preferOriginalQuality"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v73, v1

    const-string/jumbo v1, "quickAdminShortcuts"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v74, v2

    const-string/jumbo v2, "quickTransitionForChannels"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v75, v1

    const-string/jumbo v1, "quickTransitionForTopics"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v76, v2

    const-string/jumbo v2, "rememberLastUsedCamera"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v77, v1

    const-string/jumbo v1, "removeMessageTail"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v78, v2

    const-string/jumbo v2, "replaceEditedWithIcon"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v79, v1

    const-string/jumbo v1, "replyBackground"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v80, v2

    const-string/jumbo v2, "replyColors"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v81, v1

    const-string/jumbo v1, "replyEmoji"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v82, v2

    const-string/jumbo v2, "sectionsSeparatedHeaders"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v83, v1

    const-string/jumbo v1, "senderMiniAvatars"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v84, v2

    const-string/jumbo v2, "showClearButton"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v85, v1

    const-string/jumbo v1, "showCopyPhotoButton"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v86, v2

    const-string/jumbo v2, "showDetailsButton"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v87, v1

    const-string/jumbo v1, "showGenerateButton"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v88, v2

    const-string/jumbo v2, "showHistoryButton"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v89, v1

    const-string/jumbo v1, "showIdAndDc"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v90, v2

    const-string/jumbo v2, "showOnlineStatus"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v91, v1

    const-string/jumbo v1, "showRepeatMessageButton"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v92, v2

    const-string/jumbo v2, "showReportButton"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v93, v1

    const-string/jumbo v1, "showResultsBeforeVoting"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v94, v2

    const-string/jumbo v2, "showSaveMessageButton"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v95, v1

    const-string/jumbo v1, "singleCornerRadius"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v96, v2

    const-string/jumbo v2, "springAnimations"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v97, v1

    const-string/jumbo v1, "squareFab"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v98, v2

    const-string/jumbo v2, "staticZoom"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v99, v1

    const-string/jumbo v1, "stickerShape"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v100, v2

    const-string/jumbo v2, "stickerSize"

    invoke-direct {v1, v2, v6}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string/jumbo v6, "swipeToPip"

    invoke-direct {v2, v6}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v101, v1

    const-string/jumbo v1, "tabCounter"

    invoke-direct {v6, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v102, v2

    const-string/jumbo v2, "tabIcons"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v103, v1

    const-string/jumbo v1, "tabletMode"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v104, v2

    const-string/jumbo v2, "targetLang"

    invoke-direct {v1, v2, v3}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v105, v1

    const-string/jumbo v1, "titleText"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v106, v2

    const-string/jumbo v2, "translationFormality"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v107, v1

    const-string/jumbo v1, "translationProvider"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v108, v2

    const-string/jumbo v2, "unlimitedRecentStickers"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v109, v1

    const-string/jumbo v1, "unmuteWithVolumeButtons"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v110, v2

    const-string/jumbo v2, "uploadSpeedBoost"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v111, v1

    const-string/jumbo v1, "useGoogleAnalytics"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v112, v2

    const-string/jumbo v2, "useGoogleCrashlytics"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v113, v1

    const-string/jumbo v1, "useSystemFonts"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v114, v2

    const-string/jumbo v2, "useSystemIconShape"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v115, v1

    const-string/jumbo v1, "useYandexMaps"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v116, v2

    const-string/jumbo v2, "videoMessagesCamera"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v117, v1

    const-string/jumbo v1, "voiceHintShowcases"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v118, v2

    const-string v2, "btcTargetCurrency"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v119, v1

    const-string v1, "infiniteScrolling"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v120, v2

    const-string/jumbo v2, "tonTargetCurrency"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v121, v1

    const-string/jumbo v1, "usdTargetCurrency"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v122, v2

    const-string/jumbo v2, "useCurrentLocation"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v123, v1

    const-string v1, "insertAsQuote"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v124, v2

    const-string/jumbo v2, "responseStreaming"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v125, v1

    const-string/jumbo v1, "roles"

    invoke-direct {v2, v1, v3}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v126, v2

    const-string/jumbo v2, "saveHistory"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v127, v1

    const-string/jumbo v1, "selectedRole"

    invoke-direct {v2, v1, v3}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const-string/jumbo v3, "showResponseOnly"

    invoke-direct {v1, v3}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v128, v1

    const-string v1, "ChatSwipeAction"

    invoke-direct {v3, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v129, v2

    const-string v2, "allowBigEmoji"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v130, v1

    const-string v1, "archiveHidden"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v131, v2

    const-string v2, "bubbleRadius"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v132, v1

    const-string v1, "font_size"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v133, v2

    const-string/jumbo v2, "mediaColumnsCount"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v134, v1

    const-string/jumbo v1, "next_media_on_tap"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v135, v2

    const-string/jumbo v2, "pauseMusicOnMedia"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v136, v1

    const-string/jumbo v1, "pauseMusicOnRecord"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v137, v2

    const-string/jumbo v2, "raise_to_listen"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v138, v1

    const-string/jumbo v1, "raise_to_speak"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v139, v2

    const-string/jumbo v2, "record_via_sco"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v140, v1

    const-string/jumbo v1, "rounddual_available"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v141, v2

    const-string/jumbo v2, "suggestAnimatedEmoji"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v142, v1

    const-string/jumbo v1, "suggestStickers"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v143, v2

    const-string/jumbo v2, "useSystemEmoji"

    invoke-direct {v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    move-object/from16 v144, v1

    const-string/jumbo v1, "useThreeLinesLayout"

    invoke-direct {v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8f

    new-array v1, v1, [Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    const/16 v145, 0x0

    aput-object v16, v1, v145

    const/16 v16, 0x1

    aput-object v17, v1, v16

    const/16 v16, 0x2

    aput-object v54, v1, v16

    const/16 v16, 0x3

    aput-object v4, v1, v16

    const/4 v4, 0x4

    aput-object v5, v1, v4

    const/4 v4, 0x5

    aput-object v7, v1, v4

    const/4 v4, 0x6

    aput-object v8, v1, v4

    const/4 v4, 0x7

    aput-object v9, v1, v4

    const/16 v4, 0x8

    aput-object v10, v1, v4

    const/16 v4, 0x9

    aput-object v11, v1, v4

    const/16 v4, 0xa

    aput-object v12, v1, v4

    const/16 v4, 0xb

    aput-object v13, v1, v4

    const/16 v4, 0xc

    aput-object v14, v1, v4

    const/16 v4, 0xd

    aput-object v15, v1, v4

    const/16 v4, 0xe

    aput-object v18, v1, v4

    const/16 v4, 0xf

    aput-object v19, v1, v4

    const/16 v4, 0x10

    aput-object v20, v1, v4

    const/16 v4, 0x11

    aput-object v21, v1, v4

    const/16 v4, 0x12

    aput-object v22, v1, v4

    const/16 v4, 0x13

    aput-object v23, v1, v4

    const/16 v4, 0x14

    aput-object v24, v1, v4

    const/16 v4, 0x15

    aput-object v25, v1, v4

    const/16 v4, 0x16

    aput-object v26, v1, v4

    const/16 v4, 0x17

    aput-object v27, v1, v4

    const/16 v4, 0x18

    aput-object v28, v1, v4

    const/16 v4, 0x19

    aput-object v29, v1, v4

    const/16 v4, 0x1a

    aput-object v30, v1, v4

    const/16 v4, 0x1b

    aput-object v31, v1, v4

    const/16 v4, 0x1c

    aput-object v32, v1, v4

    const/16 v4, 0x1d

    aput-object v33, v1, v4

    const/16 v4, 0x1e

    aput-object v34, v1, v4

    const/16 v4, 0x1f

    aput-object v35, v1, v4

    const/16 v4, 0x20

    aput-object v36, v1, v4

    const/16 v4, 0x21

    aput-object v37, v1, v4

    const/16 v4, 0x22

    aput-object v38, v1, v4

    const/16 v4, 0x23

    aput-object v39, v1, v4

    const/16 v4, 0x24

    aput-object v40, v1, v4

    const/16 v4, 0x25

    aput-object v41, v1, v4

    const/16 v4, 0x26

    aput-object v42, v1, v4

    const/16 v4, 0x27

    aput-object v43, v1, v4

    const/16 v4, 0x28

    aput-object v44, v1, v4

    const/16 v4, 0x29

    aput-object v45, v1, v4

    const/16 v4, 0x2a

    aput-object v46, v1, v4

    const/16 v4, 0x2b

    aput-object v47, v1, v4

    const/16 v4, 0x2c

    aput-object v48, v1, v4

    const/16 v4, 0x2d

    aput-object v49, v1, v4

    const/16 v4, 0x2e

    aput-object v50, v1, v4

    const/16 v4, 0x2f

    aput-object v51, v1, v4

    const/16 v4, 0x30

    aput-object v52, v1, v4

    const/16 v4, 0x31

    aput-object v53, v1, v4

    const/16 v4, 0x32

    aput-object v55, v1, v4

    const/16 v4, 0x33

    aput-object v56, v1, v4

    const/16 v4, 0x34

    aput-object v57, v1, v4

    const/16 v4, 0x35

    aput-object v58, v1, v4

    const/16 v4, 0x36

    aput-object v59, v1, v4

    const/16 v4, 0x37

    aput-object v60, v1, v4

    const/16 v4, 0x38

    aput-object v61, v1, v4

    const/16 v4, 0x39

    aput-object v62, v1, v4

    const/16 v4, 0x3a

    aput-object v63, v1, v4

    const/16 v4, 0x3b

    aput-object v64, v1, v4

    const/16 v4, 0x3c

    aput-object v65, v1, v4

    const/16 v4, 0x3d

    aput-object v66, v1, v4

    const/16 v4, 0x3e

    aput-object v67, v1, v4

    const/16 v4, 0x3f

    aput-object v68, v1, v4

    const/16 v4, 0x40

    aput-object v69, v1, v4

    const/16 v4, 0x41

    aput-object v70, v1, v4

    const/16 v4, 0x42

    aput-object v71, v1, v4

    const/16 v4, 0x43

    aput-object v72, v1, v4

    const/16 v4, 0x44

    aput-object v73, v1, v4

    const/16 v4, 0x45

    aput-object v74, v1, v4

    const/16 v4, 0x46

    aput-object v75, v1, v4

    const/16 v4, 0x47

    aput-object v76, v1, v4

    const/16 v4, 0x48

    aput-object v77, v1, v4

    const/16 v4, 0x49

    aput-object v78, v1, v4

    const/16 v4, 0x4a

    aput-object v79, v1, v4

    const/16 v4, 0x4b

    aput-object v80, v1, v4

    const/16 v4, 0x4c

    aput-object v81, v1, v4

    const/16 v4, 0x4d

    aput-object v82, v1, v4

    const/16 v4, 0x4e

    aput-object v83, v1, v4

    const/16 v4, 0x4f

    aput-object v84, v1, v4

    const/16 v4, 0x50

    aput-object v85, v1, v4

    const/16 v4, 0x51

    aput-object v86, v1, v4

    const/16 v4, 0x52

    aput-object v87, v1, v4

    const/16 v4, 0x53

    aput-object v88, v1, v4

    const/16 v4, 0x54

    aput-object v89, v1, v4

    const/16 v4, 0x55

    aput-object v90, v1, v4

    const/16 v4, 0x56

    aput-object v91, v1, v4

    const/16 v4, 0x57

    aput-object v92, v1, v4

    const/16 v4, 0x58

    aput-object v93, v1, v4

    const/16 v4, 0x59

    aput-object v94, v1, v4

    const/16 v4, 0x5a

    aput-object v95, v1, v4

    const/16 v4, 0x5b

    aput-object v96, v1, v4

    const/16 v4, 0x5c

    aput-object v97, v1, v4

    const/16 v4, 0x5d

    aput-object v98, v1, v4

    const/16 v4, 0x5e

    aput-object v99, v1, v4

    const/16 v4, 0x5f

    aput-object v100, v1, v4

    const/16 v4, 0x60

    aput-object v101, v1, v4

    const/16 v4, 0x61

    aput-object v102, v1, v4

    const/16 v4, 0x62

    aput-object v6, v1, v4

    const/16 v4, 0x63

    aput-object v103, v1, v4

    const/16 v4, 0x64

    aput-object v104, v1, v4

    const/16 v4, 0x65

    aput-object v105, v1, v4

    const/16 v4, 0x66

    aput-object v106, v1, v4

    const/16 v4, 0x67

    aput-object v107, v1, v4

    const/16 v4, 0x68

    aput-object v108, v1, v4

    const/16 v4, 0x69

    aput-object v109, v1, v4

    const/16 v4, 0x6a

    aput-object v110, v1, v4

    const/16 v4, 0x6b

    aput-object v111, v1, v4

    const/16 v4, 0x6c

    aput-object v112, v1, v4

    const/16 v4, 0x6d

    aput-object v113, v1, v4

    const/16 v4, 0x6e

    aput-object v114, v1, v4

    const/16 v4, 0x6f

    aput-object v115, v1, v4

    const/16 v4, 0x70

    aput-object v116, v1, v4

    const/16 v4, 0x71

    aput-object v117, v1, v4

    const/16 v4, 0x72

    aput-object v118, v1, v4

    const/16 v4, 0x73

    aput-object v119, v1, v4

    const/16 v4, 0x74

    aput-object v120, v1, v4

    const/16 v4, 0x75

    aput-object v121, v1, v4

    const/16 v4, 0x76

    aput-object v122, v1, v4

    const/16 v4, 0x77

    aput-object v123, v1, v4

    const/16 v4, 0x78

    aput-object v124, v1, v4

    const/16 v4, 0x79

    aput-object v125, v1, v4

    const/16 v4, 0x7a

    aput-object v126, v1, v4

    const/16 v4, 0x7b

    aput-object v127, v1, v4

    const/16 v4, 0x7c

    aput-object v129, v1, v4

    const/16 v4, 0x7d

    aput-object v128, v1, v4

    const/16 v4, 0x7e

    aput-object v3, v1, v4

    const/16 v3, 0x7f

    aput-object v130, v1, v3

    const/16 v3, 0x80

    aput-object v131, v1, v3

    const/16 v3, 0x81

    aput-object v132, v1, v3

    const/16 v3, 0x82

    aput-object v133, v1, v3

    const/16 v3, 0x83

    aput-object v134, v1, v3

    const/16 v3, 0x84

    aput-object v135, v1, v3

    const/16 v3, 0x85

    aput-object v136, v1, v3

    const/16 v3, 0x86

    aput-object v137, v1, v3

    const/16 v3, 0x87

    aput-object v138, v1, v3

    const/16 v3, 0x88

    aput-object v139, v1, v3

    const/16 v3, 0x89

    aput-object v140, v1, v3

    const/16 v3, 0x8a

    aput-object v141, v1, v3

    const/16 v3, 0x8b

    aput-object v142, v1, v3

    const/16 v3, 0x8c

    aput-object v143, v1, v3

    const/16 v3, 0x8d

    aput-object v144, v1, v3

    const/16 v3, 0x8e

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->backup:[Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    return-void
.end method

.method private checkKeys(Lcom/google/gson/JsonObject;)Z
    .locals 10

    .line 482
    sget-object v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->configs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 483
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 484
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 485
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 486
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 487
    invoke-direct {p0, v6, v7}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isExceptedValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 p1, 0x1

    return p1

    .line 490
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static clearPreferences()V
    .locals 1

    .line 233
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->reloadConfig()V

    return-void
.end method

.method public static generateBackupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "backup"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x4

    .line 251
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->generateRandomString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".extera"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 239
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    return-object v0

    .line 242
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/exteragram/messenger/backup/PreferencesUtils;
    .locals 1

    .line 226
    sget-object v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->instance:Lcom/exteragram/messenger/backup/PreferencesUtils;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/exteragram/messenger/backup/PreferencesUtils;

    invoke-direct {v0}, Lcom/exteragram/messenger/backup/PreferencesUtils;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->instance:Lcom/exteragram/messenger/backup/PreferencesUtils;

    .line 229
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->instance:Lcom/exteragram/messenger/backup/PreferencesUtils;

    return-object v0
.end method

.method public static getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .line 246
    invoke-static {}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private importConfig(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 10

    .line 422
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 423
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 424
    invoke-static {p2}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 425
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 426
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 427
    invoke-direct {p0, v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isExceptedValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/exteragram/messenger/backup/PreferencesUtils;->backup:[Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 429
    iget-object v7, v6, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->key:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    instance-of v7, v2, Lcom/google/gson/JsonPrimitive;

    if-eqz v7, :cond_5

    move-object v7, v2

    check-cast v7, Lcom/google/gson/JsonPrimitive;

    .line 430
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 431
    iget-object v8, v6, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->clazz:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 432
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->getAsFloat()F

    move-result v6

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 433
    :cond_1
    iget-object v6, v6, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->clazz:Ljava/lang/Class;

    const-class v8, Ljava/lang/Long;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v6

    invoke-interface {p2, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 436
    :cond_2
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v6

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 438
    :cond_3
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 439
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v6

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 440
    :cond_4
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 441
    invoke-virtual {v7}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 447
    :cond_6
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    return-void
.end method

.method private isExceptedFloat(Ljava/lang/String;F)Z
    .locals 4

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "stickerSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "flashWarmth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "flashIntensity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "avatarCorners"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    const/4 p1, 0x0

    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    const/high16 p1, 0x40800000    # 4.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_4

    const/high16 p1, 0x41a00000    # 20.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_4

    return v1

    :cond_4
    return v2

    :pswitch_1
    cmpl-float p1, p2, p1

    if-ltz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_5

    return v1

    :cond_5
    return v2

    :pswitch_2
    cmpl-float p1, p2, p1

    if-ltz p1, :cond_6

    const/high16 p1, 0x41e00000    # 28.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_6

    return v1

    :cond_6
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x13d02925 -> :sswitch_3
        0x3dbc3623 -> :sswitch_2
        0x51ba3bc9 -> :sswitch_1
        0x5f2b76de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isExceptedInteger(Ljava/lang/String;I)Z
    .locals 12

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x11

    const/16 v2, 0xc

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "showIdAndDc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v11, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "bottomButton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v11, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "translationProvider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v11, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "doubleTapSeekDuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v11, 0x12

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "translationFormality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    move v11, v1

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "bottomNavigationBarMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v11, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "doubleTapActionOutOwner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v11, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "eventType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v11, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "voiceHintShowcases"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v11, 0xd

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "iconPack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    move v11, v2

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "doubleTapAction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v11, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "tabIcons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v11, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "videoMessagesCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    move v11, v3

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "tabletMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    move v11, v4

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "font_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v11, 0x7

    goto :goto_0

    :sswitch_f
    const-string v0, "downloadSpeedBoost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v11, 0x6

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "mediaColumnsCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    move v11, v5

    goto :goto_0

    :sswitch_11
    const-string v0, "ChatSwipeAction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    move v11, v6

    goto :goto_0

    :sswitch_12
    const-string v0, "bubbleRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    move v11, v7

    goto :goto_0

    :sswitch_13
    const-string v0, "cameraType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    move v11, v8

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "stickerShape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    move v11, v9

    goto :goto_0

    :sswitch_15
    const-string/jumbo v0, "titleText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    move v11, v10

    :goto_0
    packed-switch v11, :pswitch_data_0

    return v10

    :pswitch_0
    if-ltz p2, :cond_16

    if-gt p2, v6, :cond_16

    return v9

    :cond_16
    return v10

    :pswitch_1
    return v9

    :pswitch_2
    if-ltz p2, :cond_17

    if-gt p2, v4, :cond_17

    return v9

    :cond_17
    return v10

    :pswitch_3
    if-lt p2, v2, :cond_18

    const/16 p1, 0x1e

    if-gt p2, p1, :cond_18

    return v9

    :cond_18
    return v10

    :pswitch_4
    if-lt p2, v8, :cond_19

    if-gt p2, v3, :cond_19

    return v9

    :cond_19
    return v10

    :pswitch_5
    if-ltz p2, :cond_1a

    if-gt p2, v5, :cond_1a

    return v9

    :cond_1a
    return v10

    :pswitch_6
    if-ltz p2, :cond_1b

    if-gt p2, v1, :cond_1b

    return v9

    :cond_1b
    return v10

    :pswitch_7
    if-ltz p2, :cond_1c

    if-gt p2, v8, :cond_1c

    return v9

    :cond_1c
    return v10

    :pswitch_8
    if-ltz p2, :cond_1d

    if-gt p2, v7, :cond_1d

    return v9

    :cond_1d
    return v10

    :sswitch_data_0
    .sparse-switch
        -0x7f4d105b -> :sswitch_15
        -0x79bd6b9c -> :sswitch_14
        -0x77ee5401 -> :sswitch_13
        -0x77e18bc2 -> :sswitch_12
        -0x730c6488 -> :sswitch_11
        -0x68f3c6ca -> :sswitch_10
        -0x63591dbc -> :sswitch_f
        -0x5bc91a0f -> :sswitch_e
        -0x5895b6d7 -> :sswitch_d
        -0x4d278b14 -> :sswitch_c
        -0x374ce77b -> :sswitch_b
        -0x35b2fd18 -> :sswitch_a
        -0x2bfdd1ce -> :sswitch_9
        -0x1b79a073 -> :sswitch_8
        0x1df98f4 -> :sswitch_7
        0x1a68b30d -> :sswitch_6
        0x263d98b7 -> :sswitch_5
        0x26f68aae -> :sswitch_4
        0x2dba3f5e -> :sswitch_3
        0x36871bc2 -> :sswitch_2
        0x6965213d -> :sswitch_1
        0x77fd3a9e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private isExceptedValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 257
    iget-object v4, v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->backup:[Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_12

    aget-object v7, v4, v6

    .line 258
    iget-object v8, v7, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->key:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 259
    instance-of v8, v2, Lcom/google/gson/JsonPrimitive;

    const-string v9, "^[a-zA-Z]{1,3}(-[a-zA-Z]{1,3})?$"

    const-string v10, "app"

    const-string/jumbo v11, "targetLang"

    const-wide/16 v12, 0x0

    const-string v14, "channelToSave"

    const/4 v15, 0x1

    if-eqz v8, :cond_8

    move-object v8, v2

    check-cast v8, Lcom/google/gson/JsonPrimitive;

    .line 260
    invoke-virtual {v8}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 261
    iget-object v9, v7, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->clazz:Ljava/lang/Class;

    const-class v10, Ljava/lang/Float;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 262
    invoke-virtual {v8}, Lcom/google/gson/JsonPrimitive;->getAsFloat()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isExceptedFloat(Ljava/lang/String;F)Z

    move-result v1

    return v1

    .line 263
    :cond_0
    iget-object v7, v7, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->clazz:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    invoke-virtual {v8}, Lcom/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v7

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    cmp-long v1, v7, v12

    if-lez v1, :cond_1

    return v15

    :cond_1
    return v3

    .line 269
    :cond_2
    invoke-virtual {v8}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isExceptedInteger(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 271
    :cond_3
    invoke-virtual {v8}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v12

    if-eqz v12, :cond_4

    return v15

    .line 273
    :cond_4
    invoke-virtual {v8}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v7, v7, Lcom/exteragram/messenger/backup/PreferencesUtils$BackupItem;->clazz:Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 274
    invoke-virtual {v8}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v15

    .line 278
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v15

    return v1

    .line 280
    :cond_8
    instance-of v7, v2, Ljava/lang/Float;

    if-eqz v7, :cond_9

    check-cast v2, Ljava/lang/Float;

    .line 281
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isExceptedFloat(Ljava/lang/String;F)Z

    move-result v1

    return v1

    .line 282
    :cond_9
    instance-of v7, v2, Ljava/lang/Long;

    if-eqz v7, :cond_b

    move-object v7, v2

    check-cast v7, Ljava/lang/Long;

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 284
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v12

    if-lez v1, :cond_a

    return v15

    :cond_a
    return v3

    .line 286
    :cond_b
    instance-of v7, v2, Ljava/lang/Integer;

    if-eqz v7, :cond_c

    check-cast v2, Ljava/lang/Integer;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isExceptedInteger(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 288
    :cond_c
    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_10

    check-cast v2, Ljava/lang/String;

    .line 289
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 290
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_2

    :cond_d
    return v3

    :cond_e
    :goto_2
    return v15

    .line 292
    :cond_f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v15

    return v1

    .line 293
    :cond_10
    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_11

    return v15

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_12
    return v3
.end method

.method private readAndDecryptFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 465
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 466
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 471
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-static {p1}, Lcom/exteragram/messenger/backup/InvisibleEncryptor;->isEncrypted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    invoke-static {p1}, Lcom/exteragram/messenger/backup/InvisibleEncryptor;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p1

    .line 465
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method private toJsonObject(Ljava/util/Map;)Lcom/google/gson/JsonObject;
    .locals 4

    .line 378
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 380
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 383
    invoke-direct {p0, v2, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isExceptedValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/exteragram/messenger/backup/PreferencesUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public exportSettings(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 20

    .line 329
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/exteragram/messenger/backup/PreferencesUtils;->generateBackupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 336
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 337
    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/4 v1, 0x1

    move-object/from16 v4, p0

    .line 338
    invoke-virtual {v4, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getBackup(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 340
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 342
    new-instance v3, Lcom/exteragram/messenger/backup/PreferencesUtils$1;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, p1

    invoke-direct/range {v3 .. v19}, Lcom/exteragram/messenger/backup/PreferencesUtils$1;-><init>(Lcom/exteragram/messenger/backup/PreferencesUtils;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 351
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getBackup(Z)Ljava/lang/String;
    .locals 7

    .line 356
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 358
    sget-object v1, Lcom/exteragram/messenger/backup/PreferencesUtils;->configs:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 359
    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    if-eqz v5, :cond_0

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 362
    :cond_0
    invoke-static {v4}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/exteragram/messenger/backup/PreferencesUtils;->toJsonObject(Ljava/util/Map;)Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 363
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 364
    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/exteragram/messenger/backup/PreferencesUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 371
    invoke-static {v0}, Lcom/exteragram/messenger/backup/InvisibleEncryptor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getDiff(Lcom/google/gson/JsonObject;)I
    .locals 10

    .line 520
    iget-object v0, p0, Lcom/exteragram/messenger/backup/PreferencesUtils;->gson:Lcom/google/gson/Gson;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getBackup(Z)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 522
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 523
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 524
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 525
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 527
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 528
    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    .line 529
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 530
    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isExceptedValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getDiff(Lorg/telegram/messenger/MessageObject;)I
    .locals 2

    .line 512
    new-instance v0, Ljava/io/File;

    .line 514
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getJsonObject(Ljava/io/File;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 512
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getDiff(Lcom/google/gson/JsonObject;)I

    move-result p1

    return p1
.end method

.method public getJsonObject(Ljava/io/File;)Lcom/google/gson/JsonObject;
    .locals 2

    .line 453
    :try_start_0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->readAndDecryptFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/exteragram/messenger/backup/PreferencesUtils;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 459
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public importSettings(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 5

    .line 393
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isBackup(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getJsonObject(Ljava/io/File;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 400
    sget-object v0, Lcom/exteragram/messenger/backup/PreferencesUtils;->configs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 401
    invoke-direct {p0, p1, v4}, Lcom/exteragram/messenger/backup/PreferencesUtils;->importConfig(Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->reloadConfig()V

    .line 405
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->reloadConfig()V

    .line 407
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->restart()V

    .line 408
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 409
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->reloadAllResources(Landroid/content/Context;)V

    .line 412
    invoke-interface {p3, v2, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    .line 414
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 415
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 416
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget p3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_CHAT:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 417
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 418
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public isBackup(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 504
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".extera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getJsonObject(Ljava/io/File;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 508
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->checkKeys(Lcom/google/gson/JsonObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public isBackup(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 499
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isBackup(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
