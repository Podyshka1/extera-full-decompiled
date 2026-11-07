package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.collection.LongSparseArray;
import androidx.mediarouter.media.MediaItemMetadata;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"StaticFieldLeak"})
public class TelegramMediaSession {
    private static final String CONTENT_STYLE_BROWSABLE_HINT = "android.media.browse.CONTENT_STYLE_BROWSABLE_HINT";
    private static final int CONTENT_STYLE_GRID_ITEM_HINT_VALUE = 2;
    private static final int CONTENT_STYLE_LIST_ITEM_HINT_VALUE = 1;
    private static final String CONTENT_STYLE_PLAYABLE_HINT = "android.media.browse.CONTENT_STYLE_PLAYABLE_HINT";
    private static final String CONTENT_STYLE_SUPPORTED = "android.media.browse.CONTENT_STYLE_SUPPORTED";
    private static final String MEDIA_ID_CHAT_PREFIX = "__CHAT_";
    private static final String MEDIA_ID_ROOT = "__ROOT__";
    private static final String SESSION_TAG = "TelegramMediaSession";
    private static final String SLOT_RESERVATION_QUEUE = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE";
    private static final String SLOT_RESERVATION_SKIP_TO_NEXT = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT";
    private static final String SLOT_RESERVATION_SKIP_TO_PREV = "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS";
    private static volatile TelegramMediaSession instance;
    private final Context appContext;
    private RectF bitmapRect;
    private boolean chatsLoaded;
    private int currentAccount;
    private long lastSelectedDialog;
    private boolean loadingChats;
    private boolean mirrorPlayback;
    private Paint roundPaint;
    private final MediaSessionCompat session;
    private final ArrayList<Long> dialogs = new ArrayList<>();
    private final LongSparseArray<TLRPC.User> users = new LongSparseArray<>();
    private final LongSparseArray<TLRPC.Chat> chats = new LongSparseArray<>();
    private final LongSparseArray<ArrayList<MessageObject>> musicObjects = new LongSparseArray<>();
    private final LongSparseArray<ArrayList<MediaSessionCompat.QueueItem>> musicQueues = new LongSparseArray<>();
    private final LongSparseArray<ArrayList<Runnable>> pendingMusicLoads = new LongSparseArray<>();
    private final ArrayList<PendingBrowseRequest> pendingBrowseRequests = new ArrayList<>();

    public interface BrowseChildrenCallback {
        void onResult(List<MediaBrowser.MediaItem> list);
    }

