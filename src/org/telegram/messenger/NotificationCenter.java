package org.telegram.messenger;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.collection.MutableIntList;
import androidx.mediarouter.media.GlobalMediaRouter;
import com.android.dx.io.Opcodes;
import com.google.android.gms.cast.MediaError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCenter {
    private static final long EXPIRE_NOTIFICATIONS_TIME = 5017;
    private static final NotificationCenter[] Instance;
    public static final int activeAccountChanged;
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
    public static final int communityPendingRequestsUpdate;
    public static final int communitySwitchedCollapsed;
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
    public static final int dialogsUnreadPollVotesCounterChanged;
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
    public static final int feedNeedReload;
    public static final int feedTabVisibleToggled;
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
    public static final int guardBotDecisionResult;
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
    public static final int loadedAiComposeTones;
    public static final int loadingMessagesFailed;
    public static final int locationPermissionDenied;
    public static final int locationPermissionGranted;
    public static final int mainUserInfoChanged;
    public static final int mediaCountDidLoad;
    public static final int mediaCountsDidLoad;
    public static final int mediaDidLoad;
    public static final int memoryLeakFoundException;
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
    public static int playerColorsChanged;
    public static final int playerDidStartPlaying;
    public static int pluginCatalogUpdated;
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
    public static final int reloadGuestBotHints;
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
    public static final int updatedChatbot;
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
    public static final int walletTransactionsUpdate;
    public static final int walletUpdate;
    public static final int wallpaperSettedToUser;
    public static final int wallpapersDidLoad;
    public static final int wallpapersNeedReload;
    public static final int wasUnableToFindCurrentLocation;
    public static final int webBrowserSettingsUpdate;
    public static final int webRtcMicAmplitudeEvent;
    public static final int webRtcSpeakerAmplitudeEvent;
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

    public interface ObserversGroup {
        ObserversGroup add(int i);

        ObserversGroup addGlobal(int i);

        void removeAllObservers();
    }

    public interface PostponeNotificationCallback {
        boolean needPostpone(int i, int i2, Object[] objArr);
    }

    public static /* synthetic */ void $r8$lambda$x0wyvvU9O011L3KAnB6Ogh8o99k() {
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
        reloadGuestBotHints = i + 82;
        reloadWebappsHints = i + 83;
        newDraftReceived = i + 84;
        recentDocumentsDidLoad = i + 85;
        needAddArchivedStickers = i + 86;
        archivedStickersCountDidLoad = i + 87;
        paymentFinished = i + 88;
        channelRightsUpdated = i + 89;
        openArticle = i + 90;
        articleClosed = i + 91;
        updateMentionsCount = i + 92;
        didUpdatePollResults = i + 93;
        chatOnlineCountDidLoad = i + 94;
        videoLoadingStateChanged = i + 95;
        stopAllHeavyOperations = i + 96;
        startAllHeavyOperations = i + 97;
        stopSpoilers = i + 98;
        startSpoilers = i + 99;
        sendingMessagesChanged = i + 100;
        didUpdateReactions = i + 101;
        didUpdateExtendedMedia = i + 102;
        didVerifyMessagesStickers = i + 103;
        scheduledMessagesUpdated = i + 104;
        newSuggestionsAvailable = i + 105;
        didLoadChatInviter = i + 106;
        didLoadChatAdmins = i + 107;
        historyImportProgressChanged = i + 108;
        stickersImportProgressChanged = i + 109;
        stickersImportComplete = i + 110;
        dialogDeleted = i + 111;
        webViewResultSent = i + 112;
        voiceTranscriptionUpdate = i + 113;
        animatedEmojiDocumentLoaded = i + 114;
        recentEmojiStatusesUpdate = i + 115;
        updateSearchSettings = i + 116;
        updateTranscriptionLock = i + 117;
        businessMessagesUpdated = i + 118;
        quickRepliesUpdated = i + 119;
        quickRepliesDeleted = i + 120;
        bookmarkAdded = i + 121;
        starReactionAnonymousUpdate = i + 122;
        businessLinksUpdated = i + 123;
        businessLinkCreated = i + 124;
        needDeleteBusinessLink = i + 125;
        messageTranslated = i + 126;
        messageTranslating = i + 127;
        dialogIsTranslatable = i + 128;
        dialogTranslate = i + 129;
        didGenerateFingerprintKeyPair = i + 130;
        walletPendingTransactionsChanged = i + 131;
        walletSyncProgressChanged = i + 132;
        httpFileDidLoad = i + 133;
        httpFileDidFailedLoad = i + 134;
        didUpdateConnectionState = i + 135;
        fileUploaded = i + 136;
        fileUploadFailed = i + 137;
        fileUploadProgressChanged = i + 138;
        fileLoadProgressChanged = i + 139;
        fileLoaded = i + 140;
        fileLoadFailed = i + 141;
        filePreparingStarted = i + 142;
        fileNewChunkAvailable = i + 143;
        filePreparingFailed = i + 144;
        dialogsUnreadCounterChanged = i + 145;
        messagePlayingProgressDidChanged = i + 146;
        messagePlayingDidReset = i + 147;
        messagePlayingPlayStateChanged = i + 148;
        messagePlayingDidStart = i + 149;
        messagePlayingDidSeek = i + 150;
        messagePlayingGoingToStop = i + 151;
        recordProgressChanged = i + 152;
        recordStarted = i + 153;
        recordStartError = i + 154;
        recordStopped = i + 155;
        recordPaused = i + 156;
        recordResumed = i + 157;
        screenshotTook = i + 158;
        albumsDidLoad = i + 159;
        audioDidSent = i + 160;
        audioRecordTooShort = i + 161;
        audioRouteChanged = i + 162;
        didStartedCall = i + 163;
        groupCallUpdated = i + 164;
        storyGroupCallUpdated = i + 165;
        groupCallSpeakingUsersUpdated = i + 166;
        groupCallScreencastStateChanged = i + 167;
        activeGroupCallsUpdated = i + 168;
        applyGroupCallVisibleParticipants = i + 169;
        groupCallTypingsUpdated = i + 170;
        didEndCall = i + 171;
        closeInCallActivity = i + 172;
        groupCallVisibilityChanged = i + 173;
        liveStoryUpdated = i + 174;
        liveStoryMessageUpdate = i + 175;
        appDidLogout = i + 176;
        configLoaded = i + 177;
        needDeleteDialog = i + 178;
        newEmojiSuggestionsAvailable = i + 179;
        themeUploadedToServer = i + 180;
        themeUploadError = i + 181;
        dialogFiltersUpdated = i + 182;
        filterSettingsUpdated = i + 183;
        suggestedFiltersLoaded = i + 184;
        updateBotMenuButton = i + 185;
        giftsToUserSent = i + 186;
        didStartedMultiGiftsSelector = i + 187;
        boostedChannelByUser = i + 188;
        boostByChannelCreated = i + 189;
        didUpdatePremiumGiftStickers = i + 190;
        didUpdateTonGiftStickers = i + 191;
        didUpdatePremiumGiftFieldIcon = i + 192;
        storiesEnabledUpdate = i + 193;
        storiesBlocklistUpdate = i + 194;
        storiesLimitUpdate = i + 195;
        storiesSendAsUpdate = i + 196;
        unconfirmedAuthUpdate = i + 197;
        dialogPhotosUpdate = i + 198;
        channelRecommendationsLoaded = i + 199;
        savedMessagesDialogsUpdate = i + 200;
        savedReactionTagsUpdate = i + 201;
        userIsPremiumBlockedUpadted = i + 202;
        int i2 = i + Opcodes.SUB_DOUBLE_2ADDR;
        storyAlbumsCollectionsUpdate = i + 203;
        int i3 = i + Opcodes.MUL_DOUBLE_2ADDR;
        savedMessagesForwarded = i2;
        int i4 = i + Opcodes.DIV_DOUBLE_2ADDR;
        emojiKeywordsLoaded = i3;
        int i5 = i + Opcodes.REM_DOUBLE_2ADDR;
        smsJobStatusUpdate = i4;
        int i6 = i + Opcodes.ADD_INT_LIT16;
        storyQualityUpdate = i5;
        int i7 = i + Opcodes.RSUB_INT;
        openBoostForUsersDialog = i6;
        int i8 = i + Opcodes.MUL_INT_LIT16;
        groupRestrictionsUnlockedByBoosts = i7;
        int i9 = i + Opcodes.DIV_INT_LIT16;
        chatWasBoostedByUser = i8;
        int i10 = i + Opcodes.REM_INT_LIT16;
        groupPackUpdated = i9;
        int i11 = i + Opcodes.AND_INT_LIT16;
        timezonesUpdated = i10;
        int i12 = i + Opcodes.OR_INT_LIT16;
        customStickerCreated = i11;
        int i13 = i + Opcodes.XOR_INT_LIT16;
        premiumFloodWaitReceived = i12;
        int i14 = i + Opcodes.ADD_INT_LIT8;
        availableEffectsUpdate = i13;
        int i15 = i + Opcodes.RSUB_INT_LIT8;
        starOptionsLoaded = i14;
        int i16 = i + Opcodes.MUL_INT_LIT8;
        starGiftOptionsLoaded = i15;
        int i17 = i + Opcodes.DIV_INT_LIT8;
        starGiveawayOptionsLoaded = i16;
        int i18 = i + Opcodes.REM_INT_LIT8;
        starBalanceUpdated = i17;
        int i19 = i + Opcodes.AND_INT_LIT8;
        starTransactionsLoaded = i18;
        int i20 = i + Opcodes.OR_INT_LIT8;
        starSubscriptionsLoaded = i19;
        int i21 = i + Opcodes.XOR_INT_LIT8;
        factCheckLoaded = i20;
        int i22 = i + Opcodes.SHL_INT_LIT8;
        botStarsUpdated = i21;
        int i23 = i + Opcodes.SHR_INT_LIT8;
        botStarsTransactionsLoaded = i22;
        int i24 = i + Opcodes.USHR_INT_LIT8;
        channelStarsUpdated = i23;
        updateAllMessages = i24;
        starGiftsLoaded = i + 227;
        starUserGiftsLoaded = i + 228;
        starUserGiftCollectionsLoaded = i + 229;
        starGiftSoldOut = i + 230;
        int i25 = i + TLRPC.LAYER;
        updateStories = i + 231;
        botDownloadsUpdate = i25;
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
        loadedAiComposeTones = i + 247;
        updatedChatbot = i + 248;
        walletUpdate = i + 249;
        int i26 = i + Opcodes.INVOKE_POLYMORPHIC_RANGE;
        walletTransactionsUpdate = i + 250;
        int i27 = i + Opcodes.INVOKE_CUSTOM;
        activeAccountChanged = i26;
        int i28 = i + Opcodes.INVOKE_CUSTOM_RANGE;
        pushMessagesUpdated = i27;
        int i29 = i + Opcodes.CONST_METHOD_HANDLE;
        wallpapersDidLoad = i28;
        wallpapersNeedReload = i29;
        didReceiveSmsCode = i + 255;
        int i30 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED;
        didReceiveCall = i + 256;
        int i31 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_REMOVED;
        emojiLoaded = i30;
        int i32 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_CHANGED;
        invalidateMotionBackground = i31;
        int i33 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_VOLUME_CHANGED;
        closeOtherAppActivities = i32;
        int i34 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED;
        cameraInitied = i33;
        int i35 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_SELECTED;
        didReplacedPhotoInMemCache = i34;
        int i36 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_UNSELECTED;
        didSetNewTheme = i35;
        int i37 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED;
        themeListUpdated = i36;
        int i38 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_CONNECTED;
        didApplyNewTheme = i37;
        int i39 = i + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_DISCONNECTED;
        themeAccentListUpdated = i38;
        needCheckSystemBarColors = i39;
        needShareTheme = i + 267;
        needSetDayNightTheme = i + 268;
        goingToPreviewTheme = i + 269;
        locationPermissionGranted = i + 270;
        locationPermissionDenied = i + 271;
        reloadInterface = i + 272;
        suggestedLangpack = i + 273;
        didSetNewWallpapper = i + 274;
        proxySettingsChanged = i + 275;
        proxyCheckDone = i + 276;
        proxyChangedByRotation = i + 277;
        proxyPingUpdated = i + 278;
        liveLocationsChanged = i + 279;
        newLocationAvailable = i + 280;
        liveLocationsCacheChanged = i + 281;
        notificationsCountUpdated = i + 282;
        playerDidStartPlaying = i + 283;
        closeSearchByActiveAction = i + 284;
        messagePlayingSpeedChanged = i + 285;
        screenStateChanged = i + 286;
        didClearDatabase = i + 287;
        voipServiceCreated = i + 288;
        webRtcMicAmplitudeEvent = i + 289;
        webRtcSpeakerAmplitudeEvent = i + 290;
        showBulletin = i + 291;
        appUpdateAvailable = i + 292;
        appUpdateLoading = i + 293;
        onDatabaseMigration = i + 294;
        onEmojiInteractionsReceived = i + 295;
        emojiPreviewThemesChanged = i + 296;
        reactionsDidLoad = i + 297;
        attachMenuBotsDidLoad = i + 298;
        chatAvailableReactionsUpdated = i + 299;
        int i40 = i + MediaError.DetailedErrorCode.SEGMENT_NETWORK;
        dialogsUnreadReactionsCounterChanged = i + 300;
        dialogsUnreadPollVotesCounterChanged = i40;
        onDatabaseOpened = i + 302;
        onDownloadingFilesChanged = i + 303;
        onActivityResultReceived = i + 304;
        onRequestPermissionResultReceived = i + 305;
        int i41 = i + HttpStatusCodesKt.HTTP_TEMP_REDIRECT;
        onUserRingtonesUpdated = i + 306;
        int i42 = i + HttpStatusCodesKt.HTTP_PERM_REDIRECT;
        currentUserPremiumStatusChanged = i41;
        premiumPromoUpdated = i42;
        premiumStatusChangedGlobal = i + 309;
        int i43 = i + MediaError.DetailedErrorCode.HLS_NETWORK_MASTER_PLAYLIST;
        currentUserShowLimitReachedDialog = i + 310;
        int i44 = i + MediaError.DetailedErrorCode.HLS_NETWORK_PLAYLIST;
        billingProductDetailsUpdated = i43;
        int i45 = i + MediaError.DetailedErrorCode.HLS_NETWORK_NO_KEY_RESPONSE;
        billingConfirmPurchaseError = i44;
        int i46 = i + MediaError.DetailedErrorCode.HLS_NETWORK_KEY_LOAD;
        premiumStickersPreviewLoaded = i45;
        int i47 = i + MediaError.DetailedErrorCode.HLS_NETWORK_INVALID_SEGMENT;
        userEmojiStatusUpdated = i46;
        int i48 = i + MediaError.DetailedErrorCode.HLS_SEGMENT_PARSING;
        requestPermissions = i47;
        permissionsGranted = i48;
        activityPermissionsGranted = i + 317;
        topicsDidLoaded = i + 318;
        chatSwitchedForum = i + 319;
        int i49 = i + MediaError.DetailedErrorCode.DASH_NETWORK;
        didUpdateGlobalAutoDeleteTimer = i + 320;
        int i50 = i + MediaError.DetailedErrorCode.DASH_NO_INIT;
        onDatabaseReset = i49;
        wallpaperSettedToUser = i50;
        storiesUpdated = i + 323;
        storyDeleted = i + 324;
        storiesListUpdated = i + 325;
        storiesDraftsUpdated = i + 326;
        chatlistFolderUpdate = i + 327;
        uploadStoryProgress = i + 328;
        uploadStoryEnd = i + 329;
        int i51 = i + MediaError.DetailedErrorCode.SMOOTH_NETWORK;
        customTypefacesLoaded = i + 330;
        int i52 = i + MediaError.DetailedErrorCode.SMOOTH_NO_MEDIA_DATA;
        stealthModeChanged = i51;
        onReceivedChannelDifference = i52;
        storiesReadUpdated = i + 333;
        nearEarEvent = i + 334;
        translationModelDownloading = i + 335;
        translationModelDownloaded = i + 336;
        botForumTopicDidCreate = i + 337;
        botForumDraftUpdate = i + 338;
        botForumDraftDelete = i + 339;
        tlSchemeParseException = i + 340;
        memoryLeakFoundException = i + 341;
        callTabsVisibleToggled = i + 342;
        contactsTabVisibleToggled = i + 343;
        feedTabVisibleToggled = i + 344;
        feedNeedReload = i + 345;
        contactsPermissionBadgeCheck = i + 346;
        guardBotDecisionResult = i + 347;
        webBrowserSettingsUpdate = i + 348;
        communityPendingRequestsUpdate = i + 349;
        communitySwitchedCollapsed = i + 350;
        nowPlayingUpdated = i + 351;
        rolesUpdated = i + 352;
        servicesUpdated = i + 353;
        pluginsUpdated = i + 354;
        pluginIsNotResponding = i + 355;
        pluginSettingsRegistered = i + 356;
        pluginSettingsUnregistered = i + 357;
        pluginMenuItemsUpdated = i + 358;
        iconPackUpdated = i + 359;
        pillStackSettingsChanged = i + 360;
        pillStackLayoutChanged = i + 361;
        pluginsPySdkInfoChanged = i + 362;
        pluginCatalogUpdated = i + 363;
        totalEvents = i + 365;
        playerColorsChanged = i + 364;
        Instance = new NotificationCenter[16];
    }

    public static class DelayedPost {
        private final Object[] args;
        private final int id;

        private DelayedPost(int i, Object[] objArr) {
            this.id = i;
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
            NotificationCenter$$ExternalSyntheticLambda5 notificationCenter$$ExternalSyntheticLambda5 = new NotificationCenter$$ExternalSyntheticLambda5(this);
            this.checkForExpiredNotifications = notificationCenter$$ExternalSyntheticLambda5;
            AndroidUtilities.runOnUIThread(notificationCenter$$ExternalSyntheticLambda5, EXPIRE_NOTIFICATIONS_TIME);
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
        if (jMin != LongCompanionObject.MAX_VALUE) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkForExpiredNotifications$0();
                }
            }, Math.max(17L, EXPIRE_NOTIFICATIONS_TIME - (jElapsedRealtime - jMin)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkForExpiredNotifications$0() {
        this.checkForExpiredNotifications = new NotificationCenter$$ExternalSyntheticLambda5(this);
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
        ArrayList<DelayedPost> arrayList;
        int i = 0;
        if (!this.delayedPosts.isEmpty()) {
            this.delayedPostsTmp.clear();
            this.delayedPostsTmp.addAll(this.delayedPosts);
            this.delayedPosts.clear();
            int i2 = 0;
            while (true) {
                int size = this.delayedPostsTmp.size();
                arrayList = this.delayedPostsTmp;
                if (i2 >= size) {
                    break;
                }
                DelayedPost delayedPost = arrayList.get(i2);
                postNotificationNameInternal(delayedPost.id, true, delayedPost.args);
                i2++;
            }
            arrayList.clear();
        }
        if (this.delayedRunnables.isEmpty()) {
            return;
        }
        this.delayedRunnablesTmp.clear();
        this.delayedRunnablesTmp.addAll(this.delayedRunnables);
        this.delayedRunnables.clear();
        while (true) {
            int size2 = this.delayedRunnablesTmp.size();
            ArrayList<Runnable> arrayList2 = this.delayedRunnablesTmp;
            if (i < size2) {
                AndroidUtilities.runOnUIThread(arrayList2.get(i));
                i++;
            } else {
                arrayList2.clear();
                return;
            }
        }
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda7
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
        SparseArray<ArrayList<NotificationCenterDelegate>> sparseArray;
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("postNotificationName allowed only from MAIN thread");
            return;
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
        if (i4 != 0) {
            return;
        }
        if (this.removeAfterBroadcast.size() != 0) {
            int i5 = 0;
            while (true) {
                int size = this.removeAfterBroadcast.size();
                sparseArray = this.removeAfterBroadcast;
                if (i5 >= size) {
                    break;
                }
                int iKeyAt = sparseArray.keyAt(i5);
                ArrayList<NotificationCenterDelegate> arrayList2 = this.removeAfterBroadcast.get(iKeyAt);
                for (int i6 = 0; i6 < arrayList2.size(); i6++) {
                    removeObserver(arrayList2.get(i6), iKeyAt);
                }
                i5++;
            }
            sparseArray.clear();
        }
        if (this.addAfterBroadcast.size() == 0) {
            return;
        }
        int i7 = 0;
        while (true) {
            int size2 = this.addAfterBroadcast.size();
            SparseArray<ArrayList<NotificationCenterDelegate>> sparseArray2 = this.addAfterBroadcast;
            if (i7 < size2) {
                int iKeyAt2 = sparseArray2.keyAt(i7);
                ArrayList<NotificationCenterDelegate> arrayList3 = this.addAfterBroadcast.get(iKeyAt2);
                for (int i8 = 0; i8 < arrayList3.size(); i8++) {
                    addObserverInternal(arrayList3.get(i8), iKeyAt2);
                }
                i7++;
            } else {
                sparseArray2.clear();
                return;
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

    public static final class ObserversGroupImpl implements ObserversGroup {
        private NotificationCenterDelegate delegate;
        private ObserversGroupImpl globalGroup;
        private final MutableIntList ids;
        private NotificationCenter notificationCenter;

        private ObserversGroupImpl(NotificationCenter notificationCenter, NotificationCenterDelegate notificationCenterDelegate) {
            this.ids = new MutableIntList();
            this.notificationCenter = notificationCenter;
            this.delegate = notificationCenterDelegate;
        }

        @Override // org.telegram.messenger.NotificationCenter.ObserversGroup
        public ObserversGroup add(int i) {
            if (this.delegate == null) {
                return this;
            }
            this.ids.add(i);
            this.notificationCenter.addObserverInternal(this.delegate, i);
            return this;
        }

        @Override // org.telegram.messenger.NotificationCenter.ObserversGroup
        public ObserversGroup addGlobal(int i) {
            if (this.delegate == null) {
                return this;
            }
            if (this.globalGroup == null) {
                this.globalGroup = new ObserversGroupImpl(NotificationCenter.getGlobalInstance(), this.delegate);
            }
            this.globalGroup.add(i);
            return this;
        }

        @Override // org.telegram.messenger.NotificationCenter.ObserversGroup
        public void removeAllObservers() {
            if (this.delegate == null) {
                return;
            }
            ObserversGroupImpl observersGroupImpl = this.globalGroup;
            if (observersGroupImpl != null) {
                observersGroupImpl.removeAllObservers();
                this.globalGroup = null;
            }
            int size = this.ids.get_size();
            for (int i = 0; i < size; i++) {
                this.notificationCenter.removeObserver(this.delegate, this.ids.get(i));
            }
            this.ids.clear();
            this.notificationCenter = null;
            this.delegate = null;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class WeakObserversGroupImpl implements ObserversGroup, NotificationCenterDelegate {
        private final ObserversGroupImpl observersGroup;
        private final WeakReference<NotificationCenterDelegate> reference;

        private WeakObserversGroupImpl(NotificationCenter notificationCenter, NotificationCenterDelegate notificationCenterDelegate) {
            this.observersGroup = new ObserversGroupImpl(this);
            this.reference = new WeakReference<>(notificationCenterDelegate);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            NotificationCenterDelegate notificationCenterDelegate = this.reference.get();
            if (notificationCenterDelegate != null) {
                notificationCenterDelegate.didReceivedNotification(i, i2, objArr);
                return;
            }
            FileLog.m1038e("MEMORY_LEAK observer " + i + " with destroyed WeakReference");
            removeAllObservers();
        }

        @Override // org.telegram.messenger.NotificationCenter.ObserversGroup
        public ObserversGroup add(int i) {
            return this.observersGroup.add(i);
        }

        @Override // org.telegram.messenger.NotificationCenter.ObserversGroup
        public ObserversGroup addGlobal(int i) {
            return this.observersGroup.addGlobal(i);
        }

        @Override // org.telegram.messenger.NotificationCenter.ObserversGroup
        public void removeAllObservers() {
            this.observersGroup.removeAllObservers();
        }
    }

    public ObserversGroup createObserversGroup(NotificationCenterDelegate notificationCenterDelegate) {
        return new ObserversGroupImpl(notificationCenterDelegate);
    }

    public ObserversGroup createWeakObserversGroup(NotificationCenterDelegate notificationCenterDelegate) {
        return new WeakObserversGroupImpl(notificationCenterDelegate);
    }

    @Deprecated(since = "use createWeakObserversGroup or createObserversGroup")
    public void addObserver(NotificationCenterDelegate notificationCenterDelegate, int i) {
        addObserverInternal(notificationCenterDelegate, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addObserverInternal(NotificationCenterDelegate notificationCenterDelegate, int i) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("addObserver allowed only from MAIN thread");
            return;
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
        FileLog.m1040e(new RuntimeException("Total observers more than 1000, need check for memory leak. " + i));
    }

    private ArrayList<NotificationCenterDelegate> createArrayForId(int i) {
        if (i == didReplacedPhotoInMemCache || i == stopAllHeavyOperations || i == startAllHeavyOperations) {
            return new UniqArrayList();
        }
        return new ArrayList<>();
    }

    public void removeObserver(NotificationCenterDelegate notificationCenterDelegate, int i) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("removeObserver allowed only from MAIN thread");
            return;
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
            GlShader$$ExternalSyntheticBUOutline1.m1109m("PostponeNotificationsCallback allowed only from MAIN thread");
        } else {
            if (this.postponeCallbackList.contains(postponeNotificationCallback)) {
                return;
            }
            this.postponeCallbackList.add(postponeNotificationCallback);
        }
    }

    public void removePostponeNotificationsCallback(PostponeNotificationCallback postponeNotificationCallback) {
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("removePostponeNotificationsCallback allowed only from MAIN thread");
        } else if (this.postponeCallbackList.remove(postponeNotificationCallback)) {
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

    public static class AllowedNotifications {
        int[] allowedIds;
        final long time;

        private AllowedNotifications() {
            this.time = SystemClock.elapsedRealtime();
        }
    }

    public Runnable listen(final View view, final int i, final Utilities.Callback<Object[]> callback) {
        if (view == null || callback == null) {
            return new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.$r8$lambda$x0wyvvU9O011L3KAnB6Ogh8o99k();
                }
            };
        }
        final NotificationCenterDelegate notificationCenterDelegate = new NotificationCenterDelegate() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                NotificationCenter.$r8$lambda$VGHAYRtonj4FbETBz8XLZzMdH_8(i, callback, i2, i3, objArr);
            }
        };
        final View.OnAttachStateChangeListener onAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: org.telegram.messenger.NotificationCenter.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                NotificationCenter.this.addObserverInternal(notificationCenterDelegate, i);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                NotificationCenter.this.removeObserver(notificationCenterDelegate, i);
            }
        };
        view.addOnAttachStateChangeListener(onAttachStateChangeListener);
        return new Runnable() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$listen$5(view, onAttachStateChangeListener, notificationCenterDelegate, i);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$VGHAYRtonj4FbETBz8XLZzMdH_8(int i, Utilities.Callback callback, int i2, int i3, Object[] objArr) {
        if (i2 == i) {
            callback.run(objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$listen$5(View view, View.OnAttachStateChangeListener onAttachStateChangeListener, NotificationCenterDelegate notificationCenterDelegate, int i) {
        view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        removeObserver(notificationCenterDelegate, i);
    }

    public static void listenEmojiLoading(final View view) {
        getGlobalInstance().listen(view, emojiLoaded, new Utilities.Callback() { // from class: org.telegram.messenger.NotificationCenter$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                view.invalidate();
            }
        });
    }

    public class UniqArrayList<T> extends ArrayList<T> {
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

    public static void sanitize() {
        sanitizeInternal(globalInstance);
        for (NotificationCenter notificationCenter : Instance) {
            sanitizeInternal(notificationCenter);
        }
    }

    private static void sanitizeInternal(NotificationCenter notificationCenter) {
        if (notificationCenter == null) {
            return;
        }
        for (int i = 0; i < notificationCenter.observers.size(); i++) {
            int iKeyAt = notificationCenter.observers.keyAt(i);
            ArrayList<NotificationCenterDelegate> arrayListValueAt = notificationCenter.observers.valueAt(i);
            for (int size = arrayListValueAt.size() - 1; size >= 0; size--) {
                Object obj = (NotificationCenterDelegate) arrayListValueAt.get(size);
                if (!(obj instanceof WeakObserversGroupImpl) && !(obj instanceof BaseController)) {
                    if (obj instanceof Context) {
                        if (isContextDestroyed((Context) obj)) {
                            FileLog.m1038e("MEMORY_LEAK observer " + iKeyAt + " with destroyed Context");
                            arrayListValueAt.remove(size);
                        }
                    } else if (obj instanceof View) {
                        if (isContextDestroyed(((View) obj).getContext())) {
                            FileLog.m1038e("MEMORY_LEAK observer " + iKeyAt + " with View with destroyed Context");
                            arrayListValueAt.remove(size);
                        }
                    } else if (obj instanceof BaseFragment) {
                        if (((BaseFragment) obj).isFinished) {
                            FileLog.m1038e("MEMORY_LEAK observer " + iKeyAt + " with destroyed BaseFragment");
                            arrayListValueAt.remove(size);
                        }
                    } else if ((obj instanceof BottomSheet) && ((BottomSheet) obj).isDismissed()) {
                        FileLog.m1038e("MEMORY_LEAK observer " + iKeyAt + " with destroyed BottomSheet");
                        arrayListValueAt.remove(size);
                    }
                }
            }
        }
    }

    private static boolean isContextDestroyed(Context context) {
        if (context == null) {
            return false;
        }
        if (context instanceof Activity) {
            return ((Activity) context).isDestroyed();
        }
        if (context instanceof ContextWrapper) {
            return isContextDestroyed(((ContextWrapper) context).getBaseContext());
        }
        return false;
    }

    public int getObserversSize() {
        int size = 0;
        for (int i = 0; i < this.observers.size(); i++) {
            ArrayList<NotificationCenterDelegate> arrayListValueAt = this.observers.valueAt(i);
            if (arrayListValueAt != null) {
                size += arrayListValueAt.size();
            }
        }
        return size;
    }

    public SparseArray<Integer> dumpObservers() {
        SparseArray<Integer> sparseArray = new SparseArray<>();
        for (int i = 0; i < this.observers.size(); i++) {
            int iKeyAt = this.observers.keyAt(i);
            ArrayList<NotificationCenterDelegate> arrayListValueAt = this.observers.valueAt(i);
            sparseArray.put(iKeyAt, Integer.valueOf(arrayListValueAt != null ? arrayListValueAt.size() : 0));
        }
        return sparseArray;
    }

    public static void diffObserverDumps(SparseArray<Integer> sparseArray, SparseArray<Integer> sparseArray2) {
        for (int i = 0; i < sparseArray.size(); i++) {
            int iKeyAt = sparseArray.keyAt(i);
            int iIntValue = sparseArray.valueAt(i).intValue();
            int iIntValue2 = sparseArray2.get(iKeyAt, -1).intValue();
            if (iIntValue2 == -1) {
                Log.i("ObserverDiff", "key=" + iKeyAt + " REMOVED (was " + iIntValue + ")");
            } else if (iIntValue != iIntValue2) {
                Log.i("ObserverDiff", "key=" + iKeyAt + " CHANGED: " + iIntValue + " -> " + iIntValue2);
            }
        }
        for (int i2 = 0; i2 < sparseArray2.size(); i2++) {
            int iKeyAt2 = sparseArray2.keyAt(i2);
            if (sparseArray.get(iKeyAt2, -1).intValue() == -1) {
                Log.i("ObserverDiff", "key=" + iKeyAt2 + " ADDED (size=" + sparseArray2.valueAt(i2) + ")");
            }
        }
    }
}
