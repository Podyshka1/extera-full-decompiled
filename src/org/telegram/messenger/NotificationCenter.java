package org.telegram.messenger;

import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import com.android.p003dx.p006io.Opcodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCenter {
    private static final long EXPIRE_NOTIFICATIONS_TIME = 5017;
    private static final NotificationCenter[] Instance;
    public static final int activeAuctionsUpdated;
    public static final int activeGroupCallsUpdated;
    public static final int activityPermissionsGranted;
    public static final int adminedChannelsLoaded;
    public static final int albumsDidLoad;
    public static boolean alreadyLogged = false;
    public static final int animatedEmojiDocumentLoaded;
    public static final int appConfigUpdated;
    public static final int appDidLogout;
    public static final int appUpdateAvailable;
    public static final int appUpdateLoading;
    public static final int applyGroupCallVisibleParticipants;
    public static final int archivedStickersCountDidLoad;
    public static final int articleClosed;
    public static final int attachMenuBotsDidLoad;
    public static final int audioDidSent;
    public static final int audioRecordTooShort;
    public static final int audioRouteChanged;
    public static final int availableEffectsUpdate;
    public static final int billingConfirmPurchaseError;
    public static final int billingProductDetailsUpdated;
    public static final int blockedUsersDidLoad;
    public static final int bookmarkAdded;
    public static final int boostByChannelCreated;
    public static final int boostedChannelByUser;
    public static final int botDownloadsUpdate;
    public static final int botForumDraftDelete;
    public static final int botForumDraftUpdate;
    public static final int botForumTopicDidCreate;
    public static final int botInfoDidLoad;
    public static final int botKeyboardDidLoad;
    public static final int botStarsTransactionsLoaded;
    public static final int botStarsUpdated;
    public static final int businessLinkCreated;
    public static final int businessLinksUpdated;
    public static final int businessMessagesUpdated;
    public static final int callTabsVisibleToggled;
    public static final int cameraInitied;
    public static final int changeRepliesCounter;
    public static final int channelConnectedBotsUpdate;
    public static final int channelRecommendationsLoaded;
    public static final int channelRightsUpdated;
    public static final int channelStarsUpdated;
    public static final int channelSuggestedBotsUpdate;
    public static final int chatAvailableReactionsUpdated;
    public static final int chatDidCreated;
    public static final int chatDidFailCreate;
    public static final int chatInfoCantLoad;
    public static final int chatInfoDidLoad;
    public static final int chatOnlineCountDidLoad;
    public static final int chatSearchResultsAvailable;
    public static final int chatSearchResultsLoading;
    public static final int chatSwitchedForum;
    public static final int chatWasBoostedByUser;
    public static final int chatlistFolderUpdate;
    public static final int closeChatActivity;
    public static final int closeChats;
    public static final int closeInCallActivity;
    public static final int closeOtherAppActivities;
    public static final int closeProfileActivity;
    public static final int closeSearchByActiveAction;
    public static final int commentsRead;
    public static final int commonChatsLoaded;
    public static final int conferenceEmojiUpdated;
    public static final int configLoaded;
    public static final int contactsDidLoad;
    public static final int contactsImported;
    public static final int contactsPermissionBadgeCheck;
    public static final int contactsTabVisibleToggled;
    public static final int contentSettingsLoaded;
    public static final int currentUserPremiumStatusChanged;
    public static final int currentUserShowLimitReachedDialog;
    public static final int customStickerCreated;
    public static final int customTypefacesLoaded;
    public static final int dialogDeleted;
    public static final int dialogFiltersUpdated;
    public static final int dialogIsTranslatable;
    public static final int dialogPhotosLoaded;
    public static final int dialogPhotosUpdate;
    public static final int dialogTranslate;
    public static final int dialogsNeedReload;
    public static final int dialogsUnreadCounterChanged;
    public static final int dialogsUnreadReactionsCounterChanged;
    public static final int diceStickersDidLoad;
    public static final int didApplyNewTheme;
    public static final int didClearDatabase;
    public static final int didCreatedNewDeleteTask;
    public static final int didEndCall;
    public static final int didGenerateFingerprintKeyPair;
    public static final int didLoadChatAdmins;
    public static final int didLoadChatInviter;
    public static final int didLoadPinnedMessages;
    public static final int didLoadSendAsPeers;
    public static final int didLoadSponsoredMessages;
    public static final int didReceiveCall;
    public static final int didReceiveNewMessages = 1;
    public static final int didReceiveSmsCode;
    public static final int didReceivedWebpages;
    public static final int didReceivedWebpagesInUpdates;
    public static final int didRemoveTwoStepPassword;
    public static final int didReplacedPhotoInMemCache;
    public static final int didSetNewTheme;
    public static final int didSetNewWallpapper;
    public static final int didSetOrRemoveTwoStepPassword;
    public static final int didSetPasscode;
    public static final int didStartedCall;
    public static final int didStartedMultiGiftsSelector;
    public static final int didUpdateConnectionState;
    public static final int didUpdateExtendedMedia;
    public static final int didUpdateGlobalAutoDeleteTimer;
    public static final int didUpdateMessagesViews;
    public static final int didUpdatePollResults;
    public static final int didUpdatePremiumGiftFieldIcon;
    public static final int didUpdatePremiumGiftStickers;
    public static final int didUpdateReactions;
    public static final int didUpdateTonGiftStickers;
    public static final int didVerifyMessagesStickers;
    public static final int emojiKeywordsLoaded;
    public static final int emojiLoaded;
    public static final int emojiPreviewThemesChanged;
    public static final int encryptedChatCreated;
    public static final int encryptedChatUpdated;
    public static final int factCheckLoaded;
    public static final int featuredEmojiDidLoad;
    public static final int featuredStickersDidLoad;
    public static final int fileLoadFailed;
    public static final int fileLoadProgressChanged;
    public static final int fileLoaded;
    public static final int fileNewChunkAvailable;
    public static final int filePreparingFailed;
    public static final int filePreparingStarted;
    public static final int fileUploadFailed;
    public static final int fileUploadProgressChanged;
    public static final int fileUploaded;
    public static final int filterSettingsUpdated;
    public static final int folderBecomeEmpty;
    public static final int forceImportContactsStart;
    public static final int giftsToUserSent;
    private static volatile NotificationCenter globalInstance;
    public static final int goingToPreviewTheme;
    public static final int groupCallScreencastStateChanged;
    public static final int groupCallSpeakingUsersUpdated;
    public static final int groupCallTypingsUpdated;
    public static final int groupCallUpdated;
    public static final int groupCallVisibilityChanged;
    public static final int groupPackUpdated;
    public static final int groupRestrictionsUnlockedByBoosts;
    public static final int groupStickersDidLoad;
    public static final int hasNewContactsToImport;
    public static final int hashtagSearchUpdated;
    public static final int historyCleared;
    public static final int historyImportProgressChanged;
    public static final int httpFileDidFailedLoad;
    public static final int httpFileDidLoad;
    public static int iconPackUpdated;
    public static final int invalidateMotionBackground;
    public static final int joinedGroup;
    public static final int liveLocationsCacheChanged;
    public static final int liveLocationsChanged;
    public static final int liveStoryMessageUpdate;
    public static final int liveStoryUpdated;
    public static final int loadingMessagesFailed;
    public static final int locationPermissionDenied;
    public static final int locationPermissionGranted;
    public static final int mainUserInfoChanged;
    public static final int mediaCountDidLoad;
    public static final int mediaCountsDidLoad;
    public static final int mediaDidLoad;
    public static final int messagePlayingDidReset;
    public static final int messagePlayingDidSeek;
    public static final int messagePlayingDidStart;
    public static final int messagePlayingGoingToStop;
    public static final int messagePlayingPlayStateChanged;
    public static final int messagePlayingProgressDidChanged;
    public static final int messagePlayingSpeedChanged;
    public static final int messageReceivedByAck;
    public static final int messageReceivedByServer;
    public static final int messageReceivedByServer2;
    public static final int messageSendError;
    public static final int messageTranslated;
    public static final int messageTranslating;
    public static final int messagesDeleted;
    public static final int messagesDidLoad;
    public static final int messagesDidLoadWithoutProcess;
    public static final int messagesFeeUpdated;
    public static final int messagesRead;
    public static final int messagesReadContent;
    public static final int messagesReadEncrypted;
    public static final int monoForumMessagesRead;
    public static final int moreMusicDidLoad;
    public static final int musicDidLoad;
    public static final int musicIdsLoaded;
    public static final int musicListLoaded;
    public static final int nearEarEvent;
    public static final int needAddArchivedStickers;
    public static final int needCheckSystemBarColors;
    public static final int needDeleteBusinessLink;
    public static final int needDeleteDialog;
    public static final int needReloadRecentDialogsSearch;
    public static final int needSetDayNightTheme;
    public static final int needShareTheme;
    public static final int needShowAlert;
    public static final int needShowPlayServicesAlert;
    public static final int newDraftReceived;
    public static final int newEmojiSuggestionsAvailable;
    public static final int newLocationAvailable;
    public static final int newSessionReceived;
    public static final int newSuggestionsAvailable;
    public static final int notificationsCountUpdated;
    public static final int notificationsSettingsUpdated;
    public static int nowPlayingUpdated;
    public static final int onActivityResultReceived;
    public static final int onDatabaseMigration;
    public static final int onDatabaseOpened;
    public static final int onDatabaseReset;
    public static final int onDownloadingFilesChanged;
    public static final int onEmojiInteractionsReceived;
    public static final int onReceivedChannelDifference;
    public static final int onRequestPermissionResultReceived;
    public static final int onUpdateLoginToken;
    public static final int onUserRingtonesUpdated;
    public static final int openArticle;
    public static final int openBoostForUsersDialog;
    public static final int openedChatChanged;
    public static final int passcodeDismissed;
    public static final int paymentFinished;
    public static final int peerSettingsDidLoad;
    public static final int permissionsGranted;
    public static int pillStackLayoutChanged;
    public static int pillStackSettingsChanged;
    public static final int pinnedInfoDidLoad;
    public static final int playerDidStartPlaying;
    public static int pluginIsNotResponding;
    public static int pluginMenuItemsUpdated;
    public static int pluginSettingsRegistered;
    public static int pluginSettingsUnregistered;
    public static int pluginsPySdkInfoChanged;
    public static int pluginsUpdated;
    public static final int premiumFloodWaitReceived;
    public static final int premiumPromoUpdated;
    public static final int premiumStatusChangedGlobal;
    public static final int premiumStickersPreviewLoaded;
    public static final int privacyRulesUpdated;
    public static final int profileMusicUpdated;
    public static final int proxyChangedByRotation;
    public static final int proxyCheckDone;
    public static final int proxyPingUpdated;
    public static final int proxySettingsChanged;
    public static final int pushMessagesUpdated;
    public static final int quickRepliesDeleted;
    public static final int quickRepliesUpdated;
    public static final int reactionsDidLoad;
    public static final int recentDocumentsDidLoad;
    public static final int recentEmojiStatusesUpdate;
    public static final int recordPaused;
    public static final int recordProgressChanged;
    public static final int recordResumed;
    public static final int recordStartError;
    public static final int recordStarted;
    public static final int recordStopped;
    public static final int reloadDialogPhotos;
    public static final int reloadHints;
    public static final int reloadInlineHints;
    public static final int reloadInterface;
    public static final int reloadWebappsHints;
    public static final int removeAllMessagesFromDialog;
    public static final int replaceMessagesObjects;
    public static final int replyMessagesDidLoad;
    public static final int requestPermissions;
    public static int rolesUpdated;
    public static final int savedMessagesDialogsUpdate;
    public static final int savedMessagesForwarded;
    public static final int savedReactionTagsUpdate;
    public static final int scheduledMessagesUpdated;
    public static final int screenStateChanged;
    public static final int screenshotTook;
    public static final int sendingMessagesChanged;
    public static int servicesUpdated;
    public static final int showBulletin;
    public static final int smsJobStatusUpdate;
    public static final int starBalanceUpdated;
    public static final int starGiftOptionsLoaded;
    public static final int starGiftSoldOut;
    public static final int starGiftsLoaded;
    public static final int starGiveawayOptionsLoaded;
    public static final int starOptionsLoaded;
    public static final int starReactionAnonymousUpdate;
    public static final int starSubscriptionsLoaded;
    public static final int starTransactionsLoaded;
    public static final int starUserGiftCollectionsLoaded;
    public static final int starUserGiftsLoaded;
    public static final int startAllHeavyOperations;
    public static final int startSpoilers;
    public static final int stealthModeChanged;
    public static final int stickersDidLoad;
    public static final int stickersImportComplete;
    public static final int stickersImportProgressChanged;
    public static final int stopAllHeavyOperations;
    public static final int stopSpoilers;
    public static final int storiesBlocklistUpdate;
    public static final int storiesDraftsUpdated;
    public static final int storiesEnabledUpdate;
    public static final int storiesLimitUpdate;
    public static final int storiesListUpdated;
    public static final int storiesReadUpdated;
    public static final int storiesSendAsUpdate;
    public static final int storiesUpdated;
    public static final int storyAlbumsCollectionsUpdate;
    public static final int storyDeleted;
    public static final int storyGroupCallUpdated;
    public static final int storyQualityUpdate;
    public static final int suggestedFiltersLoaded;
    public static final int suggestedLangpack;
    public static final int themeAccentListUpdated;
    public static final int themeListUpdated;
    public static final int themeUploadError;
    public static final int themeUploadedToServer;
    public static final int threadMessagesRead;
    public static final int timezonesUpdated;
    public static final int tlSchemeParseException;
    public static final int topicsDidLoaded;
    private static int totalEvents;
    public static final int translationModelDownloaded;
    public static final int translationModelDownloading;
    public static final int twoStepPasswordChanged;
    public static final int unconfirmedAuthUpdate;
    public static final int updateAllMessages;
    public static final int updateBotMenuButton;
    public static final int updateDefaultSendAsPeer;
    public static final int updateInterfaces;
    public static final int updateMentionsCount;
    public static final int updateMessageMedia;
    public static final int updateSearchSettings;
    public static final int updateStories;
    public static final int updateTranscriptionLock;
    public static final int updatedChatRanks;
    public static final int uploadStoryEnd;
    public static final int uploadStoryProgress;
    public static final int userEmojiStatusUpdated;
    public static final int userInfoDidLoad;
    public static final int userIsPremiumBlockedUpadted;
    public static final int videoLoadingStateChanged;
    public static final int voiceTranscriptionUpdate;
    public static final int voipServiceCreated;
    public static final int walletPendingTransactionsChanged;
    public static final int walletSyncProgressChanged;
    public static final int wallpaperSettedToUser;
    public static final int wallpapersDidLoad;
    public static final int wallpapersNeedReload;
    public static final int wasUnableToFindCurrentLocation;
    public static final int webRtcMicAmplitudeEvent;
    public static final int webRtcSpeakerAmplitudeEvent;
    public static final int webViewResolved;
    public static final int webViewResultSent;
    private int animationInProgressCount;
    private Runnable checkForExpiredNotifications;
    private final int currentAccount;
    private int currentHeavyOperationFlags;
    private final SparseArray<ArrayList<NotificationCenterDelegate>> observers = new SparseArray<>();
    private final SparseArray<ArrayList<NotificationCenterDelegate>> removeAfterBroadcast = new SparseArray<>();
    private final SparseArray<ArrayList<NotificationCenterDelegate>> addAfterBroadcast = new SparseArray<>();
    private final ArrayList<DelayedPost> delayedPosts = new ArrayList<>(10);
    private final ArrayList<Runnable> delayedRunnables = new ArrayList<>(10);
    private final ArrayList<Runnable> delayedRunnablesTmp = new ArrayList<>(10);
    private final ArrayList<DelayedPost> delayedPostsTmp = new ArrayList<>(10);
    private final ArrayList<PostponeNotificationCallback> postponeCallbackList = new ArrayList<>(10);
    private int broadcasting = 0;
    private int animationInProgressPointer = 1;
    HashSet<Integer> heavyOperationsCounter = new HashSet<>();
    private final SparseArray<AllowedNotifications> allowedNotifications = new SparseArray<>();
    SparseArray<Runnable> alreadyPostedRunnubles = new SparseArray<>();

    public interface NotificationCenterDelegate {
        void didReceivedNotification(int i, int i2, Object... objArr);
    }

    public interface PostponeNotificationCallback {
        boolean needPostpone(int i, int i2, Object[] objArr);
    }

    public static /* synthetic */ void $r8$lambda$1rHFyh05Sw716Jb4uZbOJEGUXWA() {
    }

    public static /* synthetic */ void $r8$lambda$CBCfHInG5YaHMj0Rw5FrED2DT0g() {
    }

    static {
        int i = 1 + 1;
        onUpdateLoginToken = i;
        updateInterfaces = i + 1;
        dialogsNeedReload = i + 2;
        closeChats = i + 3;
        closeChatActivity = i + 4;
        closeProfileActivity = i + 5;
        messagesDeleted = i + 6;
        historyCleared = i + 7;
        messagesRead = i + 8;
        threadMessagesRead = i + 9;
        monoForumMessagesRead = i + 10;
        commentsRead = i + 11;
        changeRepliesCounter = i + 12;
        messagesDidLoad = i + 13;
        didLoadSponsoredMessages = i + 14;
        didLoadSendAsPeers = i + 15;
        updateDefaultSendAsPeer = i + 16;
        messagesDidLoadWithoutProcess = i + 17;
        loadingMessagesFailed = i + 18;
        messageReceivedByAck = i + 19;
        messageReceivedByServer = i + 20;
        messageReceivedByServer2 = i + 21;
        messageSendError = i + 22;
        forceImportContactsStart = i + 23;
        contactsDidLoad = i + 24;
        contactsImported = i + 25;
        hasNewContactsToImport = i + 26;
        chatDidCreated = i + 27;
        chatDidFailCreate = i + 28;
        chatInfoDidLoad = i + 29;
        chatInfoCantLoad = i + 30;
        mediaDidLoad = i + 31;
        mediaCountDidLoad = i + 32;
        mediaCountsDidLoad = i + 33;
        encryptedChatUpdated = i + 34;
        messagesReadEncrypted = i + 35;
        encryptedChatCreated = i + 36;
        dialogPhotosLoaded = i + 37;
        reloadDialogPhotos = i + 38;
        folderBecomeEmpty = i + 39;
        removeAllMessagesFromDialog = i + 40;
        notificationsSettingsUpdated = i + 41;
        blockedUsersDidLoad = i + 42;
        openedChatChanged = i + 43;
        didCreatedNewDeleteTask = i + 44;
        mainUserInfoChanged = i + 45;
        privacyRulesUpdated = i + 46;
        updateMessageMedia = i + 47;
        replaceMessagesObjects = i + 48;
        didSetPasscode = i + 49;
        passcodeDismissed = i + 50;
        twoStepPasswordChanged = i + 51;
        didSetOrRemoveTwoStepPassword = i + 52;
        didRemoveTwoStepPassword = i + 53;
        replyMessagesDidLoad = i + 54;
        didLoadPinnedMessages = i + 55;
        newSessionReceived = i + 56;
        didReceivedWebpages = i + 57;
        didReceivedWebpagesInUpdates = i + 58;
        stickersDidLoad = i + 59;
        diceStickersDidLoad = i + 60;
        featuredStickersDidLoad = i + 61;
        featuredEmojiDidLoad = i + 62;
        groupStickersDidLoad = i + 63;
        messagesReadContent = i + 64;
        botInfoDidLoad = i + 65;
        userInfoDidLoad = i + 66;
        pinnedInfoDidLoad = i + 67;
        botKeyboardDidLoad = i + 68;
        chatSearchResultsAvailable = i + 69;
        hashtagSearchUpdated = i + 70;
        chatSearchResultsLoading = i + 71;
        musicDidLoad = i + 72;
        moreMusicDidLoad = i + 73;
        needShowAlert = i + 74;
        needShowPlayServicesAlert = i + 75;
        didUpdateMessagesViews = i + 76;
        needReloadRecentDialogsSearch = i + 77;
        peerSettingsDidLoad = i + 78;
        wasUnableToFindCurrentLocation = i + 79;
        reloadHints = i + 80;
        reloadInlineHints = i + 81;
        reloadWebappsHints = i + 82;
        newDraftReceived = i + 83;
        recentDocumentsDidLoad = i + 84;
        needAddArchivedStickers = i + 85;
        archivedStickersCountDidLoad = i + 86;
        paymentFinished = i + 87;
        channelRightsUpdated = i + 88;
        openArticle = i + 89;
        articleClosed = i + 90;
        updateMentionsCount = i + 91;
        didUpdatePollResults = i + 92;
        chatOnlineCountDidLoad = i + 93;
        videoLoadingStateChanged = i + 94;
        stopAllHeavyOperations = i + 95;
        startAllHeavyOperations = i + 96;
        stopSpoilers = i + 97;
        startSpoilers = i + 98;
        sendingMessagesChanged = i + 99;
        didUpdateReactions = i + 100;
        didUpdateExtendedMedia = i + 101;
        didVerifyMessagesStickers = i + 102;
        scheduledMessagesUpdated = i + 103;
        newSuggestionsAvailable = i + 104;
        didLoadChatInviter = i + 105;
        didLoadChatAdmins = i + 106;
        historyImportProgressChanged = i + 107;
        stickersImportProgressChanged = i + 108;
        stickersImportComplete = i + 109;
        dialogDeleted = i + 110;
        webViewResultSent = i + 111;
        voiceTranscriptionUpdate = i + 112;
        animatedEmojiDocumentLoaded = i + 113;
        recentEmojiStatusesUpdate = i + 114;
        updateSearchSettings = i + 115;
        updateTranscriptionLock = i + 116;
        businessMessagesUpdated = i + 117;
        quickRepliesUpdated = i + 118;
        quickRepliesDeleted = i + 119;
        bookmarkAdded = i + 120;
        starReactionAnonymousUpdate = i + 121;
        businessLinksUpdated = i + 122;
        businessLinkCreated = i + 123;
        needDeleteBusinessLink = i + 124;
        messageTranslated = i + 125;
        messageTranslating = i + 126;
        dialogIsTranslatable = i + 127;
        dialogTranslate = i + 128;
        didGenerateFingerprintKeyPair = i + 129;
        walletPendingTransactionsChanged = i + 130;
        walletSyncProgressChanged = i + 131;
        httpFileDidLoad = i + 132;
        httpFileDidFailedLoad = i + 133;
        didUpdateConnectionState = i + 134;
        fileUploaded = i + 135;
        fileUploadFailed = i + 136;
        fileUploadProgressChanged = i + 137;
        fileLoadProgressChanged = i + 138;
        fileLoaded = i + 139;
        fileLoadFailed = i + 140;
        filePreparingStarted = i + 141;
        fileNewChunkAvailable = i + 142;
        filePreparingFailed = i + 143;
        dialogsUnreadCounterChanged = i + 144;
        messagePlayingProgressDidChanged = i + 145;
        messagePlayingDidReset = i + 146;
        messagePlayingPlayStateChanged = i + 147;
        messagePlayingDidStart = i + 148;
        messagePlayingDidSeek = i + 149;
        messagePlayingGoingToStop = i + 150;
        recordProgressChanged = i + 151;
        recordStarted = i + 152;
        recordStartError = i + 153;
        recordStopped = i + 154;
        recordPaused = i + 155;
        recordResumed = i + 156;
        screenshotTook = i + 157;
        albumsDidLoad = i + 158;
        audioDidSent = i + 159;
        audioRecordTooShort = i + 160;
        audioRouteChanged = i + 161;
        didStartedCall = i + 162;
        groupCallUpdated = i + 163;
        storyGroupCallUpdated = i + 164;
        groupCallSpeakingUsersUpdated = i + 165;
        groupCallScreencastStateChanged = i + 166;
        activeGroupCallsUpdated = i + 167;
        applyGroupCallVisibleParticipants = i + 168;
        groupCallTypingsUpdated = i + 169;
        didEndCall = i + 170;
        closeInCallActivity = i + 171;
        groupCallVisibilityChanged = i + 172;
        liveStoryUpdated = i + 173;
        liveStoryMessageUpdate = i + 174;
        appDidLogout = i + 175;
        configLoaded = i + 176;
        needDeleteDialog = i + 177;
        newEmojiSuggestionsAvailable = i + 178;
        themeUploadedToServer = i + 179;
        themeUploadError = i + 180;
        dialogFiltersUpdated = i + 181;
        filterSettingsUpdated = i + 182;
        suggestedFiltersLoaded = i + 183;
        updateBotMenuButton = i + 184;
        giftsToUserSent = i + 185;
        didStartedMultiGiftsSelector = i + 186;
        boostedChannelByUser = i + 187;
        boostByChannelCreated = i + 188;
        didUpdatePremiumGiftStickers = i + 189;
        didUpdateTonGiftStickers = i + 190;
        didUpdatePremiumGiftFieldIcon = i + 191;
        storiesEnabledUpdate = i + 192;
        storiesBlocklistUpdate = i + 193;
        storiesLimitUpdate = i + 194;
        storiesSendAsUpdate = i + 195;
        unconfirmedAuthUpdate = i + 196;
        dialogPhotosUpdate = i + 197;
        channelRecommendationsLoaded = i + 198;
        savedMessagesDialogsUpdate = i + 199;
        savedReactionTagsUpdate = i + 200;
        int i2 = i + Opcodes.REM_FLOAT_2ADDR;
        userIsPremiumBlockedUpadted = i + 201;
        storyAlbumsCollectionsUpdate = i2;
        int i3 = i + Opcodes.SUB_DOUBLE_2ADDR;
        savedMessagesForwarded = i + 203;
        int i4 = i + Opcodes.MUL_DOUBLE_2ADDR;
        emojiKeywordsLoaded = i3;
        int i5 = i + Opcodes.DIV_DOUBLE_2ADDR;
        smsJobStatusUpdate = i4;
        int i6 = i + Opcodes.REM_DOUBLE_2ADDR;
        storyQualityUpdate = i5;
        int i7 = i + Opcodes.ADD_INT_LIT16;
        openBoostForUsersDialog = i6;
        int i8 = i + Opcodes.RSUB_INT;
        groupRestrictionsUnlockedByBoosts = i7;
        int i9 = i + Opcodes.MUL_INT_LIT16;
        chatWasBoostedByUser = i8;
        int i10 = i + Opcodes.DIV_INT_LIT16;
        groupPackUpdated = i9;
        int i11 = i + Opcodes.REM_INT_LIT16;
        timezonesUpdated = i10;
        int i12 = i + Opcodes.AND_INT_LIT16;
        customStickerCreated = i11;
        int i13 = i + Opcodes.OR_INT_LIT16;
        premiumFloodWaitReceived = i12;
        int i14 = i + Opcodes.XOR_INT_LIT16;
        availableEffectsUpdate = i13;
        int i15 = i + Opcodes.ADD_INT_LIT8;
        starOptionsLoaded = i14;
        int i16 = i + Opcodes.RSUB_INT_LIT8;
        starGiftOptionsLoaded = i15;
        int i17 = i + Opcodes.MUL_INT_LIT8;
        starGiveawayOptionsLoaded = i16;
        int i18 = i + Opcodes.DIV_INT_LIT8;
        starBalanceUpdated = i17;
        int i19 = i + Opcodes.REM_INT_LIT8;
        starTransactionsLoaded = i18;
        int i20 = i + Opcodes.AND_INT_LIT8;
        starSubscriptionsLoaded = i19;
        int i21 = i + Opcodes.OR_INT_LIT8;
        factCheckLoaded = i20;
        int i22 = i + Opcodes.XOR_INT_LIT8;
        botStarsUpdated = i21;
        int i23 = i + Opcodes.SHL_INT_LIT8;
        botStarsTransactionsLoaded = i22;
        int i24 = i + Opcodes.SHR_INT_LIT8;
        channelStarsUpdated = i23;
        int i25 = i + Opcodes.USHR_INT_LIT8;
        webViewResolved = i24;
        updateAllMessages = i25;
        starGiftsLoaded = i + 227;
        starUserGiftsLoaded = i + 228;
        starUserGiftCollectionsLoaded = i + 229;
        starGiftSoldOut = i + 230;
        updateStories = i + 231;
        botDownloadsUpdate = i + 232;
        channelSuggestedBotsUpdate = i + 233;
        channelConnectedBotsUpdate = i + 234;
        adminedChannelsLoaded = i + 235;
        messagesFeeUpdated = i + 236;
        commonChatsLoaded = i + 237;
        appConfigUpdated = i + 238;
        activeAuctionsUpdated = i + 239;
        conferenceEmojiUpdated = i + 240;
        contentSettingsLoaded = i + 241;
        musicListLoaded = i + 242;
        musicIdsLoaded = i + 243;
        profileMusicUpdated = i + 244;
        updatedChatRanks = i + 245;
        joinedGroup = i + 246;
        pushMessagesUpdated = i + 247;
        wallpapersDidLoad = i + 248;
        wallpapersNeedReload = i + 249;
        int i26 = i + Opcodes.INVOKE_POLYMORPHIC_RANGE;
        didReceiveSmsCode = i + 250;
        int i27 = i + Opcodes.INVOKE_CUSTOM;
        didReceiveCall = i26;
        int i28 = i + Opcodes.INVOKE_CUSTOM_RANGE;
        emojiLoaded = i27;
        int i29 = i + Opcodes.CONST_METHOD_HANDLE;
        invalidateMotionBackground = i28;
        closeOtherAppActivities = i29;
        cameraInitied = i + 255;
        didReplacedPhotoInMemCache = i + 256;
        didSetNewTheme = i + 257;
        themeListUpdated = i + 258;
        didApplyNewTheme = i + 259;
        themeAccentListUpdated = i + 260;
        needCheckSystemBarColors = i + 261;
        needShareTheme = i + 262;
        needSetDayNightTheme = i + 263;
        goingToPreviewTheme = i + 264;
        locationPermissionGranted = i + 265;
        locationPermissionDenied = i + 266;
        reloadInterface = i + 267;
        suggestedLangpack = i + 268;
        didSetNewWallpapper = i + 269;
        proxySettingsChanged = i + 270;
        proxyCheckDone = i + 271;
        proxyChangedByRotation = i + 272;
        proxyPingUpdated = i + 273;
        liveLocationsChanged = i + 274;
        newLocationAvailable = i + 275;
        liveLocationsCacheChanged = i + 276;
        notificationsCountUpdated = i + 277;
        playerDidStartPlaying = i + 278;
        closeSearchByActiveAction = i + 279;
        messagePlayingSpeedChanged = i + 280;
        screenStateChanged = i + 281;
        didClearDatabase = i + 282;
        voipServiceCreated = i + 283;
        webRtcMicAmplitudeEvent = i + 284;
        webRtcSpeakerAmplitudeEvent = i + 285;
        showBulletin = i + 286;
        appUpdateAvailable = i + 287;
        appUpdateLoading = i + 288;
        onDatabaseMigration = i + 289;
        onEmojiInteractionsReceived = i + 290;
        emojiPreviewThemesChanged = i + 291;
        reactionsDidLoad = i + 292;
        attachMenuBotsDidLoad = i + 293;
        chatAvailableReactionsUpdated = i + 294;
        dialogsUnreadReactionsCounterChanged = i + 295;
        onDatabaseOpened = i + 296;
        onDownloadingFilesChanged = i + 297;
        onActivityResultReceived = i + 298;
        onRequestPermissionResultReceived = i + 299;
        onUserRingtonesUpdated = i + 300;
        currentUserPremiumStatusChanged = i + 301;
        premiumPromoUpdated = i + 302;
        premiumStatusChangedGlobal = i + 303;
        currentUserShowLimitReachedDialog = i + 304;
        billingProductDetailsUpdated = i + 305;
        int i30 = i + HttpStatusCodesKt.HTTP_TEMP_REDIRECT;
        billingConfirmPurchaseError = i + 306;
        int i31 = i + HttpStatusCodesKt.HTTP_PERM_REDIRECT;
        premiumStickersPreviewLoaded = i30;
        userEmojiStatusUpdated = i31;
        requestPermissions = i + 309;
        permissionsGranted = i + 310;
        activityPermissionsGranted = i + 311;
        topicsDidLoaded = i + 312;
        chatSwitchedForum = i + 313;
        didUpdateGlobalAutoDeleteTimer = i + 314;
        onDatabaseReset = i + 315;
        wallpaperSettedToUser = i + 316;
        storiesUpdated = i + 317;
        storyDeleted = i + 318;
        storiesListUpdated = i + 319;
        storiesDraftsUpdated = i + 320;
        chatlistFolderUpdate = i + 321;
        uploadStoryProgress = i + 322;
        uploadStoryEnd = i + 323;
        customTypefacesLoaded = i + 324;
        stealthModeChanged = i + 325;
        onReceivedChannelDifference = i + 326;
        storiesReadUpdated = i + 327;
        nearEarEvent = i + 328;
        translationModelDownloading = i + 329;
        translationModelDownloaded = i + 330;
        botForumTopicDidCreate = i + 331;
        botForumDraftUpdate = i + 332;
        botForumDraftDelete = i + 333;
        tlSchemeParseException = i + 334;
        callTabsVisibleToggled = i + 335;
        contactsTabVisibleToggled = i + 336;
        contactsPermissionBadgeCheck = i + 337;
        nowPlayingUpdated = i + 338;
        rolesUpdated = i + 339;
        servicesUpdated = i + 340;
        pluginsUpdated = i + 341;
        pluginIsNotResponding = i + 342;
        pluginSettingsRegistered = i + 343;
        pluginSettingsUnregistered = i + 344;
        pluginMenuItemsUpdated = i + 345;
        iconPackUpdated = i + 346;
        pillStackSettingsChanged = i + 347;
        pillStackLayoutChanged = i + 348;
        totalEvents = i + 350;
        pluginsPySdkInfoChanged = i + 349;
        Instance = new NotificationCenter[16];
    }

    private static class DelayedPost {
        private final Object[] args;

        /* JADX INFO: renamed from: id */
        private final int f1604id;

        private DelayedPost(int i, Object[] objArr) {
            this.f1604id = i;
            this.args = objArr;
        }
    }

    public static NotificationCenter getInstance(int i) {
        NotificationCenter notificationCenter;
        NotificationCenter[] notificationCenterArr = Instance;
        NotificationCenter notificationCenter2 = notificationCenterArr[i];
        if (notificationCenter2 != null) {
            return notificationCenter2;
        }
        synchronized (NotificationCenter.class) {
            try {
                notificationCenter = notificationCenterArr[i];
                if (notificationCenter == null) {
                    notificationCenter = new NotificationCenter(i);
                    notificationCenterArr[i] = notificationCenter;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return notificationCenter;
    }

    public static NotificationCenter getGlobalInstance() {
        NotificationCenter notificationCenter;
        NotificationCenter notificationCenter2 = globalInstance;
        if (notificationCenter2 != null) {
            return notificationCenter2;
        }
        synchronized (NotificationCenter.class) {
            try {
                notificationCenter = globalInstance;
                if (notificationCenter == null) {
                    notificationCenter = new NotificationCenter(-1);
                    globalInstance = notificationCenter;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return notificationCenter;
    }

    public NotificationCenter(int i) {
        this.currentAccount = i;
    }

    public int setAnimationInProgress(int i, int[] iArr) {
        return setAnimationInProgress(i, iArr, true);
    }

    public int setAnimationInProgress(int i, int[] iArr, boolean z) {
        onAnimationFinish(i);
        if (this.heavyOperationsCounter.isEmpty() && z) {
            getGlobalInstance().lambda$postNotificationNameOnUIThread$1(stopAllHeavyOperations, 512);
        }
        this.animationInProgressCount++;
        int i2 = this.animationInProgressPointer + 1;
        this.animationInProgressPointer = i2;
        if (z) {
            this.heavyOperationsCounter.add(Integer.valueOf(i2));
        }
        AllowedNotifications allowedNotifications = new AllowedNotifications();
        allowedNotifications.allowedIds = iArr;
        this.allowedNotifications.put(this.animationInProgressPointer, allowedNotifications);
        if (this.checkForExpiredNotifications == null) {
            NotificationCenter$$ExternalSyntheticLambda11 notificationCenter$$ExternalSyntheticLambda11 = new NotificationCenter$$ExternalSyntheticLambda11(this);
            this.checkForExpiredNotifications = notificationCenter$$ExternalSyntheticLambda11;
            AndroidUtilities.runOnUIThread(notificationCenter$$ExternalSyntheticLambda11, EXPIRE_NOTIFICATIONS_TIME);
        }
        return this.animationInProgressPointer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForExpiredNotifications() {
        ArrayList arrayList = null;
        this.checkForExpiredNotifications = null;
        if (this.allowedNotifications.size() == 0) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jMin = Long.MAX_VALUE;
        for (int i = 0; i < this.allowedNotifications.size(); i++) {
            long j = this.allowedNotifications.valueAt(i).time;
            if (jElapsedRealtime - j > 1000) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(Integer.valueOf(this.allowedNotifications.keyAt(i)));
            } else {
                jMin = Math.min(j, jMin);
            }
        }
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                onAnimationFinish(((Integer) arrayList.get(i2)).intValue());
            }
        }
        if (jMin != Long.MAX_VALUE) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkForExpiredNotifications$0();
                }
            }, Math.max(17L, EXPIRE_NOTIFICATIONS_TIME - (jElapsedRealtime - jMin)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkForExpiredNotifications$0() {
        this.checkForExpiredNotifications = new NotificationCenter$$ExternalSyntheticLambda11(this);
    }

    public void updateAllowedNotifications(int i, int[] iArr) {
        AllowedNotifications allowedNotifications = this.allowedNotifications.get(i);
        if (allowedNotifications != null) {
            allowedNotifications.allowedIds = iArr;
        }
    }

    public void onAnimationFinish(int i) {
        AllowedNotifications allowedNotifications = this.allowedNotifications.get(i);
        this.allowedNotifications.delete(i);
        if (allowedNotifications != null) {
            this.animationInProgressCount--;
            if (!this.heavyOperationsCounter.isEmpty()) {
                this.heavyOperationsCounter.remove(Integer.valueOf(i));
                if (this.heavyOperationsCounter.isEmpty()) {
                    getGlobalInstance().lambda$postNotificationNameOnUIThread$1(startAllHeavyOperations, 512);
                }
            }
            if (this.animationInProgressCount == 0) {
                runDelayedNotifications();
            }
        }
        if (this.checkForExpiredNotifications == null || this.allowedNotifications.size() != 0) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.checkForExpiredNotifications);
        this.checkForExpiredNotifications = null;
    }

    public void runDelayedNotifications() {
        if (!this.delayedPosts.isEmpty()) {
            this.delayedPostsTmp.clear();
            this.delayedPostsTmp.addAll(this.delayedPosts);
            this.delayedPosts.clear();
            for (int i = 0; i < this.delayedPostsTmp.size(); i++) {
                DelayedPost delayedPost = this.delayedPostsTmp.get(i);
                postNotificationNameInternal(delayedPost.f1604id, true, delayedPost.args);
            }
            this.delayedPostsTmp.clear();
        }
        if (this.delayedRunnables.isEmpty()) {
            return;
        }
        this.delayedRunnablesTmp.clear();
        this.delayedRunnablesTmp.addAll(this.delayedRunnables);
        this.delayedRunnables.clear();
        for (int i2 = 0; i2 < this.delayedRunnablesTmp.size(); i2++) {
            AndroidUtilities.runOnUIThread(this.delayedRunnablesTmp.get(i2));
        }
        this.delayedRunnablesTmp.clear();
    }

    public boolean isAnimationInProgress() {
        return this.animationInProgressCount > 0;
    }

    public int getCurrentHeavyOperationFlags() {
        return this.currentHeavyOperationFlags;
    }

    public ArrayList<NotificationCenterDelegate> getObservers(int i) {
        return this.observers.get(i);
    }

    public void postNotificationNameOnUIThread(final int i, final Object... objArr) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$postNotificationNameOnUIThread$1(i, objArr);
            }
        });
    }

    /* JADX INFO: renamed from: postNotificationName, reason: merged with bridge method [inline-methods] */
    public void lambda$postNotificationNameOnUIThread$1(int i, Object... objArr) {
        boolean z = i == startAllHeavyOperations || i == stopAllHeavyOperations || i == didReplacedPhotoInMemCache || i == closeChats || i == invalidateMotionBackground || i == needCheckSystemBarColors || i == messageReceivedByServer2;
        ArrayList arrayList = null;
        if (!z && this.allowedNotifications.size() > 0) {
            int size = this.allowedNotifications.size();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            int i2 = 0;
            for (int i3 = 0; i3 < this.allowedNotifications.size(); i3++) {
                AllowedNotifications allowedNotificationsValueAt = this.allowedNotifications.valueAt(i3);
                if (jElapsedRealtime - allowedNotificationsValueAt.time > EXPIRE_NOTIFICATIONS_TIME) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(Integer.valueOf(this.allowedNotifications.keyAt(i3)));
                }
                int[] iArr = allowedNotificationsValueAt.allowedIds;
                if (iArr == null) {
                    break;
                }
                int i4 = 0;
                while (true) {
                    if (i4 >= iArr.length) {
                        break;
                    }
                    if (iArr[i4] == i) {
                        i2++;
                        break;
                    }
                    i4++;
                }
            }
            z = size == i2;
        }
        if (i == startAllHeavyOperations) {
            this.currentHeavyOperationFlags = (~((Integer) objArr[0]).intValue()) & this.currentHeavyOperationFlags;
        } else if (i == stopAllHeavyOperations) {
            this.currentHeavyOperationFlags = ((Integer) objArr[0]).intValue() | this.currentHeavyOperationFlags;
        }
        if (shouldDebounce(i, objArr) && BuildVars.DEBUG_VERSION) {
            postNotificationDebounced(i, objArr);
        } else {
            postNotificationNameInternal(i, z, objArr);
        }
        if (arrayList != null) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                onAnimationFinish(((Integer) arrayList.get(i5)).intValue());
            }
        }
    }

    private void postNotificationDebounced(final int i, final Object[] objArr) {
        final int iHashCode = (Arrays.hashCode(objArr) << 16) + i;
        if (this.alreadyPostedRunnubles.indexOfKey(iHashCode) >= 0) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$postNotificationDebounced$2(i, objArr, iHashCode);
            }
        };
        this.alreadyPostedRunnubles.put(iHashCode, runnable);
        AndroidUtilities.runOnUIThread(runnable, 250L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postNotificationDebounced$2(int i, Object[] objArr, int i2) {
        postNotificationNameInternal(i, false, objArr);
        this.alreadyPostedRunnubles.remove(i2);
    }

    private boolean shouldDebounce(int i, Object[] objArr) {
        return i == updateInterfaces;
    }

    public void postNotificationNameInternal(int i, boolean z, Object... objArr) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("postNotificationName allowed only from MAIN thread");
        }
        if (!z && isAnimationInProgress()) {
            this.delayedPosts.add(new DelayedPost(i, objArr));
            return;
        }
        if (!this.postponeCallbackList.isEmpty()) {
            for (int i2 = 0; i2 < this.postponeCallbackList.size(); i2++) {
                if (this.postponeCallbackList.get(i2).needPostpone(i, this.currentAccount, objArr)) {
                    this.delayedPosts.add(new DelayedPost(i, objArr));
                    return;
                }
            }
        }
        this.broadcasting++;
        ArrayList<NotificationCenterDelegate> arrayList = this.observers.get(i);
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                NotificationCenterDelegate notificationCenterDelegate = arrayList.get(i3);
                if (notificationCenterDelegate != null) {
                    notificationCenterDelegate.didReceivedNotification(i, this.currentAccount, objArr);
                }
            }
        }
        int i4 = this.broadcasting - 1;
        this.broadcasting = i4;
        if (i4 == 0) {
            if (this.removeAfterBroadcast.size() != 0) {
                for (int i5 = 0; i5 < this.removeAfterBroadcast.size(); i5++) {
                    int iKeyAt = this.removeAfterBroadcast.keyAt(i5);
                    ArrayList<NotificationCenterDelegate> arrayList2 = this.removeAfterBroadcast.get(iKeyAt);
                    for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                        removeObserver(arrayList2.get(i6), iKeyAt);
                    }
                }
                this.removeAfterBroadcast.clear();
            }
            if (this.addAfterBroadcast.size() != 0) {
                for (int i7 = 0; i7 < this.addAfterBroadcast.size(); i7++) {
                    int iKeyAt2 = this.addAfterBroadcast.keyAt(i7);
                    ArrayList<NotificationCenterDelegate> arrayList3 = this.addAfterBroadcast.get(iKeyAt2);
                    for (int i8 = 0; i8 < arrayList3.size(); i8++) {
                        addObserver(arrayList3.get(i8), iKeyAt2);
                    }
                }
                this.addAfterBroadcast.clear();
            }
        }
    }

    public void updateObserver(boolean z, NotificationCenterDelegate notificationCenterDelegate, int i) {
        if (z) {
            addObserver(notificationCenterDelegate, i);
        } else {
            removeObserver(notificationCenterDelegate, i);
        }
    }

    public void addObserver(NotificationCenterDelegate notificationCenterDelegate, int i) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("addObserver allowed only from MAIN thread");
        }
        if (this.broadcasting != 0) {
            ArrayList<NotificationCenterDelegate> arrayList = this.addAfterBroadcast.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.addAfterBroadcast.put(i, arrayList);
            }
            arrayList.add(notificationCenterDelegate);
            return;
        }
        ArrayList<NotificationCenterDelegate> arrayList2 = this.observers.get(i);
        if (arrayList2 == null) {
            SparseArray<ArrayList<NotificationCenterDelegate>> sparseArray = this.observers;
            ArrayList<NotificationCenterDelegate> arrayListCreateArrayForId = createArrayForId(i);
            sparseArray.put(i, arrayListCreateArrayForId);
            arrayList2 = arrayListCreateArrayForId;
        }
        if (arrayList2.contains(notificationCenterDelegate)) {
            return;
        }
        arrayList2.add(notificationCenterDelegate);
        if (!BuildVars.DEBUG_VERSION || alreadyLogged || arrayList2.size() <= 1000) {
            return;
        }
        alreadyLogged = true;
        FileLog.m1136e(new RuntimeException("Total observers more than 1000, need check for memory leak. " + i));
    }

    private ArrayList<NotificationCenterDelegate> createArrayForId(int i) {
        if (i == didReplacedPhotoInMemCache || i == stopAllHeavyOperations || i == startAllHeavyOperations) {
            return new UniqArrayList();
        }
        return new ArrayList<>();
    }

    public void removeObserver(NotificationCenterDelegate notificationCenterDelegate, int i) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("removeObserver allowed only from MAIN thread");
        }
        if (this.broadcasting != 0) {
            ArrayList<NotificationCenterDelegate> arrayList = this.removeAfterBroadcast.get(i);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.removeAfterBroadcast.put(i, arrayList);
            }
            arrayList.add(notificationCenterDelegate);
            return;
        }
        ArrayList<NotificationCenterDelegate> arrayList2 = this.observers.get(i);
        if (arrayList2 != null) {
            arrayList2.remove(notificationCenterDelegate);
        }
    }

    public boolean hasObservers(int i) {
        return this.observers.indexOfKey(i) >= 0;
    }

    public void addPostponeNotificationsCallback(PostponeNotificationCallback postponeNotificationCallback) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("PostponeNotificationsCallback allowed only from MAIN thread");
        }
        if (this.postponeCallbackList.contains(postponeNotificationCallback)) {
            return;
        }
        this.postponeCallbackList.add(postponeNotificationCallback);
    }

    public void removePostponeNotificationsCallback(PostponeNotificationCallback postponeNotificationCallback) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            throw new RuntimeException("removePostponeNotificationsCallback allowed only from MAIN thread");
        }
        if (this.postponeCallbackList.remove(postponeNotificationCallback)) {
            runDelayedNotifications();
        }
    }

    public void doOnIdle(Runnable runnable) {
        if (isAnimationInProgress()) {
            this.delayedRunnables.add(runnable);
        } else {
            runnable.run();
        }
    }

    public void removeDelayed(Runnable runnable) {
        this.delayedRunnables.remove(runnable);
    }

    private static class AllowedNotifications {
        int[] allowedIds;
        final long time;

        private AllowedNotifications() {
            this.time = SystemClock.elapsedRealtime();
        }
    }

    public Runnable listenGlobal(final View view, final int i, final Utilities.Callback<Object[]> callback) {
        if (view == null || callback == null) {
            return new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.$r8$lambda$1rHFyh05Sw716Jb4uZbOJEGUXWA();
                }
            };
        }
        final NotificationCenterDelegate notificationCenterDelegate = new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                NotificationCenter.$r8$lambda$Lbniv7vBMadOyWsYsv7bbQzFcNE(i, callback, i2, i3, objArr);
            }
        };
        final View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: org.telegram.messenger.NotificationCenter.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                NotificationCenter.getGlobalInstance().addObserver(notificationCenterDelegate, i);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                NotificationCenter.getGlobalInstance().removeObserver(notificationCenterDelegate, i);
            }
        };
        view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        return new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.m4775$r8$lambda$gs1TjHPBQnDs7vrfCMWFXUH0Aw(view, onAttachStateChangeListener, notificationCenterDelegate, i);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$Lbniv7vBMadOyWsYsv7bbQzFcNE(int i, Utilities.Callback callback, int i2, int i3, Object[] objArr) {
        if (i2 == i) {
            callback.run(objArr);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$gs1-TjHPBQnDs7vrfCMWFXUH0Aw, reason: not valid java name */
    public static /* synthetic */ void m4775$r8$lambda$gs1TjHPBQnDs7vrfCMWFXUH0Aw(View view, View.OnAttachStateChangeListener onAttachStateChangeListener, NotificationCenterDelegate notificationCenterDelegate, int i) {
        view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        getGlobalInstance().removeObserver(notificationCenterDelegate, i);
    }

    public Runnable listen(final View view, final int i, final Utilities.Callback<Object[]> callback) {
        if (view == null || callback == null) {
            return new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.$r8$lambda$CBCfHInG5YaHMj0Rw5FrED2DT0g();
                }
            };
        }
        final NotificationCenterDelegate notificationCenterDelegate = new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda9
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                NotificationCenter.$r8$lambda$jEixdy8bpDodL1rWiArvMiXf9u0(i, callback, i2, i3, objArr);
            }
        };
        final View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: org.telegram.messenger.NotificationCenter.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                NotificationCenter.this.addObserver(notificationCenterDelegate, i);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                NotificationCenter.this.removeObserver(notificationCenterDelegate, i);
            }
        };
        view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        return new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$listen$8(view, onAttachStateChangeListener, notificationCenterDelegate, i);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$jEixdy8bpDodL1rWiArvMiXf9u0(int i, Utilities.Callback callback, int i2, int i3, Object[] objArr) {
        if (i2 == i) {
            callback.run(objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$listen$8(View view, View.OnAttachStateChangeListener onAttachStateChangeListener, NotificationCenterDelegate notificationCenterDelegate, int i) {
        view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        removeObserver(notificationCenterDelegate, i);
    }

    public static void listenEmojiLoading(final View view) {
        getGlobalInstance().listenGlobal(view, emojiLoaded, new Utilities.Callback() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                view.invalidate();
            }
        });
    }

    public void listenOnce(final int i, final Runnable runnable) {
        final NotificationCenterDelegate[] notificationCenterDelegateArr = {notificationCenterDelegate};
        NotificationCenterDelegate notificationCenterDelegate = new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                this.f$0.lambda$listenOnce$10(i, notificationCenterDelegateArr, runnable, i2, i3, objArr);
            }
        };
        addObserver(notificationCenterDelegate, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$listenOnce$10(int i, NotificationCenterDelegate[] notificationCenterDelegateArr, Runnable runnable, int i2, int i3, Object[] objArr) {
        if (i2 != i || notificationCenterDelegateArr[0] == null) {
            return;
        }
        if (runnable != null) {
            runnable.run();
        }
        removeObserver(notificationCenterDelegateArr[0], i);
        notificationCenterDelegateArr[0] = null;
    }

    public void listenOnce(final int i, final Utilities.Callback3<Integer, Object[], Runnable> callback3) {
        final NotificationCenterDelegate[] notificationCenterDelegateArr = {notificationCenterDelegate};
        NotificationCenterDelegate notificationCenterDelegate = new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                this.f$0.lambda$listenOnce$12(i, notificationCenterDelegateArr, callback3, i2, i3, objArr);
            }
        };
        addObserver(notificationCenterDelegate, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$listenOnce$12(final int i, final NotificationCenterDelegate[] notificationCenterDelegateArr, Utilities.Callback3 callback3, int i2, int i3, Object[] objArr) {
        if (i2 != i || notificationCenterDelegateArr[0] == null || callback3 == null) {
            return;
        }
        callback3.run(Integer.valueOf(i3), objArr, new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$listenOnce$11(notificationCenterDelegateArr, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$listenOnce$11(NotificationCenterDelegate[] notificationCenterDelegateArr, int i) {
        removeObserver(notificationCenterDelegateArr[0], i);
        notificationCenterDelegateArr[0] = null;
    }

    private class UniqArrayList<T> extends ArrayList<T> {
        HashSet<T> set;

        private UniqArrayList() {
            this.set = new HashSet<>();
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(T t) {
            if (this.set.add(t)) {
                return super.add(t);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public void add(int i, T t) {
            if (this.set.add(t)) {
                super.add(i, t);
            }
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(Collection<? extends T> collection) {
            Iterator<? extends T> it = collection.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (add(it.next())) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public boolean addAll(int i, Collection<? extends T> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public T remove(int i) {
            T t = (T) super.remove(i);
            if (t != null) {
                this.set.remove(t);
            }
            return t;
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object obj) {
            if (this.set.remove(obj)) {
                return super.remove(obj);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.set.contains(obj);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.set.clear();
            super.clear();
        }
    }
}