    public static TelegramMediaSession getInstance(Context context) {
        if (instance == null) {
            synchronized (TelegramMediaSession.class) {
                try {
                    if (instance == null) {
                        instance = new TelegramMediaSession(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public static TelegramMediaSession peekInstance() {
        return instance;
    }

    private TelegramMediaSession(Context context) {
        this.appContext = context;
        int i = UserConfig.selectedAccount;
        this.currentAccount = i;
        this.lastSelectedDialog = AndroidUtilities.getPrefIntOrLong(MessagesController.getNotificationsSettings(i), "auto_lastSelectedDialog", 0L);
        MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, SESSION_TAG);
        this.session = mediaSessionCompat;
        mediaSessionCompat.setFlags(3);
        mediaSessionCompat.setCallback(new SessionCallback());
        mediaSessionCompat.setSessionActivity(PendingIntent.getActivity(context, 99, new Intent(context, (Class<?>) LaunchActivity.class), 167772160));
        Bundle bundle = new Bundle();
        bundle.putBoolean(SLOT_RESERVATION_QUEUE, true);
        bundle.putBoolean(SLOT_RESERVATION_SKIP_TO_PREV, true);
        bundle.putBoolean(SLOT_RESERVATION_SKIP_TO_NEXT, true);
        mediaSessionCompat.setExtras(bundle);
        mediaSessionCompat.setActive(true);
        mediaSessionCompat.setPlaybackState(new PlaybackStateCompat.Builder().setState(0, 0L, 1.0f).setActions(getAvailableActions()).build());
        updateRepeatMode();
        updateShuffleMode();
        NotificationCenter.getGlobalInstance().addObserver(new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i2, int i3, Object[] objArr) {
                this.f$0.lambda$new$0(i2, i3, objArr);
            }
        }, NotificationCenter.activeAccountChanged);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i, int i2, Object[] objArr) {
        if (i == NotificationCenter.activeAccountChanged) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onAccountSwitched();
                }
            });
        }
    }

    public void enablePlaybackMirroring() {
        if (this.mirrorPlayback) {
            return;
        }
        this.mirrorPlayback = true;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                TelegramMediaSession.$r8$lambda$HqFyU4OGTLMS_RPZKDAAjxLer5w();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$HqFyU4OGTLMS_RPZKDAAjxLer5w() {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            NotificationCenter.getInstance(playingMessageObject.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, Integer.valueOf(playingMessageObject.getId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAccountSwitched() {
        int i = UserConfig.selectedAccount;
        this.currentAccount = i;
        this.lastSelectedDialog = AndroidUtilities.getPrefIntOrLong(MessagesController.getNotificationsSettings(i), "auto_lastSelectedDialog", 0L);
        this.chatsLoaded = false;
        this.loadingChats = false;
        this.dialogs.clear();
        this.users.clear();
        this.chats.clear();
        this.musicObjects.clear();
        this.musicQueues.clear();
        this.pendingMusicLoads.clear();
        try {
            this.session.setQueue(null);
            this.session.setQueueTitle(null);
        } catch (Throwable unused) {
        }
    }

    public int getCurrentAccount() {
        return this.currentAccount;
    }

    public ArrayList<Long> getMusicDialogsSortedByVisibleOrder() {
        ArrayList<Long> arrayList = new ArrayList<>(this.dialogs);
        ArrayList<TLRPC.Dialog> allDialogs = MessagesController.getInstance(this.currentAccount).getAllDialogs();
        final HashMap map = new HashMap();
        for (int i = 0; i < allDialogs.size(); i++) {
            TLRPC.Dialog dialog = allDialogs.get(i);
            if (dialog != null) {
                map.put(Long.valueOf(dialog.id), Integer.valueOf(i));
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return TelegramMediaSession.$r8$lambda$DeReF65Eo6na__3QKRxJynoL1y8(map, (Long) obj, (Long) obj2);
            }
        });
        return arrayList;
    }

    public static /* synthetic */ int $r8$lambda$DeReF65Eo6na__3QKRxJynoL1y8(HashMap map, Long l, Long l2) {
        Integer num = (Integer) map.get(l);
        Integer num2 = (Integer) map.get(l2);
        if (num == null && num2 == null) {
            return Long.compare(l.longValue(), l2.longValue());
        }
        if (num == null) {
            return 1;
        }
        if (num2 == null) {
            return -1;
        }
        return Integer.compare(num.intValue(), num2.intValue());
    }

    public MediaSessionCompat getSession() {
        return this.session;
    }

    public MediaSessionCompat.Token getSessionToken() {
        return this.session.getSessionToken();
    }

    public MediaSession.Token getFrameworkSessionToken() {
        return (MediaSession.Token) this.session.getSessionToken().getToken();
    }

    public void release() {
        MediaSessionCompat mediaSessionCompat = this.session;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.setCallback(null);
            this.session.release();
        }
    }

    public Bundle buildRootHints() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(CONTENT_STYLE_SUPPORTED, true);
        bundle.putInt(CONTENT_STYLE_BROWSABLE_HINT, 2);
        bundle.putInt(CONTENT_STYLE_PLAYABLE_HINT, 1);
        return bundle;
    }

    public boolean isPasscodeLocked() {
        int i;
        int iElapsedRealtime = (int) (SystemClock.elapsedRealtime() / 1000);
        if (SharedConfig.passcodeHash.length() <= 0) {
            return false;
        }
        if (SharedConfig.appLocked) {
            return true;
        }
        return !(SharedConfig.autoLockIn == 0 || (i = SharedConfig.lastPauseTime) == 0 || i + SharedConfig.autoLockIn > iElapsedRealtime) || iElapsedRealtime + 5 < SharedConfig.lastPauseTime;
    }

    public boolean isChatsLoaded() {
        return this.chatsLoaded;
    }

    public ArrayList<Long> getMusicDialogs() {
        return this.dialogs;
    }

    public TLRPC.User getMusicUser(long j) {
        return this.users.get(j);
    }

    public TLRPC.Chat getMusicChat(long j) {
        return this.chats.get(j);
    }

    public ArrayList<MessageObject> getMusicMessages(long j) {
        return this.musicObjects.get(j);
    }

    public Bitmap getRoundedAvatar(File file) {
        return createRoundBitmap(file);
    }

    public void ensureLoaded(final Runnable runnable) {
        if (!this.chatsLoaded) {
            loadBrowseChildren(MEDIA_ID_ROOT, new BrowseChildrenCallback() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda7
                @Override // org.telegram.messenger.TelegramMediaSession.BrowseChildrenCallback
                public final void onResult(List list) {
                    TelegramMediaSession.$r8$lambda$pad2mHyQ_qUylk4z3JBvyzYQelM(runnable, list);
                }
            });
        } else if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    public static /* synthetic */ void $r8$lambda$pad2mHyQ_qUylk4z3JBvyzYQelM(Runnable runnable, List list) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public static final class PendingBrowseRequest {
        final BrowseChildrenCallback callback;
        final String parentMediaId;

        public PendingBrowseRequest(String str, BrowseChildrenCallback browseChildrenCallback) {
            this.parentMediaId = str;
            this.callback = browseChildrenCallback;
        }
    }

    public void loadBrowseChildren(final String str, final BrowseChildrenCallback browseChildrenCallback) {
        if (!this.chatsLoaded) {
            this.pendingBrowseRequests.add(new PendingBrowseRequest(str, browseChildrenCallback));
            loadChats();
            return;
        }
        long dialogIdFromMediaId = getDialogIdFromMediaId(str);
        if (dialogIdFromMediaId != 0 && this.musicObjects.get(dialogIdFromMediaId) == null) {
            loadMusicForDialog(dialogIdFromMediaId, new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadBrowseChildren$4(browseChildrenCallback, str);
                }
            });
        } else {
            browseChildrenCallback.onResult(loadChildrenSync(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBrowseChildren$4(BrowseChildrenCallback browseChildrenCallback, String str) {
        browseChildrenCallback.onResult(loadChildrenSync(str));
    }

    private void loadChats() {
        if (this.loadingChats) {
            return;
        }
        this.loadingChats = true;
        final int i = this.currentAccount;
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(i);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadChats$6(messagesStorage, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadChats$6(MessagesStorage messagesStorage, final int i) {
        final ArrayList arrayList = new ArrayList();
        final LongSparseArray longSparseArray = new LongSparseArray();
        final LongSparseArray longSparseArray2 = new LongSparseArray();
        try {
            ArrayList<Long> arrayList2 = new ArrayList<>();
            ArrayList arrayList3 = new ArrayList();
            int i2 = 0;
            SQLiteCursor sQLiteCursorQueryFinalized = messagesStorage.getDatabase().queryFinalized(String.format(Locale.US, "SELECT DISTINCT uid FROM media_v4 WHERE uid != 0 AND mid > 0 AND type = %d", 4), new Object[0]);
            while (sQLiteCursorQueryFinalized.next()) {
                long jLongValue = sQLiteCursorQueryFinalized.longValue(0);
                if (!DialogObject.isEncryptedDialog(jLongValue)) {
                    arrayList.add(Long.valueOf(jLongValue));
                    if (DialogObject.isUserDialog(jLongValue)) {
                        arrayList2.add(Long.valueOf(jLongValue));
                    } else {
                        arrayList3.add(Long.valueOf(-jLongValue));
                    }
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            if (!arrayList2.isEmpty()) {
                ArrayList<TLRPC.User> arrayList4 = new ArrayList<>();
                messagesStorage.getUsersInternal(arrayList2, arrayList4);
                int size = arrayList4.size();
                int i3 = 0;
                while (i3 < size) {
                    TLRPC.User user = arrayList4.get(i3);
                    i3++;
                    TLRPC.User user2 = user;
                    longSparseArray.put(user2.id, user2);
                }
            }
            if (!arrayList3.isEmpty()) {
                ArrayList<TLRPC.Chat> arrayList5 = new ArrayList<>();
                messagesStorage.getChatsInternal(TextUtils.join(",", arrayList3), arrayList5);
                int size2 = arrayList5.size();
                while (i2 < size2) {
                    TLRPC.Chat chat = arrayList5.get(i2);
                    i2++;
                    TLRPC.Chat chat2 = chat;
                    longSparseArray2.put(chat2.id, chat2);
                }
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadChats$5(i, arrayList, longSparseArray, longSparseArray2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadChats$5(int i, ArrayList arrayList, LongSparseArray longSparseArray, LongSparseArray longSparseArray2) {
        if (i != this.currentAccount) {
            return;
        }
        this.dialogs.clear();
        this.dialogs.addAll(arrayList);
        this.users.clear();
        for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
            this.users.put(longSparseArray.keyAt(i2), (TLRPC.User) longSparseArray.valueAt(i2));
        }
        this.chats.clear();
        for (int i3 = 0; i3 < longSparseArray2.size(); i3++) {
            this.chats.put(longSparseArray2.keyAt(i3), (TLRPC.Chat) longSparseArray2.valueAt(i3));
        }
        this.chatsLoaded = true;
        this.loadingChats = false;
        if (this.lastSelectedDialog == 0 && !this.dialogs.isEmpty()) {
            this.lastSelectedDialog = this.dialogs.get(0).longValue();
        }
        ArrayList arrayList2 = new ArrayList(this.pendingBrowseRequests);
        this.pendingBrowseRequests.clear();
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            PendingBrowseRequest pendingBrowseRequest = (PendingBrowseRequest) arrayList2.get(i4);
            loadBrowseChildren(pendingBrowseRequest.parentMediaId, pendingBrowseRequest.callback);
        }
    }

    public void loadMusicForDialog(final long j, Runnable runnable) {
        ArrayList<Runnable> arrayList = this.pendingMusicLoads.get(j);
        if (arrayList != null) {
            if (runnable != null) {
                arrayList.add(runnable);
                return;
            }
            return;
        }
        ArrayList<Runnable> arrayList2 = new ArrayList<>();
        if (runnable != null) {
            arrayList2.add(runnable);
        }
        this.pendingMusicLoads.put(j, arrayList2);
        final int i = this.currentAccount;
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(i);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadMusicForDialog$8(messagesStorage, j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMusicForDialog$8(MessagesStorage messagesStorage, final long j, final int i) {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = messagesStorage.getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, mid FROM media_v4 WHERE uid = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC", Long.valueOf(j), 4), new Object[0]);
            while (sQLiteCursorQueryFinalized.next()) {
                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                if (nativeByteBufferByteBufferValue != null) {
                    TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                    messageTLdeserialize.readAttachPath(nativeByteBufferByteBufferValue, UserConfig.getInstance(i).clientUserId);
                    nativeByteBufferByteBufferValue.reuse();
                    if (MessageObject.isMusicMessage(messageTLdeserialize)) {
                        messageTLdeserialize.id = sQLiteCursorQueryFinalized.intValue(1);
                        messageTLdeserialize.dialog_id = j;
                        MessageObject messageObject = new MessageObject(i, messageTLdeserialize, false, true);
                        arrayList.add(messageObject);
                        arrayList2.add(new MediaSessionCompat.QueueItem(new MediaDescriptionCompat.Builder().setMediaId(j + "_" + arrayList.size()).setTitle(messageObject.getMusicTitle()).setSubtitle(messageObject.getMusicAuthor()).build(), arrayList2.size()));
                    }
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            Collections.reverse(arrayList);
            Collections.reverse(arrayList2);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadMusicForDialog$7(i, j, arrayList, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMusicForDialog$7(int i, long j, ArrayList arrayList, ArrayList arrayList2) {
        if (i != this.currentAccount) {
            return;
        }
        this.musicObjects.put(j, arrayList);
        this.musicQueues.put(j, arrayList2);
        ArrayList<Runnable> arrayList3 = this.pendingMusicLoads.get(j);
        this.pendingMusicLoads.remove(j);
        if (j == this.lastSelectedDialog) {
            applyQueueFor(j);
        }
        if (arrayList3 != null) {
            for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                arrayList3.get(i2).run();
            }
        }
    }

    private long getDialogIdFromMediaId(String str) {
        if (str != null && str.startsWith(MEDIA_ID_CHAT_PREFIX)) {
            try {
                return Long.parseLong(str.substring(7));
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
        return 0L;
    }

    private List<MediaBrowser.MediaItem> loadChildrenSync(String str) {
        long j;
        TLRPC.FileLocation fileLocation;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (MEDIA_ID_ROOT.equals(str)) {
            while (i < this.dialogs.size()) {
                long jLongValue = this.dialogs.get(i).longValue();
                MediaDescription.Builder mediaId = new MediaDescription.Builder().setMediaId(MEDIA_ID_CHAT_PREFIX + jLongValue);
                Bitmap bitmapCreateRoundBitmap = null;
                if (DialogObject.isUserDialog(jLongValue)) {
                    TLRPC.User user = this.users.get(jLongValue);
                    if (user != null) {
                        mediaId.setTitle(ContactsController.formatName(user.first_name, user.last_name));
                        TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                        if (userProfilePhoto != null) {
                            fileLocation = userProfilePhoto.photo_small;
                            if (fileLocation instanceof TLRPC.TL_fileLocationUnavailable) {
                            }
                        }
                    } else {
                        mediaId.setTitle("DELETED USER");
                    }
                    fileLocation = null;
                } else {
                    TLRPC.Chat chat = this.chats.get(-jLongValue);
                    if (chat != null) {
                        mediaId.setTitle(chat.title);
                        TLRPC.ChatPhoto chatPhoto = chat.photo;
                        if (chatPhoto != null) {
                            fileLocation = chatPhoto.photo_small;
                            if (fileLocation instanceof TLRPC.TL_fileLocationUnavailable) {
                            }
                        }
                    } else {
                        mediaId.setTitle("DELETED CHAT");
                    }
                    fileLocation = null;
                }
                if (fileLocation != null && (bitmapCreateRoundBitmap = createRoundBitmap(FileLoader.getInstance(this.currentAccount).getPathToAttach(fileLocation, true))) != null) {
                    mediaId.setIconBitmap(bitmapCreateRoundBitmap);
                }
                if (fileLocation == null || bitmapCreateRoundBitmap == null) {
                    mediaId.setIconUri(Uri.parse("android.resource://" + this.appContext.getPackageName() + "/drawable/contact_blue"));
                }
                arrayList.add(new MediaBrowser.MediaItem(mediaId.build(), 1));
                i++;
            }
        } else if (str != null && str.startsWith(MEDIA_ID_CHAT_PREFIX)) {
            try {
                j = Long.parseLong(str.replace(MEDIA_ID_CHAT_PREFIX, _UrlKt.FRAGMENT_ENCODE_SET));
            } catch (Exception e) {
                FileLog.m992e(e);
                j = 0;
            }
            ArrayList<MessageObject> arrayList2 = this.musicObjects.get(j);
            if (arrayList2 != null) {
                while (i < arrayList2.size()) {
                    MessageObject messageObject = arrayList2.get(i);
                    MediaDescription.Builder mediaId2 = new MediaDescription.Builder().setMediaId(j + "_" + i);
                    mediaId2.setTitle(messageObject.getMusicTitle());
                    mediaId2.setSubtitle(messageObject.getMusicAuthor());
                    arrayList.add(new MediaBrowser.MediaItem(mediaId2.build(), 2));
                    i++;
                }
            }
        }
        return arrayList;
    }

    private void applyQueueFor(long j) {
        String name;
        if (j == 0) {
            return;
        }
        ArrayList<MessageObject> arrayList = this.musicObjects.get(j);
        ArrayList<MediaSessionCompat.QueueItem> arrayList2 = this.musicQueues.get(j);
        if (arrayList == null || arrayList.isEmpty() || arrayList2 == null) {
            return;
        }
        this.session.setQueue(arrayList2);
        if (DialogObject.isUserDialog(j)) {
            TLRPC.User user = this.users.get(j);
            MediaSessionCompat mediaSessionCompat = this.session;
            if (user != null) {
                name = ContactsController.formatName(user.first_name, user.last_name);
            } else {
                name = "DELETED USER";
            }
            mediaSessionCompat.setQueueTitle(name);
        } else {
            TLRPC.Chat chat = this.chats.get(-j);
            this.session.setQueueTitle(chat != null ? chat.title : "DELETED CHAT");
        }
        MessageObject messageObject = arrayList.get(0);
        this.session.setMetadata(new MediaMetadataCompat.Builder().putLong(MediaItemMetadata.KEY_DURATION, (long) (messageObject.getDuration() * 1000.0d)).putString(MediaItemMetadata.KEY_ARTIST, messageObject.getMusicAuthor()).putString(MediaItemMetadata.KEY_TITLE, messageObject.getMusicTitle()).build());
    }

    public void publishMetadata(MessageObject messageObject, AudioInfo audioInfo, Bitmap bitmap) {
        if (messageObject == null) {
            return;
        }
        MediaMetadataCompat.Builder builderPutString = new MediaMetadataCompat.Builder().putString(MediaItemMetadata.KEY_ALBUM_ARTIST, messageObject.getMusicAuthor()).putString(MediaItemMetadata.KEY_ARTIST, messageObject.getMusicAuthor()).putLong(MediaItemMetadata.KEY_DURATION, (long) (messageObject.getDuration() * 1000.0d)).putString(MediaItemMetadata.KEY_TITLE, messageObject.getMusicTitle()).putString("android.media.metadata.ALBUM", (audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum());
        if (bitmap != null && !bitmap.isRecycled()) {
            builderPutString.putBitmap("android.media.metadata.ALBUM_ART", bitmap);
        }
        this.session.setMetadata(builderPutString.build());
    }

    public void publishMetadata(MediaMetadataCompat mediaMetadataCompat) {
        if (this.mirrorPlayback) {
            this.session.setMetadata(mediaMetadataCompat);
        }
    }

    public void publishPlaybackState(PlaybackStateCompat playbackStateCompat) {
        if (this.mirrorPlayback) {
            if (!this.session.isActive()) {
                this.session.setActive(true);
            }
            this.session.setPlaybackState(new PlaybackStateCompat.Builder(playbackStateCompat).setActions(getAvailableActions() | playbackStateCompat.getActions()).build());
        }
    }

    public void clearPlaybackState() {
        try {
            this.session.setPlaybackState(new PlaybackStateCompat.Builder().setState(0, 0L, 1.0f).setActions(0L).build());
            this.session.setMetadata(null);
            this.session.setActive(false);
        } catch (Throwable th) {
            FileLog.m992e(th);
        }
    }

    public long getAvailableActions() {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null) {
            return 2477828L;
        }
        long j = MediaController.getInstance().isMessagePaused() ? 2477828L : 2477830L;
        return playingMessageObject.isMusic() ? j | 48 : j;
    }

    public void updateRepeatMode() {
        int i = SharedConfig.repeatMode;
        this.session.setRepeatMode(i != 1 ? i != 2 ? 0 : 1 : 2);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void updateShuffleMode() {
        this.session.setShuffleMode(SharedConfig.shuffleMusic ? 1 : 0);
    }

    private Bitmap createRoundBitmap(File file) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 2;
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.toString(), options);
            if (bitmapDecodeFile == null) {
                return null;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.eraseColor(0);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmapDecodeFile, tileMode, tileMode);
            if (this.roundPaint == null) {
                this.roundPaint = new Paint(1);
                this.bitmapRect = new RectF();
            }
            this.roundPaint.setShader(bitmapShader);
            this.bitmapRect.set(0.0f, 0.0f, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
            canvas.drawRoundRect(this.bitmapRect, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), this.roundPaint);
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            FileLog.m992e(th);
            return null;
        }
    }

    public final class SessionCallback extends MediaSessionCompat.Callback {
        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepare() {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onStop() {
        }

        private SessionCallback() {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlay() {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject != null) {
                MediaController.getInstance().playMessage(playingMessageObject);
            } else if (TelegramMediaSession.this.lastSelectedDialog != 0) {
                lambda$onPlayFromMediaId$1(TelegramMediaSession.this.lastSelectedDialog + "_0", null);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPause() {
            MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToNext() {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                return;
            }
            MediaController.getInstance().playNextMessage();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToPrevious() {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                return;
            }
            MediaController.getInstance().playPreviousMessage();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToQueueItem(long j) {
            MediaController.getInstance().playMessageAtIndex((int) j);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSeekTo(long j) {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject != null) {
                MediaController.getInstance().seekToProgress(playingMessageObject, (float) ((j / 1000.0d) / playingMessageObject.getDuration()));
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRepeatMode(int i) {
            SharedConfig.setRepeatMode(i != 1 ? (i == 2 || i == 3) ? 1 : 0 : 2);
            TelegramMediaSession.this.updateRepeatMode();
            notifyPlayStateForNotificationRefresh();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetShuffleMode(int i) {
            boolean z = true;
            if (i != 1 && i != 2) {
                z = false;
            }
            if (z != SharedConfig.shuffleMusic) {
                MediaController.getInstance().setPlaybackOrderType(z ? 2 : 0);
            }
            TelegramMediaSession.this.updateShuffleMode();
            notifyPlayStateForNotificationRefresh();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$notifyPlayStateForNotificationRefresh$0() {
            NotificationCenter.getInstance(TelegramMediaSession.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagePlayingPlayStateChanged, 0);
        }

        private void notifyPlayStateForNotificationRefresh() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$SessionCallback$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$notifyPlayStateForNotificationRefresh$0();
                }
            });
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromMediaId(String str, Bundle bundle) {
            lambda$onPlayFromMediaId$1(str, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromSearch(String str, Bundle bundle) {
            onPlayFromSearch(str, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        /* JADX INFO: renamed from: onPlayFromMediaId, reason: merged with bridge method [inline-methods] */
        public void lambda$onPlayFromMediaId$1(final String str, final Bundle bundle) {
            String name;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String[] strArrSplit = str.split("_");
            if (strArrSplit.length != 2) {
                return;
            }
            try {
                long j = Long.parseLong(strArrSplit[0]);
                int i = Integer.parseInt(strArrSplit[1]);
                ArrayList<MessageObject> arrayList = (ArrayList) TelegramMediaSession.this.musicObjects.get(j);
                TelegramMediaSession telegramMediaSession = TelegramMediaSession.this;
                if (arrayList == null) {
                    telegramMediaSession.loadMusicForDialog(j, new Runnable() { // from class: org.telegram.messenger.TelegramMediaSession$SessionCallback$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onPlayFromMediaId$1(str, bundle);
                        }
                    });
                    return;
                }
                ArrayList arrayList2 = (ArrayList) telegramMediaSession.musicQueues.get(j);
                if (i >= 0 && i < arrayList.size()) {
                    TelegramMediaSession.this.lastSelectedDialog = j;
                    MessagesController.getNotificationsSettings(TelegramMediaSession.this.currentAccount).edit().putLong("auto_lastSelectedDialog", j).apply();
                    MediaController.getInstance().setPlaylist(arrayList, arrayList.get(i), 0L, false, null);
                    TelegramMediaSession.this.session.setQueue(arrayList2);
                    boolean zIsUserDialog = DialogObject.isUserDialog(j);
                    TelegramMediaSession telegramMediaSession2 = TelegramMediaSession.this;
                    if (zIsUserDialog) {
                        TLRPC.User user = (TLRPC.User) telegramMediaSession2.users.get(j);
                        MediaSessionCompat mediaSessionCompat = TelegramMediaSession.this.session;
                        if (user != null) {
                            name = ContactsController.formatName(user.first_name, user.last_name);
                        } else {
                            name = "DELETED USER";
                        }
                        mediaSessionCompat.setQueueTitle(name);
                        return;
                    }
                    TLRPC.Chat chat = (TLRPC.Chat) telegramMediaSession2.chats.get(-j);
                    TelegramMediaSession.this.session.setQueueTitle(chat != null ? chat.title : "DELETED CHAT");
                }
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            String str2;
            if (str == null || str.length() == 0) {
                return;
            }
            String lowerCase = str.toLowerCase();
            for (int i = 0; i < TelegramMediaSession.this.dialogs.size(); i++) {
                long jLongValue = ((Long) TelegramMediaSession.this.dialogs.get(i)).longValue();
                boolean zIsUserDialog = DialogObject.isUserDialog(jLongValue);
                TelegramMediaSession telegramMediaSession = TelegramMediaSession.this;
                if (zIsUserDialog) {
                    TLRPC.User user = (TLRPC.User) telegramMediaSession.users.get(jLongValue);
                    if (user != null) {
                        String str3 = user.first_name;
                        String lowerCase2 = str3 != null ? str3.toLowerCase() : null;
                        String str4 = user.last_name;
                        String lowerCase3 = str4 != null ? str4.toLowerCase() : null;
                        if ((lowerCase2 != null && lowerCase2.contains(lowerCase)) || (lowerCase3 != null && lowerCase3.contains(lowerCase))) {
                            lambda$onPlayFromMediaId$1(jLongValue + "_0", null);
                            return;
                        }
                    } else {
                        continue;
                    }
                } else {
                    TLRPC.Chat chat = (TLRPC.Chat) telegramMediaSession.chats.get(-jLongValue);
                    if (chat != null && (str2 = chat.title) != null && str2.toLowerCase().contains(lowerCase)) {
                        lambda$onPlayFromMediaId$1(jLongValue + "_0", null);
                        return;
                    }
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onCustomAction(String str, Bundle bundle) {
            if (MusicPlayerService.NOTIFY_REPEAT.equals(str)) {
                SharedConfig.setRepeatMode((SharedConfig.repeatMode + 1) % 3);
                TelegramMediaSession.this.updateRepeatMode();
            } else if (MusicPlayerService.NOTIFY_SHUFFLE.equals(str)) {
                MediaController.getInstance().setPlaybackOrderType(SharedConfig.shuffleMusic ? 0 : 2);
                TelegramMediaSession.this.updateShuffleMode();
            }
        }
    }
}
