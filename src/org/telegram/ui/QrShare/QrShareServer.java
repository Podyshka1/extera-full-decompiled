package org.telegram.ui.QrShare;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.Arrays;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stars;

/* JADX INFO: loaded from: classes7.dex */
final class QrShareServer implements NotificationCenter.NotificationCenterDelegate {
    private static final LongSparseArray<LocalTheme>[] localThemes = new LongSparseArray[16];
    private final int account;
    private boolean backdropWaitsForIds;
    private TLRPC.TL_exportedContactToken contactToken;
    private long contactTokenRequestTime;
    private boolean freeModeRestored;
    private final Link link;
    private TLRPC.ShareTheme loadedTheme;
    private TLRPC.ShareTheme pendingTheme;
    private boolean released;
    private boolean themeChangedByUser;
    private int themeRequestId;
    private TLRPC.TL_exportedNoPaidMessagesToken token;
    private int tokenRequestId;
    private long tokenTime;
    private final QrShareView view;
    private int mode = 0;
    private final Runnable tick = new Runnable() { // from class: org.telegram.ui.QrShare.QrShareServer$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.tick();
        }
    };
    private final Runnable saveTheme = new Runnable() { // from class: org.telegram.ui.QrShare.QrShareServer$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.saveTheme();
        }
    };

    public static final class Link {
        final String caption;
        final boolean captionIsUsername;
        final boolean contactToken;
        final long peerId;
        final boolean self;
        final boolean themeEditable;
        final String url;

        public Link(String str, String str2, boolean z, boolean z2, boolean z3, long j, boolean z4) {
            this.url = str;
            this.caption = str2;
            this.captionIsUsername = z;
            this.contactToken = z2;
            this.self = z3;
            this.peerId = j;
            this.themeEditable = z4;
        }
    }

    public static Link resolveLink(int i, long j, long j2) {
        MessagesController messagesController = MessagesController.getInstance(i);
        String str = "https://" + messagesController.linkPrefix + "/";
        String userName = _UrlKt.FRAGMENT_ENCODE_SET;
        if (j == 0 && j2 != 0) {
            TLRPC.Chat chat = messagesController.getChat(Long.valueOf(j2));
            String publicUsername = ChatObject.getPublicUsername(chat);
            if (publicUsername != null) {
                return new Link(str.concat(publicUsername), publicUsername, true, false, false, -j2, ChatObject.canChangeChatInfo(chat));
            }
            if (chat != null) {
                userName = chat.title;
            }
            return new Link(str, userName, false, false, false, -j2, false);
        }
        boolean z = j == UserConfig.getInstance(i).getClientUserId();
        TLRPC.User user = messagesController.getUser(Long.valueOf(j));
        String publicUsername2 = user != null ? UserObject.getPublicUsername(user) : null;
        if (publicUsername2 != null) {
            return new Link(str.concat(publicUsername2), publicUsername2, true, false, z, j, z);
        }
        if (!z) {
            if (user != null) {
                userName = UserObject.getUserName(user);
            }
            return new Link(str, userName, false, false, false, j, false);
        }
        if (user != null && user.phone != null && isPhonePublic(i)) {
            boolean zStartsWith = user.phone.startsWith("+");
            String str2 = user.phone;
            if (!zStartsWith) {
                str2 = "+" + str2;
            }
            String str3 = str2;
            return new Link(str + str3, str3, false, false, true, j, true);
        }
        TLRPC.TL_exportedContactToken cachedContactToken = messagesController.getCachedContactToken();
        String str4 = cachedContactToken != null ? cachedContactToken.url : null;
        if (user != null) {
            userName = UserObject.getUserName(user);
        }
        return new Link(str4, userName, false, true, true, j, true);
    }

    public QrShareServer(int i, QrShareView qrShareView, Link link) {
        this.account = i;
        this.view = qrShareView;
        this.link = link;
    }

    public void start() {
        this.view.setTimerOnly(this.link.contactToken);
        this.view.setTemporaryLink(this.link.contactToken);
        LocalTheme localTheme = localThemes(this.account).get(this.link.peerId);
        TLRPC.ShareTheme shareThemeMemoryFullTheme = localTheme != null ? localTheme.theme : memoryFullTheme();
        if (shareThemeMemoryFullTheme != null) {
            this.view.setInstantTheme(true);
            applyTheme(shareThemeMemoryFullTheme);
            this.view.setInstantTheme(false);
        }
        this.view.setThemeEditable(this.link.themeEditable);
        Link link = this.link;
        if (link.themeEditable) {
            this.view.setGiftsOwner(link.peerId);
        }
        if (!this.link.self) {
            this.view.setFeeStars(0L);
            loadTheme();
            return;
        }
        NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.privacyRulesUpdated);
        if (this.link.contactToken) {
            TLRPC.TL_exportedContactToken cachedContactToken = MessagesController.getInstance(this.account).getCachedContactToken();
            this.contactToken = cachedContactToken;
            if (cachedContactToken == null) {
                requestContactToken();
            } else {
                this.view.setLinkExpires(cachedContactToken.expires);
            }
        }
        updateFee();
        loadTheme();
        tick();
    }

    public void release() {
        this.released = true;
        NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.privacyRulesUpdated);
        NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.userInfoDidLoad);
        NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.chatInfoDidLoad);
        AndroidUtilities.cancelRunOnUIThread(this.tick);
        AndroidUtilities.cancelRunOnUIThread(this.saveTheme);
        saveTheme();
        if (this.tokenRequestId != 0) {
            ConnectionsManager.getInstance(this.account).cancelRequest(this.tokenRequestId, true);
            this.tokenRequestId = 0;
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TLRPC.ChatFull chatFull;
        if (i == NotificationCenter.privacyRulesUpdated) {
            updateFee();
            return;
        }
        if (i == NotificationCenter.userInfoDidLoad) {
            if (((Long) objArr[0]).longValue() == this.link.peerId) {
                onFullTheme(((TLRPC.UserFull) objArr[1]).share_theme);
            }
        } else if (i == NotificationCenter.chatInfoDidLoad && (chatFull = (TLRPC.ChatFull) objArr[0]) != null && (-chatFull.id) == this.link.peerId) {
            onFullTheme(chatFull.share_theme);
        }
    }

    private SharedPreferences getPrefs() {
        return MessagesController.getMainSettings(this.account);
    }

    private void updateFee() {
        long feeStars = getFeeStars();
        this.view.setFeeStars(feeStars);
        if (feeStars <= 0 || this.freeModeRestored) {
            return;
        }
        this.freeModeRestored = true;
        if (!this.link.contactToken && this.mode == 0 && getPrefs().getBoolean("qrNoPaidPermanent", false)) {
            this.mode = 2;
            this.view.restoreFreeMode(false);
            TLRPC.TL_exportedNoPaidMessagesToken cachedPermanentToken = getCachedPermanentToken();
            this.token = cachedPermanentToken;
            if (cachedPermanentToken != null) {
                this.view.setFreeLink(getFreeLink(cachedPermanentToken));
            }
            requestToken(false, false);
        }
    }

    private long getFeeStars() {
        return getPaidMessagesStars();
    }

    private long getPaidMessagesStars() {
        TLRPC.GlobalPrivacySettings globalPrivacySettings = ContactsController.getInstance(this.account).getGlobalPrivacySettings();
        if (globalPrivacySettings == null) {
            ContactsController.getInstance(this.account).loadGlobalPrivacySetting();
            return 0L;
        }
        return globalPrivacySettings.noncontact_peers_paid_stars;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tick() {
        AndroidUtilities.cancelRunOnUIThread(this.tick);
        if (this.released) {
            return;
        }
        if (this.mode == 1 && isTemporaryCodeDue()) {
            requestToken(false, true);
        }
        if (this.link.contactToken && ((this.contactToken == null || System.currentTimeMillis() / 1000 >= this.contactToken.expires) && SystemClock.elapsedRealtime() - this.contactTokenRequestTime >= 5000)) {
            requestContactToken();
        }
        AndroidUtilities.runOnUIThread(this.tick, 1000L);
    }

    private void requestContactToken() {
        this.contactTokenRequestTime = SystemClock.elapsedRealtime();
        MessagesController.getInstance(this.account).requestContactToken(new Utilities.Callback() { // from class: org.telegram.ui.QrShare.QrShareServer$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$requestContactToken$0((TLRPC.TL_exportedContactToken) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestContactToken$0(TLRPC.TL_exportedContactToken tL_exportedContactToken) {
        if (this.released || tL_exportedContactToken == null) {
            return;
        }
        this.contactToken = tL_exportedContactToken;
        this.contactTokenRequestTime = 0L;
        this.view.setLinks(tL_exportedContactToken.url, this.link.caption, false);
        this.view.setLinkExpires(tL_exportedContactToken.expires);
    }

    public void onFeeMode(int i) {
        TLRPC.TL_exportedNoPaidMessagesToken cachedPermanentToken;
        if (this.mode == i) {
            return;
        }
        if (this.link.contactToken && i == 2) {
            i = 1;
        }
        this.mode = i;
        getPrefs().edit().putBoolean("qrNoPaidPermanent", this.mode == 2).apply();
        int i2 = this.mode;
        if (i2 == 0) {
            if (this.tokenRequestId != 0) {
                ConnectionsManager.getInstance(this.account).cancelRequest(this.tokenRequestId, true);
                this.tokenRequestId = 0;
                return;
            }
            return;
        }
        if (i2 == 2 && (cachedPermanentToken = getCachedPermanentToken()) != null) {
            this.token = cachedPermanentToken;
            this.view.setFreeLink(getFreeLink(cachedPermanentToken));
        }
        requestToken(false, this.mode == 1);
    }

    public void onResetCode() {
        requestToken(true, this.mode == 1);
    }

    private boolean isTemporaryCodeDue() {
        if (this.tokenRequestId != 0) {
            return false;
        }
        if (this.token == null || SystemClock.elapsedRealtime() - this.tokenTime >= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
            return true;
        }
        return isTemporary(this.token) && ConnectionsManager.getInstance(this.account).getCurrentTime() >= this.token.expires + (-5);
    }

    private static boolean isTemporary(TLRPC.TL_exportedNoPaidMessagesToken tL_exportedNoPaidMessagesToken) {
        return (tL_exportedNoPaidMessagesToken == null || tL_exportedNoPaidMessagesToken.expires == 0) ? false : true;
    }

    private void requestToken(boolean z, final boolean z2) {
        if (this.tokenRequestId != 0) {
            ConnectionsManager.getInstance(this.account).cancelRequest(this.tokenRequestId, true);
        }
        TLRPC.TL_contacts_exportNoPaidMessagesToken tL_contacts_exportNoPaidMessagesToken = new TLRPC.TL_contacts_exportNoPaidMessagesToken();
        tL_contacts_exportNoPaidMessagesToken.revoke = z;
        tL_contacts_exportNoPaidMessagesToken.temporary = z2;
        int iSendRequestTyped = ConnectionsManager.getInstance(this.account).sendRequestTyped(tL_contacts_exportNoPaidMessagesToken, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.QrShare.QrShareServer$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$requestToken$1(iArr, z2, (TLRPC.TL_exportedNoPaidMessagesToken) obj, (TLRPC.TL_error) obj2);
            }
        });
        this.tokenRequestId = iSendRequestTyped;
        final int[] iArr = {iSendRequestTyped};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestToken$1(int[] iArr, boolean z, TLRPC.TL_exportedNoPaidMessagesToken tL_exportedNoPaidMessagesToken, TLRPC.TL_error tL_error) {
        if (this.tokenRequestId != iArr[0] || this.released) {
            return;
        }
        this.tokenRequestId = 0;
        if (tL_exportedNoPaidMessagesToken == null) {
            String str = tL_error != null ? tL_error.text : null;
            FileLog.m1038e("QrShare: exportNoPaidMessagesToken " + str);
            TLRPC.TL_exportedNoPaidMessagesToken tL_exportedNoPaidMessagesToken2 = this.token;
            if (tL_exportedNoPaidMessagesToken2 == null || isTemporary(tL_exportedNoPaidMessagesToken2) != z) {
                this.mode = 0;
                getPrefs().edit().putBoolean("qrNoPaidPermanent", false).apply();
                this.view.cancelFree(str);
                return;
            } else {
                if (str != null) {
                    this.view.showError(str);
                    return;
                }
                return;
            }
        }
        int i = this.mode;
        if (i != 0) {
            if (z != (i == 1)) {
                return;
            }
            if (!isTemporary(tL_exportedNoPaidMessagesToken)) {
                getPrefs().edit().putString("qrNoPaidToken", tL_exportedNoPaidMessagesToken.token).putString("qrNoPaidUrl", tL_exportedNoPaidMessagesToken.url).apply();
            }
            this.token = tL_exportedNoPaidMessagesToken;
            this.tokenTime = SystemClock.elapsedRealtime();
            this.view.setFreeLink(getFreeLink(tL_exportedNoPaidMessagesToken));
        }
    }

    private TLRPC.TL_exportedNoPaidMessagesToken getCachedPermanentToken() {
        String string = getPrefs().getString("qrNoPaidToken", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        TLRPC.TL_exportedNoPaidMessagesToken tL_exportedNoPaidMessagesToken = new TLRPC.TL_exportedNoPaidMessagesToken();
        tL_exportedNoPaidMessagesToken.token = string;
        tL_exportedNoPaidMessagesToken.url = getPrefs().getString("qrNoPaidUrl", null);
        return tL_exportedNoPaidMessagesToken;
    }

    private String getFreeLink(TLRPC.TL_exportedNoPaidMessagesToken tL_exportedNoPaidMessagesToken) {
        if (TextUtils.isEmpty(tL_exportedNoPaidMessagesToken.url)) {
            Link link = this.link;
            if (link.url != null && !link.contactToken) {
                return this.link.url + "?free=" + tL_exportedNoPaidMessagesToken.token;
            }
        }
        if (TextUtils.isEmpty(tL_exportedNoPaidMessagesToken.url)) {
            return null;
        }
        return tL_exportedNoPaidMessagesToken.url;
    }

    private void loadTheme() {
        MessagesController messagesController = MessagesController.getInstance(this.account);
        long j = this.link.peerId;
        if (j > 0) {
            TLRPC.User user = messagesController.getUser(Long.valueOf(j));
            if (user == null) {
                return;
            }
            NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.userInfoDidLoad);
            messagesController.loadUserInfo(user, true, 0);
            return;
        }
        TLRPC.Chat chat = messagesController.getChat(Long.valueOf(-j));
        if (chat == null) {
            return;
        }
        NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.chatInfoDidLoad);
        MessagesStorage.getInstance(this.account).loadChatInfo(chat.id, ChatObject.isChannel(chat), null, true, false);
    }

    private void onFullTheme(TLRPC.ShareTheme shareTheme) {
        if (this.released) {
            return;
        }
        TLRPC.ShareTheme shareThemeThemeOf = themeOf(shareTheme);
        LocalTheme localTheme = localThemes(this.account).get(this.link.peerId);
        if (localTheme != null) {
            if (same(shareThemeThemeOf, localTheme.theme)) {
                localThemes(this.account).remove(this.link.peerId);
            } else {
                if (localTheme.savedAt == 0 || SystemClock.elapsedRealtime() - localTheme.savedAt < NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
                    putFullTheme(localTheme.theme);
                    return;
                }
                localThemes(this.account).remove(this.link.peerId);
            }
        }
        if (this.themeChangedByUser) {
            return;
        }
        TLRPC.ShareTheme shareTheme2 = this.loadedTheme;
        if (shareTheme2 == null) {
            this.view.setInstantTheme(true);
            applyTheme(shareThemeThemeOf);
            this.view.setInstantTheme(false);
        } else {
            if (same(shareThemeThemeOf, shareTheme2)) {
                return;
            }
            applyTheme(shareThemeThemeOf);
        }
    }

    private TLRPC.ShareTheme memoryFullTheme() {
        MessagesController messagesController = MessagesController.getInstance(this.account);
        long j = this.link.peerId;
        if (j > 0) {
            TLRPC.UserFull userFull = messagesController.getUserFull(j);
            if (userFull != null) {
                return themeOf(userFull.share_theme);
            }
            return null;
        }
        TLRPC.ChatFull chatFull = messagesController.getChatFull(-j);
        if (chatFull != null) {
            return themeOf(chatFull.share_theme);
        }
        return null;
    }

    private void putFullTheme(TLRPC.ShareTheme shareTheme) {
        MessagesController messagesController = MessagesController.getInstance(this.account);
        long j = this.link.peerId;
        if (j > 0) {
            TLRPC.UserFull userFull = messagesController.getUserFull(j);
            if (userFull != null) {
                userFull.share_theme = shareTheme;
                MessagesStorage.getInstance(this.account).updateUserInfo(userFull, false);
                return;
            }
            return;
        }
        TLRPC.ChatFull chatFull = messagesController.getChatFull(-j);
        if (chatFull != null) {
            chatFull.share_theme = shareTheme;
            MessagesStorage.getInstance(this.account).updateChatInfo(chatFull, false);
        }
    }

    private static TLRPC.ShareTheme themeOf(TLRPC.ShareTheme shareTheme) {
        return shareTheme != null ? shareTheme : new TLRPC.TL_shareThemeDefault();
    }

    private static boolean same(TLObject tLObject, TLObject tLObject2) {
        if (tLObject == null || tLObject2 == null) {
            return tLObject == tLObject2;
        }
        byte[] bytes = toBytes(tLObject);
        return bytes != null && Arrays.equals(bytes, toBytes(tLObject2));
    }

    private static byte[] toBytes(TLObject tLObject) {
        try {
            SerializedData serializedData = new SerializedData(tLObject.getObjectSize());
            tLObject.serializeToStream(serializedData);
            byte[] byteArray = serializedData.toByteArray();
            serializedData.cleanup();
            return byteArray;
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    public static final class LocalTheme {
        long savedAt;
        TLRPC.ShareTheme theme;

        private LocalTheme() {
        }
    }

    private static LongSparseArray<LocalTheme> localThemes(int i) {
        LongSparseArray<LocalTheme>[] longSparseArrayArr = localThemes;
        if (longSparseArrayArr[i] == null) {
            longSparseArrayArr[i] = new LongSparseArray<>();
        }
        return longSparseArrayArr[i];
    }

    private TLRPC.InputPeer getInputPeer() {
        if (this.link.self) {
            return new TLRPC.TL_inputPeerSelf();
        }
        TLRPC.InputPeer inputPeer = MessagesController.getInstance(this.account).getInputPeer(this.link.peerId);
        if (inputPeer instanceof TLRPC.TL_inputPeerEmpty) {
            return null;
        }
        return inputPeer;
    }

    public void onPaletteChanged() {
        if (this.released) {
            return;
        }
        if (this.backdropWaitsForIds) {
            onThemeChanged();
            return;
        }
        if (this.themeChangedByUser) {
            return;
        }
        TLRPC.ShareTheme shareTheme = this.loadedTheme;
        if (!(shareTheme instanceof TLRPC.TL_shareThemeEmojiBackdrop) || (((TLRPC.TL_shareThemeEmojiBackdrop) shareTheme).flags & 1) == 0) {
            return;
        }
        applyTheme(shareTheme);
    }

    private void applyTheme(TLRPC.ShareTheme shareTheme) {
        this.loadedTheme = shareTheme;
        if (shareTheme instanceof TLRPC.TL_shareThemeGift) {
            TL_stars.StarGift starGift = ((TLRPC.TL_shareThemeGift) shareTheme).stargift;
            if (starGift instanceof TL_stars.TL_starGiftUnique) {
                this.view.applyThemeGift((TL_stars.TL_starGiftUnique) starGift);
                return;
            }
        }
        boolean z = shareTheme instanceof TLRPC.TL_shareThemeEmojiBackdrop;
        QrShareView qrShareView = this.view;
        if (z) {
            TLRPC.TL_shareThemeEmojiBackdrop tL_shareThemeEmojiBackdrop = (TLRPC.TL_shareThemeEmojiBackdrop) shareTheme;
            int i = tL_shareThemeEmojiBackdrop.flags;
            qrShareView.applyThemeEmojiBackdrop((i & 1) != 0, tL_shareThemeEmojiBackdrop.backdrop_id, (i & 2) != 0 ? tL_shareThemeEmojiBackdrop.emojis : null);
            return;
        }
        qrShareView.applyThemeDefault();
    }

    public void onThemeChanged() {
        TLRPC.ShareTheme shareTheme;
        TLRPC.ShareTheme tL_shareThemeDefault;
        this.themeChangedByUser = true;
        boolean z = false;
        this.backdropWaitsForIds = false;
        if (this.link.themeEditable) {
            TL_stars.TL_starGiftUnique themeGift = this.view.getThemeGift();
            ArrayList<TLRPC.Reaction> pickedEmoji = this.view.getPickedEmoji();
            if (themeGift != null) {
                TL_stars.InputSavedStarGift inputGift = getInputGift(themeGift);
                if (inputGift == null) {
                    cancelThemeSave();
                    return;
                }
                TLRPC.TL_inputShareThemeGift tL_inputShareThemeGift = new TLRPC.TL_inputShareThemeGift();
                tL_inputShareThemeGift.stargift = inputGift;
                TLRPC.TL_shareThemeGift tL_shareThemeGift = new TLRPC.TL_shareThemeGift();
                tL_shareThemeGift.stargift = themeGift;
                shareTheme = tL_shareThemeGift;
                tL_shareThemeDefault = tL_inputShareThemeGift;
            } else {
                int themeBackdropIndex = this.view.getThemeBackdropIndex();
                if (themeBackdropIndex >= 0 && !this.view.isDefaultBackdrop(themeBackdropIndex)) {
                    z = true;
                }
                if (z && Backdrops.IDS == null) {
                    cancelThemeSave();
                    this.backdropWaitsForIds = true;
                    return;
                }
                if (!z && pickedEmoji.isEmpty()) {
                    shareTheme = null;
                    tL_shareThemeDefault = new TLRPC.TL_shareThemeDefault();
                } else {
                    TLRPC.TL_shareThemeEmojiBackdrop tL_shareThemeEmojiBackdrop = new TLRPC.TL_shareThemeEmojiBackdrop();
                    if (z) {
                        tL_shareThemeEmojiBackdrop.flags = 1 | tL_shareThemeEmojiBackdrop.flags;
                        tL_shareThemeEmojiBackdrop.backdrop_id = Backdrops.IDS[themeBackdropIndex];
                    }
                    if (!pickedEmoji.isEmpty()) {
                        tL_shareThemeEmojiBackdrop.flags |= 2;
                        tL_shareThemeEmojiBackdrop.emojis = pickedEmoji;
                    }
                    shareTheme = null;
                    tL_shareThemeDefault = tL_shareThemeEmojiBackdrop;
                }
            }
            if (shareTheme == null) {
                shareTheme = tL_shareThemeDefault;
            }
            this.loadedTheme = shareTheme;
            LocalTheme localTheme = new LocalTheme();
            localTheme.theme = this.loadedTheme;
            localThemes(this.account).put(this.link.peerId, localTheme);
            putFullTheme(this.loadedTheme);
            this.pendingTheme = tL_shareThemeDefault;
            AndroidUtilities.cancelRunOnUIThread(this.saveTheme);
            AndroidUtilities.runOnUIThread(this.saveTheme, 700L);
        }
    }

    private TL_stars.InputSavedStarGift getInputGift(TL_stars.TL_starGiftUnique tL_starGiftUnique) {
        if (this.link.self) {
            if (TextUtils.isEmpty(tL_starGiftUnique.slug)) {
                return null;
            }
            TL_stars.TL_inputSavedStarGiftSlug tL_inputSavedStarGiftSlug = new TL_stars.TL_inputSavedStarGiftSlug();
            tL_inputSavedStarGiftSlug.slug = tL_starGiftUnique.slug;
            return tL_inputSavedStarGiftSlug;
        }
        long themeGiftSavedId = this.view.getThemeGiftSavedId();
        TLRPC.InputPeer inputPeer = getInputPeer();
        if (themeGiftSavedId == 0 || inputPeer == null) {
            return null;
        }
        TL_stars.TL_inputSavedStarGiftChat tL_inputSavedStarGiftChat = new TL_stars.TL_inputSavedStarGiftChat();
        tL_inputSavedStarGiftChat.peer = inputPeer;
        tL_inputSavedStarGiftChat.saved_id = themeGiftSavedId;
        return tL_inputSavedStarGiftChat;
    }

    private void cancelThemeSave() {
        this.pendingTheme = null;
        AndroidUtilities.cancelRunOnUIThread(this.saveTheme);
        LocalTheme localTheme = localThemes(this.account).get(this.link.peerId);
        if (localTheme == null || localTheme.savedAt != 0) {
            return;
        }
        localThemes(this.account).remove(this.link.peerId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveTheme() {
        if (this.pendingTheme == null) {
            return;
        }
        TLRPC.TL_messages_setShareTheme tL_messages_setShareTheme = new TLRPC.TL_messages_setShareTheme();
        TLRPC.InputPeer inputPeer = getInputPeer();
        tL_messages_setShareTheme.peer = inputPeer;
        tL_messages_setShareTheme.theme = this.pendingTheme;
        this.pendingTheme = null;
        if (inputPeer == null) {
            return;
        }
        if (this.themeRequestId != 0) {
            ConnectionsManager.getInstance(this.account).cancelRequest(this.themeRequestId, true);
        }
        final LocalTheme localTheme = localThemes(this.account).get(this.link.peerId);
        final int i = this.account;
        final long j = this.link.peerId;
        int iSendRequestTyped = ConnectionsManager.getInstance(i).sendRequestTyped(tL_messages_setShareTheme, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.QrShare.QrShareServer$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$saveTheme$2(iArr, localTheme, i, j, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
        this.themeRequestId = iSendRequestTyped;
        final int[] iArr = {iSendRequestTyped};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveTheme$2(int[] iArr, LocalTheme localTheme, int i, long j, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        if (this.themeRequestId == iArr[0]) {
            this.themeRequestId = 0;
        }
        if (localTheme != null && localThemes(i).get(j) == localTheme) {
            if (tL_error == null) {
                localTheme.savedAt = SystemClock.elapsedRealtime();
            } else {
                localThemes(i).remove(j);
            }
        }
        if (tL_error != null) {
            FileLog.m1038e("QrShare: setShareTheme " + tL_error.text);
            if (this.released) {
                return;
            }
            this.view.showError(tL_error.text);
        }
    }

    private static boolean isPhonePublic(int i) {
        char c2;
        ArrayList<TLRPC.PrivacyRule> privacyRules = ContactsController.getInstance(i).getPrivacyRules(6);
        if (privacyRules == null) {
            return false;
        }
        int size = privacyRules.size();
        int i2 = 0;
        while (i2 < size) {
            TLRPC.PrivacyRule privacyRule = privacyRules.get(i2);
            i2++;
            TLRPC.PrivacyRule privacyRule2 = privacyRule;
            if (privacyRule2 instanceof TLRPC.TL_privacyValueAllowAll) {
                c2 = 0;
                break;
            }
            if (privacyRule2 instanceof TLRPC.TL_privacyValueDisallowAll) {
                break;
            }
            if (privacyRule2 instanceof TLRPC.TL_privacyValueAllowContacts) {
                c2 = 1;
                break;
            }
        }
        c2 = 2;
        if (c2 == 2) {
            ArrayList<TLRPC.PrivacyRule> privacyRules2 = ContactsController.getInstance(i).getPrivacyRules(7);
            if (privacyRules2 == null || privacyRules2.isEmpty()) {
                return true;
            }
            int size2 = privacyRules2.size();
            int i3 = 0;
            while (i3 < size2) {
                TLRPC.PrivacyRule privacyRule3 = privacyRules2.get(i3);
                i3++;
                TLRPC.PrivacyRule privacyRule4 = privacyRule3;
                if (privacyRule4 instanceof TLRPC.TL_privacyValueAllowAll) {
                    return true;
                }
                if ((privacyRule4 instanceof TLRPC.TL_privacyValueDisallowAll) || (privacyRule4 instanceof TLRPC.TL_privacyValueAllowContacts)) {
                    return false;
                }
            }
        }
        return c2 == 0 || c2 == 1;
    }
}
