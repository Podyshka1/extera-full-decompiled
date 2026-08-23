package org.telegram.ui.Stories;

import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.collection.LongSparseArray;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.exoplayer2.util.Consumer;
import j$.util.Comparator;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.ToIntFunction;
import okhttp3.internal.url._UrlKt;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileRefController;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.Timer;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.Reactions.ReactionImageHolder;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.StatisticActivity;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Stories.bots.BotPreviewsEditContainer;
import org.telegram.ui.Stories.recorder.DraftsController;
import org.telegram.ui.Stories.recorder.StoryEntry;
import org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.ui.Stories.recorder.StoryRecorder;
import org.telegram.ui.Stories.recorder.StoryUploadingService;

/* JADX INFO: loaded from: classes3.dex */
public class StoriesController {
    public static final Comparator storiesComparator = Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda3
        @Override // java.util.function.ToIntFunction
        public final int applyAsInt(Object obj) {
            return ((TL_stories.StoryItem) obj).date;
        }
    });
    boolean allHiddenStoriesLoaded;
    boolean allStoriesLoaded;
    private int blocklistCount;
    private int blocklistReqId;
    private final int currentAccount;
    private final DraftsController draftsController;
    boolean hasMore;
    private boolean loadedSendAs;
    boolean loadingFromDatabase;
    private boolean loadingFromServer;
    private boolean loadingFromServerHidden;
    private boolean loadingSendAs;
    SharedPreferences mainSettings;
    private final HashSet requestingUnsupportedStories;
    public final ArrayList sendAs;
    final Runnable sortStoriesRunnable;
    String state;
    private String stateHidden;
    private TL_stories.TL_storiesStealthMode stealthMode;
    private boolean storiesReadLoaded;
    StoriesStorage storiesStorage;
    private StoryLimit storyLimitCached;
    private boolean storyLimitFetched;
    private int totalStoriesCount;
    private int totalStoriesCountHidden;
    private final HashSet unsupportedStoriesChecked;
    private final LongSparseArray uploadingStoriesByDialogId = new LongSparseArray();
    private final LongSparseArray uploadingAndEditingStories = new LongSparseArray();
    public int uploadedStories = 0;
    private final LongSparseArray editingStories = new LongSparseArray();
    public LongSparseIntArray dialogIdToMaxReadId = new LongSparseIntArray();
    private ArrayList dialogListStories = new ArrayList();
    private ArrayList hiddenListStories = new ArrayList();
    private LongSparseArray allStoriesMap = new LongSparseArray();
    private LongSparseIntArray loadingDialogsStories = new LongSparseIntArray();
    final LongSparseArray pollingViewsForSelfStoriesRequester = new LongSparseArray();
    public LongSparseArray selfViewsModel = new LongSparseArray();
    private boolean hasMoreHidden = true;
    private boolean firstLoad = true;
    HashSet allStoriesLoading = new HashSet();
    HashSet loadingAllStories = new HashSet();
    LongSparseArray resolvedStories = new LongSparseArray();
    private final LongSparseArray storiesCollections = new LongSparseArray();
    private final HashMap[] storiesLists = new HashMap[5];
    private final HashMap storiesAlbumsLists = new HashMap();
    public final ArrayList attachedSearchLists = new ArrayList();
    private final java.util.Comparator peerStoriesComparator = new java.util.Comparator() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return this.f$0.lambda$new$23((TL_stories.PeerStories) obj, (TL_stories.PeerStories) obj2);
        }
    };
    public HashSet blocklist = new HashSet();
    private LongSparseArray blockedOverride = new LongSparseArray();
    public boolean blocklistFull = false;
    private boolean blocklistLoadingReset = false;
    private boolean blocklistLoading = false;
    private long lastBlocklistRequested = 0;

    /* JADX INFO: renamed from: $r8$lambda$5K2JLy0hG6eCW4OXirUJjmxFt-A, reason: not valid java name */
    public static /* synthetic */ void m18645$r8$lambda$5K2JLy0hG6eCW4OXirUJjmxFtA(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public static /* synthetic */ void $r8$lambda$FDReLXvkuVMpZP1ESK9p3bSxCTk() {
    }

    public static /* synthetic */ void $r8$lambda$Z08eppSsM_W6suoD9FF3t5wlXkg(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    public StoriesController(final int i) {
        this.state = _UrlKt.FRAGMENT_ENCODE_SET;
        ArrayList arrayList = new ArrayList();
        this.sendAs = arrayList;
        arrayList.add(new TLRPC.TL_inputPeerSelf());
        this.loadingSendAs = false;
        this.loadedSendAs = false;
        this.requestingUnsupportedStories = new HashSet();
        this.currentAccount = i;
        this.storiesStorage = new StoriesStorage(i);
        SharedPreferences mainSettings = MessagesController.getInstance(i).getMainSettings();
        this.mainSettings = mainSettings;
        this.state = mainSettings.getString("last_stories_state", _UrlKt.FRAGMENT_ENCODE_SET);
        this.stateHidden = this.mainSettings.getString("last_stories_state_hidden", _UrlKt.FRAGMENT_ENCODE_SET);
        this.totalStoriesCountHidden = this.mainSettings.getInt("total_stores_hidden", 0);
        this.totalStoriesCount = this.mainSettings.getInt("total_stores", 0);
        this.storiesReadLoaded = this.mainSettings.getBoolean("read_loaded", false);
        this.unsupportedStoriesChecked = new HashSet(this.mainSettings.getStringSet("unsupported_stories_checked", new HashSet()));
        this.stealthMode = readStealthMode(this.mainSettings.getString("stories_stealth_mode", null));
        this.storiesStorage.getMaxReadIds(new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda1
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$1((LongSparseIntArray) obj);
            }
        });
        this.sortStoriesRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2(i);
            }
        };
        this.draftsController = new DraftsController(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(LongSparseIntArray longSparseIntArray) {
        this.dialogIdToMaxReadId = longSparseIntArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(int i) {
        sortDialogStories(this.dialogListStories);
        sortDialogStories(this.hiddenListStories);
        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    private TL_stories.TL_storiesStealthMode readStealthMode(String str) {
        if (str == null) {
            return null;
        }
        SerializedData serializedData = new SerializedData(Utilities.hexToBytes(str));
        try {
            return TL_stories.TL_storiesStealthMode.TLdeserialize(serializedData, serializedData.readInt32(true), true);
        } catch (Throwable th) {
            FileLog.m955e(th);
            return null;
        }
    }

    private void writeStealthMode(TL_stories.TL_storiesStealthMode tL_storiesStealthMode) {
        SharedPreferences.Editor editorEdit = MessagesController.getInstance(this.currentAccount).getMainSettings().edit();
        if (tL_storiesStealthMode == null) {
            editorEdit.remove("stories_stealth_mode").apply();
            return;
        }
        SerializedData serializedData = new SerializedData(tL_storiesStealthMode.getObjectSize());
        tL_storiesStealthMode.serializeToStream(serializedData);
        editorEdit.putString("stories_stealth_mode", Utilities.bytesToHex(serializedData.toByteArray())).apply();
    }

    public void loadAllStories() {
        if (this.firstLoad) {
            return;
        }
        loadStories();
        loadStoriesRead();
    }

    private void loadStoriesRead() {
        if (this.storiesReadLoaded) {
            return;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_stories.TL_stories_getAllReadPeerStories(), new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadStoriesRead$4(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStoriesRead$4(TLObject tLObject, TLRPC.TL_error tL_error) {
        TLRPC.Updates updates = (TLRPC.Updates) tLObject;
        if (updates == null) {
            return;
        }
        MessagesController.getInstance(this.currentAccount).processUpdateArray(updates.updates, updates.users, updates.chats, false, updates.date);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadStoriesRead$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStoriesRead$3() {
        this.storiesReadLoaded = true;
        this.mainSettings.edit().putBoolean("read_loaded", true).apply();
    }

    private void sortDialogStories(ArrayList arrayList) {
        fixDeletedAndNonContactsStories(arrayList);
        Collections.sort(arrayList, this.peerStoriesComparator);
    }

    private void fixDeletedAndNonContactsStories(ArrayList arrayList) {
        boolean z;
        TLRPC.User user;
        int i = 0;
        while (i < arrayList.size()) {
            TL_stories.PeerStories peerStories = (TL_stories.PeerStories) arrayList.get(i);
            long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
            if (peerDialogId <= 0 || (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId))) == null || isContactOrService(user)) {
                z = false;
            } else {
                arrayList.remove(i);
                i--;
                z = true;
            }
            int i2 = 0;
            while (i2 < peerStories.stories.size()) {
                if (peerStories.stories.get(i2) instanceof TL_stories.TL_storyItemDeleted) {
                    peerStories.stories.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (!z && peerStories.stories.isEmpty() && !hasUploadingStories(peerDialogId)) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
    }

    public DraftsController getDraftsController() {
        return this.draftsController;
    }

    public boolean hasStories(long j) {
        if (j != 0 && !ExteraConfig.hideStories) {
            if (hasUploadingStories(j) || isLastUploadingFailed(j)) {
                return true;
            }
            TL_stories.PeerStories storiesFromFullPeer = (TL_stories.PeerStories) this.allStoriesMap.get(j);
            if (storiesFromFullPeer == null) {
                storiesFromFullPeer = getStoriesFromFullPeer(j);
            }
            if (storiesFromFullPeer != null && !storiesFromFullPeer.stories.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public TL_stories.PeerStories getStoriesFromFullPeer(long j) {
        TL_stories.PeerStories peerStories;
        TL_stories.PeerStories peerStories2;
        if (j > 0) {
            TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
            if (userFull != null && (peerStories2 = userFull.stories) != null && !peerStories2.checkedExpired) {
                checkExpireStories(peerStories2);
            }
            if (userFull == null) {
                return null;
            }
            return userFull.stories;
        }
        TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
        if (chatFull != null && (peerStories = chatFull.stories) != null && !peerStories.checkedExpired) {
            checkExpireStories(peerStories);
        }
        if (chatFull == null) {
            return null;
        }
        return chatFull.stories;
    }

    public boolean hasStories() {
        if (ExteraConfig.hideStories) {
            return false;
        }
        ArrayList arrayList = this.dialogListStories;
        return (arrayList != null && arrayList.size() > 0) || hasSelfStories();
    }

    public void loadStories() {
        if (ExteraConfig.hideStories) {
            this.dialogListStories.clear();
            this.hiddenListStories.clear();
            this.allStoriesMap.clear();
            this.loadingDialogsStories.clear();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            return;
        }
        if (this.firstLoad) {
            this.loadingFromDatabase = true;
            this.storiesStorage.getAllStories(new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda13
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$loadStories$5((TL_stories.TL_stories_allStories) obj);
                }
            });
        } else {
            loadFromServer(false);
            loadFromServer(true);
        }
        this.firstLoad = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStories$5(TL_stories.TL_stories_allStories tL_stories_allStories) {
        this.loadingFromDatabase = false;
        if (tL_stories_allStories != null) {
            processAllStoriesResponse(tL_stories_allStories, false, true, false);
            loadFromServer(false);
            loadFromServer(true);
        } else {
            cleanup();
            loadStories();
        }
    }

    public void loadHiddenStories() {
        if (ExteraConfig.hideStories) {
            this.hiddenListStories.clear();
        } else if (this.hasMoreHidden) {
            loadFromServer(true);
        }
    }

    public void toggleHidden(long j, boolean z, boolean z2, boolean z3) {
        ArrayList arrayList;
        ArrayList arrayList2;
        TL_stories.PeerStories peerStories;
        if (z) {
            arrayList = this.dialogListStories;
            arrayList2 = this.hiddenListStories;
        } else {
            arrayList = this.hiddenListStories;
            arrayList2 = this.dialogListStories;
        }
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                peerStories = null;
                break;
            } else {
                if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) arrayList.get(i)).peer) == j) {
                    peerStories = (TL_stories.PeerStories) arrayList.remove(i);
                    break;
                }
                i++;
            }
        }
        if (peerStories != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList2.size()) {
                    arrayList2.add(0, peerStories);
                    AndroidUtilities.cancelRunOnUIThread(this.sortStoriesRunnable);
                    this.sortStoriesRunnable.run();
                    break;
                } else if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) arrayList2.get(i2)).peer) == j) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        if (z3) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        if (z2) {
            if (j >= 0) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
                user.stories_hidden = z;
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(Collections.singletonList(user), null, false, true);
                MessagesController.getInstance(this.currentAccount).putUser(user, false);
            } else {
                TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
                chat.stories_hidden = z;
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(null, Collections.singletonList(chat), false, true);
                MessagesController.getInstance(this.currentAccount).putChat(chat, false);
            }
            TL_stories.TL_stories_togglePeerStoriesHidden tL_stories_togglePeerStoriesHidden = new TL_stories.TL_stories_togglePeerStoriesHidden();
            tL_stories_togglePeerStoriesHidden.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
            tL_stories_togglePeerStoriesHidden.hidden = z;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_togglePeerStoriesHidden, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda32
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    StoriesController.$r8$lambda$Z08eppSsM_W6suoD9FF3t5wlXkg(tLObject, tL_error);
                }
            });
        }
    }

    private void loadFromServer(final boolean z) {
        if (z && this.loadingFromServerHidden) {
            return;
        }
        if ((z || !this.loadingFromServer) && !this.loadingFromDatabase) {
            final boolean z2 = true;
            if (z) {
                this.loadingFromServerHidden = true;
            } else {
                this.loadingFromServer = true;
            }
            final TL_stories.TL_stories_getAllStories tL_stories_getAllStories = new TL_stories.TL_stories_getAllStories();
            String str = z ? this.stateHidden : this.state;
            boolean z3 = z ? this.hasMoreHidden : this.hasMore;
            if (!TextUtils.isEmpty(str)) {
                tL_stories_getAllStories.state = str;
                tL_stories_getAllStories.flags |= 1;
            }
            if (!z3 || TextUtils.isEmpty(str)) {
                z2 = false;
            } else {
                tL_stories_getAllStories.next = true;
            }
            tL_stories_getAllStories.include_hidden = z;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_getAllStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda9
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadFromServer$8(z, tL_stories_getAllStories, z2, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFromServer$8(final boolean z, final TL_stories.TL_stories_getAllStories tL_stories_getAllStories, final boolean z2, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadFromServer$7(z, tL_stories_getAllStories, tLObject, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFromServer$7(boolean z, TL_stories.TL_stories_getAllStories tL_stories_getAllStories, TLObject tLObject, boolean z2) {
        if (z) {
            this.loadingFromServerHidden = false;
        } else {
            this.loadingFromServer = false;
        }
        FileLog.m952d("StoriesController loaded stories from server state=" + tL_stories_getAllStories.state + " more=" + tL_stories_getAllStories.next + "  " + tLObject);
        if (tLObject instanceof TL_stories.TL_stories_allStories) {
            TL_stories.TL_stories_allStories tL_stories_allStories = (TL_stories.TL_stories_allStories) tLObject;
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_stories_allStories.users, null, true, true);
            if (!z) {
                this.totalStoriesCount = tL_stories_allStories.count;
                this.hasMore = tL_stories_allStories.has_more;
                this.state = tL_stories_allStories.state;
                this.mainSettings.edit().putString("last_stories_state", this.state).putBoolean("last_stories_has_more", this.hasMore).putInt("total_stores", this.totalStoriesCount).apply();
            } else {
                this.totalStoriesCountHidden = tL_stories_allStories.count;
                this.hasMoreHidden = tL_stories_allStories.has_more;
                this.stateHidden = tL_stories_allStories.state;
                this.mainSettings.edit().putString("last_stories_state_hidden", this.stateHidden).putBoolean("last_stories_has_more_hidden", this.hasMoreHidden).putInt("total_stores_hidden", this.totalStoriesCountHidden).apply();
            }
            processAllStoriesResponse(tL_stories_allStories, z, false, z2);
            return;
        }
        if (tLObject instanceof TL_stories.TL_stories_allStoriesNotModified) {
            if (!z) {
                this.hasMore = this.mainSettings.getBoolean("last_stories_has_more", false);
                this.state = ((TL_stories.TL_stories_allStoriesNotModified) tLObject).state;
                this.mainSettings.edit().putString("last_stories_state", this.state).apply();
            } else {
                this.hasMoreHidden = this.mainSettings.getBoolean("last_stories_has_more_hidden", false);
                this.stateHidden = ((TL_stories.TL_stories_allStoriesNotModified) tLObject).state;
                this.mainSettings.edit().putString("last_stories_state_hidden", this.stateHidden).apply();
            }
            if (z ? this.hasMoreHidden : this.hasMore) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            }
        }
    }

    private void processAllStoriesResponse(TL_stories.TL_stories_allStories tL_stories_allStories, boolean z, boolean z2, boolean z3) {
        if (!z3) {
            if (!z) {
                this.dialogListStories.clear();
            } else {
                this.hiddenListStories.clear();
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < tL_stories_allStories.peer_stories.size(); i++) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(DialogObject.getPeerDialogId(tL_stories_allStories.peer_stories.get(i).peer));
            }
            FileLog.m952d("StoriesController cache=" + z2 + " hidden=" + z + " processAllStoriesResponse {" + ((Object) sb) + "}");
        }
        MessagesController.getInstance(this.currentAccount).putUsers(tL_stories_allStories.users, z2);
        MessagesController.getInstance(this.currentAccount).putChats(tL_stories_allStories.chats, z2);
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        for (int i2 = 0; i2 < tL_stories_allStories.peer_stories.size(); i2++) {
            TL_stories.PeerStories peerStories = tL_stories_allStories.peer_stories.get(i2);
            long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
            int i3 = 0;
            while (i3 < peerStories.stories.size()) {
                TL_stories.StoryItem storyItem = peerStories.stories.get(i3);
                if ((storyItem instanceof TL_stories.TL_storyItemDeleted) || ((storyItem instanceof TL_stories.TL_storyItem) && currentTime > storyItem.expire_date && !(storyItem.media instanceof TLRPC.TL_messageMediaVideoStream))) {
                    NotificationsController.getInstance(this.currentAccount).processDeleteStory(peerDialogId, storyItem.id);
                    peerStories.stories.remove(i3);
                    i3--;
                }
                i3++;
            }
            if (!peerStories.stories.isEmpty()) {
                putToAllStories(peerDialogId, peerStories);
                int i4 = 0;
                while (i4 < 2) {
                    ArrayList arrayList = i4 == 0 ? this.hiddenListStories : this.dialogListStories;
                    int i5 = 0;
                    while (true) {
                        if (i5 >= arrayList.size()) {
                            break;
                        }
                        if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) arrayList.get(i5)).peer) == peerDialogId) {
                            arrayList.remove(i5);
                            break;
                        }
                        i5++;
                    }
                    i4++;
                }
                if (peerDialogId > 0) {
                    TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
                    if (user != null) {
                        if (user.stories_hidden) {
                            addUserToHiddenList(peerStories);
                        } else {
                            this.dialogListStories.add(peerStories);
                            preloadUserStories(peerStories);
                        }
                    }
                } else {
                    TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId));
                    if (chat != null) {
                        if (chat.stories_hidden) {
                            addUserToHiddenList(peerStories);
                        } else {
                            this.dialogListStories.add(peerStories);
                            preloadUserStories(peerStories);
                        }
                    }
                }
            } else {
                this.allStoriesMap.remove(peerDialogId);
            }
        }
        if (!z2) {
            this.storiesStorage.saveAllStories(tL_stories_allStories.peer_stories, z3, z, new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    StoriesController.$r8$lambda$FDReLXvkuVMpZP1ESK9p3bSxCTk();
                }
            });
        }
        sortUserStories();
    }

    private void addUserToHiddenList(TL_stories.PeerStories peerStories) {
        long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
        if (peerDialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < this.hiddenListStories.size(); i++) {
            if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) this.hiddenListStories.get(i)).peer) == peerDialogId) {
                z = true;
            }
        }
        if (!z) {
            this.hiddenListStories.add(peerStories);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
    }

    private void sortUserStories() {
        AndroidUtilities.cancelRunOnUIThread(this.sortStoriesRunnable);
        this.sortStoriesRunnable.run();
    }

    public void preloadUserStories(TL_stories.PeerStories peerStories) {
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= peerStories.stories.size()) {
                break;
            }
            if (peerStories.stories.get(i2).id > peerStories.max_read_id) {
                i = i2;
                break;
            }
            i2++;
        }
        if (peerStories.stories.isEmpty()) {
            return;
        }
        long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
        preloadStory(peerDialogId, peerStories.stories.get(i));
        if (i > 0) {
            preloadStory(peerDialogId, peerStories.stories.get(i - 1));
        }
        if (i < peerStories.stories.size() - 1) {
            preloadStory(peerDialogId, peerStories.stories.get(i + 1));
        }
    }

    private void preloadStory(long j, TL_stories.StoryItem storyItem) {
        ArrayList arrayList;
        if (storyItem.attachPath == null && DownloadController.getInstance(this.currentAccount).canPreloadStories()) {
            TLRPC.MessageMedia messageMedia = storyItem.media;
            boolean z = messageMedia != null && MessageObject.isVideoDocument(messageMedia.getDocument());
            storyItem.dialogId = j;
            if (z) {
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(storyItem.media.getDocument().thumbs, MediaDataController.MAX_STYLE_RUNS_COUNT);
                FileLoader.getInstance(this.currentAccount).loadFile(storyItem.media.getDocument(), storyItem, 0, 1);
                FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForDocument(closestPhotoSizeWithSize, storyItem.media.getDocument()), storyItem, "jpg", 0, 1);
            } else {
                TLRPC.MessageMedia messageMedia2 = storyItem.media;
                TLRPC.Photo photo = messageMedia2 == null ? null : messageMedia2.photo;
                if (photo != null && (arrayList = photo.sizes) != null) {
                    FileLoader.getInstance(this.currentAccount).loadFile(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(arrayList, Integer.MAX_VALUE), photo), storyItem, "jpg", 0, 1);
                }
            }
            if (storyItem.media_areas != null) {
                for (int i = 0; i < Math.min(2, storyItem.media_areas.size()); i++) {
                    if (storyItem.media_areas.get(i) instanceof TL_stories.TL_mediaAreaSuggestedReaction) {
                        ReactionImageHolder.preload(this.currentAccount, ReactionsLayoutInBubble.VisibleReaction.fromTL(((TL_stories.TL_mediaAreaSuggestedReaction) storyItem.media_areas.get(i)).reaction));
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void uploadStory(StoryEntry storyEntry, boolean z) {
        StoriesController storiesController;
        boolean z2;
        boolean z3;
        UploadingStory uploadingStory = new UploadingStory(storyEntry);
        if (z) {
            long j = uploadingStory.dialogId;
            if (storyEntry.isEdit) {
                HashMap map = (HashMap) this.editingStories.get(j);
                if (map == null) {
                    map = new HashMap();
                    this.editingStories.put(j, map);
                }
                map.put(Integer.valueOf(storyEntry.editStoryId), uploadingStory);
                storiesController = this;
            } else {
                storiesController = this;
                storiesController.addUploadingStoryToList(j, uploadingStory, this.uploadingStoriesByDialogId, false);
            }
            storiesController.addUploadingStoryToList(j, uploadingStory, storiesController.uploadingAndEditingStories, true);
            if (j != UserConfig.getInstance(storiesController.currentAccount).clientUserId) {
                int i = 0;
                while (true) {
                    z2 = true;
                    if (i >= storiesController.dialogListStories.size()) {
                        z3 = false;
                        break;
                    } else {
                        if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) storiesController.dialogListStories.get(i)).peer) == j) {
                            storiesController.dialogListStories.add(0, (TL_stories.PeerStories) storiesController.dialogListStories.remove(i));
                            z3 = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z3) {
                    z2 = z3;
                    if (!z2) {
                    }
                } else {
                    for (int i2 = 0; i2 < storiesController.hiddenListStories.size(); i2++) {
                        if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) storiesController.hiddenListStories.get(i2)).peer) == j) {
                            storiesController.hiddenListStories.add(0, (TL_stories.PeerStories) storiesController.hiddenListStories.remove(i2));
                            break;
                        }
                    }
                    z2 = z3;
                    if (!z2) {
                        TL_stories.TL_peerStories tL_peerStories = new TL_stories.TL_peerStories();
                        tL_peerStories.peer = MessagesController.getInstance(storiesController.currentAccount).getPeer(j);
                        putToAllStories(j, tL_peerStories);
                        storiesController.dialogListStories.add(0, tL_peerStories);
                        loadAllStoriesForDialog(j);
                    }
                }
            }
        } else {
            storiesController = this;
        }
        uploadingStory.start();
        NotificationCenter.getInstance(storiesController.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    private void addUploadingStoryToList(long j, UploadingStory uploadingStory, LongSparseArray longSparseArray, boolean z) {
        ArrayList arrayList = (ArrayList) longSparseArray.get(j);
        if (z && (arrayList == null || arrayList.isEmpty())) {
            this.uploadedStories = 0;
        }
        if (arrayList == null) {
            arrayList = new ArrayList();
            longSparseArray.put(j, arrayList);
        }
        arrayList.add(uploadingStory);
    }

    public void putUploadingDrafts(ArrayList arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            UploadingStory uploadingStory = new UploadingStory((StoryEntry) obj);
            addUploadingStoryToList(uploadingStory.dialogId, uploadingStory, this.uploadingStoriesByDialogId, false);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public ArrayList getDialogListStories() {
        return this.dialogListStories;
    }

    public TL_stories.PeerStories getStories(long j) {
        return (TL_stories.PeerStories) this.allStoriesMap.get(j);
    }

    public ArrayList getUploadingStories(long j) {
        return (ArrayList) this.uploadingStoriesByDialogId.get(j);
    }

    public boolean isLastUploadingFailed(long j) {
        ArrayList arrayList = (ArrayList) this.uploadingStoriesByDialogId.get(j);
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        return ((UploadingStory) arrayList.get(arrayList.size() - 1)).failed;
    }

    public ArrayList getUploadingAndEditingStories(long j) {
        return (ArrayList) this.uploadingAndEditingStories.get(j);
    }

    public int getMyStoriesCount() {
        ArrayList<TL_stories.StoryItem> arrayList;
        ArrayList arrayList2 = (ArrayList) this.uploadingAndEditingStories.get(getSelfUserId());
        int size = arrayList2 == null ? 0 : arrayList2.size();
        TL_stories.PeerStories stories = getStories(getSelfUserId());
        return (stories == null || (arrayList = stories.stories) == null) ? size : size + arrayList.size();
    }

    public UploadingStory findEditingStory(long j, TL_stories.StoryItem storyItem) {
        HashMap map;
        if (storyItem == null || (map = (HashMap) this.editingStories.get(j)) == null || map.isEmpty()) {
            return null;
        }
        return (UploadingStory) map.get(Integer.valueOf(storyItem.id));
    }

    public UploadingStory getEditingStory(long j) {
        HashMap map = (HashMap) this.editingStories.get(j);
        if (map == null || map.isEmpty()) {
            return null;
        }
        Collection collectionValues = map.values();
        if (collectionValues.isEmpty()) {
            return null;
        }
        return (UploadingStory) collectionValues.iterator().next();
    }

    private void applyNewStories(TL_stories.PeerStories peerStories) {
        long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
        putToAllStories(peerDialogId, peerStories);
        if (peerDialogId != UserConfig.getInstance(UserConfig.selectedAccount).clientUserId) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
            applyToList(peerStories);
            if (user != null && !user.stories_hidden) {
                preloadUserStories(peerStories);
            }
        }
        FileLog.m952d("StoriesController applyNewStories " + peerDialogId);
        updateStoriesInLists(peerDialogId, peerStories.stories);
    }

    private void putToAllStories(long j, TL_stories.PeerStories peerStories) {
        ArrayList<TL_stories.StoryItem> arrayList;
        ArrayList<TL_stories.StoryItem> arrayList2;
        TL_stories.PeerStories peerStories2 = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        if (peerStories2 != null && (arrayList = peerStories2.stories) != null && !arrayList.isEmpty() && peerStories != null && (arrayList2 = peerStories.stories) != null && !arrayList2.isEmpty()) {
            for (int i = 0; i < peerStories.stories.size(); i++) {
                if (peerStories.stories.get(i) instanceof TL_stories.TL_storyItemSkipped) {
                    int i2 = peerStories.stories.get(i).id;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= peerStories2.stories.size()) {
                            break;
                        }
                        if (peerStories2.stories.get(i3).id == i2 && (peerStories2.stories.get(i3) instanceof TL_stories.TL_storyItem)) {
                            peerStories.stories.set(i, peerStories2.stories.get(i3));
                            break;
                        }
                        i3++;
                    }
                }
            }
        }
        this.allStoriesMap.put(j, peerStories);
    }

    public static TL_stories.StoryItem applyStoryUpdate(TL_stories.StoryItem storyItem, TL_stories.StoryItem storyItem2) {
        if (storyItem2 == null) {
            return storyItem;
        }
        if (storyItem == null || !storyItem2.min) {
            return storyItem2;
        }
        storyItem.pinned = storyItem2.pinned;
        storyItem.isPublic = storyItem2.isPublic;
        storyItem.close_friends = storyItem2.close_friends;
        int i = storyItem2.date;
        if (i != 0) {
            storyItem.date = i;
        }
        int i2 = storyItem2.expire_date;
        if (i2 != 0) {
            storyItem.expire_date = i2;
        }
        storyItem.caption = storyItem2.caption;
        storyItem.entities = storyItem2.entities;
        TLRPC.MessageMedia messageMedia = storyItem2.media;
        if (messageMedia != null) {
            storyItem.media = messageMedia;
        }
        return storyItem;
    }

    public void processUpdate(final TL_stories.TL_updateStory tL_updateStory) {
        TLRPC.User user;
        if (tL_updateStory.story == null) {
            return;
        }
        final long peerDialogId = DialogObject.getPeerDialogId(tL_updateStory.peer);
        if (peerDialogId == 0) {
            FileLog.m952d("StoriesController can't update story dialogId == 0");
            return;
        }
        if (peerDialogId > 0) {
            user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
            if (user != null && (isContactOrService(user) || user.self)) {
                this.storiesStorage.processUpdate(tL_updateStory);
            }
        } else {
            this.storiesStorage.processUpdate(tL_updateStory);
            user = null;
        }
        final TLRPC.User user2 = user;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processUpdate$10(peerDialogId, tL_updateStory, user2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0083, code lost:
    
        r9 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x020e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processUpdate$10(long j, TL_stories.TL_updateStory tL_updateStory, TLRPC.User user) {
        boolean z;
        boolean z2;
        boolean z3;
        FileLog.m952d("StoriesController update stories for dialog " + j);
        updateStoriesInLists(j, Collections.singletonList(tL_updateStory.story));
        updateStoriesForFullPeer(j, Collections.singletonList(tL_updateStory.story), true);
        TL_stories.PeerStories peerStories = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        ArrayList arrayList = new ArrayList();
        int i = this.totalStoriesCount;
        if (peerStories != null) {
            TL_stories.StoryItem storyItemApplyStoryUpdate = tL_updateStory.story;
            if (storyItemApplyStoryUpdate instanceof TL_stories.TL_storyItemDeleted) {
                NotificationsController.getInstance(this.currentAccount).processDeleteStory(j, storyItemApplyStoryUpdate.id);
            }
            int i2 = 0;
            while (true) {
                if (i2 >= peerStories.stories.size()) {
                    z2 = false;
                    break;
                }
                if (peerStories.stories.get(i2).id != storyItemApplyStoryUpdate.id) {
                    i2++;
                } else if (storyItemApplyStoryUpdate instanceof TL_stories.TL_storyItemDeleted) {
                    peerStories.stories.remove(i2);
                    FileLog.m952d("StoriesController remove story id=" + storyItemApplyStoryUpdate.id);
                    z2 = true;
                } else {
                    TL_stories.StoryItem storyItem = peerStories.stories.get(i2);
                    storyItemApplyStoryUpdate = applyStoryUpdate(storyItem, storyItemApplyStoryUpdate);
                    arrayList.add(storyItemApplyStoryUpdate);
                    peerStories.stories.set(i2, storyItemApplyStoryUpdate);
                    if (storyItemApplyStoryUpdate.attachPath == null) {
                        storyItemApplyStoryUpdate.attachPath = storyItem.attachPath;
                    }
                    if (storyItemApplyStoryUpdate.firstFramePath == null) {
                        storyItemApplyStoryUpdate.firstFramePath = storyItem.firstFramePath;
                    }
                    FileLog.m952d("StoriesController update story id=" + storyItemApplyStoryUpdate.id);
                    z2 = true;
                    z3 = false;
                }
            }
            if (z2) {
                z = false;
            } else {
                if (storyItemApplyStoryUpdate instanceof TL_stories.TL_storyItemDeleted) {
                    FileLog.m952d("StoriesController can't add new story DELETED");
                    return;
                }
                if (StoriesUtilities.isExpired(this.currentAccount, storyItemApplyStoryUpdate)) {
                    FileLog.m952d("StoriesController can't add new story isExpired");
                    return;
                }
                if (j > 0 && (user == null || (!user.self && !isContactOrService(user)))) {
                    FileLog.m952d("StoriesController can't add new story user is not contact");
                    return;
                }
                arrayList.add(storyItemApplyStoryUpdate);
                peerStories.stories.add(storyItemApplyStoryUpdate);
                FileLog.m952d("StoriesController add new story id=" + storyItemApplyStoryUpdate.id + " total stories count " + peerStories.stories.size());
                preloadStory(j, storyItemApplyStoryUpdate);
                applyToList(peerStories);
                z = true;
                z3 = true;
            }
            if (z3) {
                if (peerStories.stories.isEmpty() && !hasUploadingStories(j)) {
                    this.dialogListStories.remove(peerStories);
                    this.hiddenListStories.remove(peerStories);
                    this.allStoriesMap.remove(DialogObject.getPeerDialogId(peerStories.peer));
                    this.totalStoriesCount--;
                } else {
                    Collections.sort(peerStories.stories, storiesComparator);
                }
            }
            if (i != this.totalStoriesCount) {
                this.mainSettings.edit().putInt("total_stores", this.totalStoriesCount).apply();
            }
            fixDeletedAndNonContactsStories(this.dialogListStories);
            fixDeletedAndNonContactsStories(this.hiddenListStories);
            if (z) {
                if (tL_updateStory.story instanceof TL_stories.TL_storyItemDeleted) {
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storyDeleted, Long.valueOf(j), Integer.valueOf(tL_updateStory.story.id));
                }
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            }
            MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        }
        TL_stories.StoryItem storyItem2 = tL_updateStory.story;
        if (storyItem2 instanceof TL_stories.TL_storyItemDeleted) {
            FileLog.m952d("StoriesController can't add user " + j + " with new story DELETED");
            return;
        }
        if (StoriesUtilities.isExpired(this.currentAccount, storyItem2)) {
            FileLog.m952d("StoriesController can't add user " + j + " with new story isExpired");
            return;
        }
        if (j > 0 && (user == null || (!user.self && !isContactOrService(user)))) {
            FileLog.m952d("StoriesController can't add user cause is not contact");
            return;
        }
        TL_stories.TL_peerStories tL_peerStories = new TL_stories.TL_peerStories();
        tL_peerStories.peer = tL_updateStory.peer;
        tL_peerStories.stories.add(tL_updateStory.story);
        FileLog.m952d("StoriesController add new user with story id=" + tL_updateStory.story.id);
        applyNewStories(tL_peerStories);
        this.totalStoriesCount = this.totalStoriesCount + 1;
        loadAllStoriesForDialog(j);
        z = true;
        if (i != this.totalStoriesCount) {
        }
        fixDeletedAndNonContactsStories(this.dialogListStories);
        fixDeletedAndNonContactsStories(this.hiddenListStories);
        if (z) {
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
    }

    private void updateStoriesForFullPeer(long j, List list, boolean z) {
        TL_stories.PeerStories peerStories;
        boolean z2;
        if (j > 0) {
            TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
            if (userFull == null) {
                return;
            }
            if (userFull.stories == null) {
                if (!z) {
                    return;
                }
                TL_stories.TL_peerStories tL_peerStories = new TL_stories.TL_peerStories();
                userFull.stories = tL_peerStories;
                tL_peerStories.peer = MessagesController.getInstance(this.currentAccount).getPeer(j);
                userFull.stories.max_read_id = getMaxStoriesReadId(j);
            }
            peerStories = userFull.stories;
        } else {
            TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
            if (chatFull == null) {
                return;
            }
            if (chatFull.stories == null) {
                if (!z) {
                    return;
                }
                TL_stories.TL_peerStories tL_peerStories2 = new TL_stories.TL_peerStories();
                chatFull.stories = tL_peerStories2;
                tL_peerStories2.peer = MessagesController.getInstance(this.currentAccount).getPeer(j);
                chatFull.stories.max_read_id = getMaxStoriesReadId(j);
            }
            peerStories = chatFull.stories;
        }
        for (int i = 0; i < list.size(); i++) {
            TL_stories.StoryItem storyItemApplyStoryUpdate = (TL_stories.StoryItem) list.get(i);
            int i2 = 0;
            while (true) {
                if (i2 >= peerStories.stories.size()) {
                    z2 = false;
                    break;
                }
                if (peerStories.stories.get(i2).id == storyItemApplyStoryUpdate.id) {
                    z2 = true;
                    if (storyItemApplyStoryUpdate instanceof TL_stories.TL_storyItemDeleted) {
                        peerStories.stories.remove(i2);
                    } else {
                        TL_stories.StoryItem storyItem = peerStories.stories.get(i2);
                        storyItemApplyStoryUpdate = applyStoryUpdate(storyItem, storyItemApplyStoryUpdate);
                        peerStories.stories.set(i2, storyItemApplyStoryUpdate);
                        if (storyItemApplyStoryUpdate.attachPath == null) {
                            storyItemApplyStoryUpdate.attachPath = storyItem.attachPath;
                        }
                        if (storyItemApplyStoryUpdate.firstFramePath == null) {
                            storyItemApplyStoryUpdate.firstFramePath = storyItem.firstFramePath;
                        }
                        FileLog.m952d("StoriesController update story for full peer storyId=" + storyItemApplyStoryUpdate.id);
                    }
                } else {
                    i2++;
                }
            }
            if (!z2) {
                if (storyItemApplyStoryUpdate instanceof TL_stories.TL_storyItemDeleted) {
                    FileLog.m952d("StoriesController story is not found, but already deleted storyId=" + storyItemApplyStoryUpdate.id);
                } else if (z) {
                    FileLog.m952d("StoriesController add new story for full peer storyId=" + storyItemApplyStoryUpdate.id);
                    peerStories.stories.add(storyItemApplyStoryUpdate);
                    peerStories.checkedExpired = false;
                }
            }
        }
    }

    private boolean isContactOrService(TLRPC.User user) {
        if (user != null) {
            return user.contact || user.id == MessagesController.getInstance(this.currentAccount).storiesChangelogUserId;
        }
        return false;
    }

    private void applyToList(TL_stories.PeerStories peerStories) {
        TLRPC.Chat chat;
        boolean z;
        boolean z2;
        long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
        TLRPC.User user = null;
        if (peerDialogId > 0) {
            TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
            if (user2 == null) {
                FileLog.m952d("StoriesController can't apply story user == null");
                return;
            } else {
                user = user2;
                chat = null;
            }
        } else {
            chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId));
            if (chat == null) {
                FileLog.m952d("StoriesController can't apply story chat == null");
                return;
            }
        }
        int i = 0;
        while (true) {
            z = true;
            if (i >= this.dialogListStories.size()) {
                z2 = false;
                break;
            } else {
                if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) this.dialogListStories.get(i)).peer) == peerDialogId) {
                    this.dialogListStories.remove(i);
                    z2 = true;
                    break;
                }
                i++;
            }
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.hiddenListStories.size()) {
                break;
            }
            if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) this.hiddenListStories.get(i2)).peer) == peerDialogId) {
                this.hiddenListStories.remove(i2);
                z2 = true;
                break;
            }
            i2++;
        }
        if ((user == null || !user.stories_hidden) && (chat == null || !chat.stories_hidden)) {
            z = false;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m952d("StoriesController move user stories to first hidden=" + z + " did=" + peerDialogId);
        }
        if (z) {
            this.hiddenListStories.add(0, peerStories);
        } else {
            this.dialogListStories.add(0, peerStories);
        }
        if (!z2) {
            loadAllStoriesForDialog(peerDialogId);
        }
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
    }

    private void loadAllStoriesForDialog(final long j) {
        if (this.allStoriesLoading.contains(Long.valueOf(j))) {
            return;
        }
        this.allStoriesLoading.add(Long.valueOf(j));
        FileLog.m952d("StoriesController loadAllStoriesForDialog " + j);
        TL_stories.TL_stories_getPeerStories tL_stories_getPeerStories = new TL_stories.TL_stories_getPeerStories();
        tL_stories_getPeerStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_getPeerStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAllStoriesForDialog$12(j, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAllStoriesForDialog$12(final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAllStoriesForDialog$11(j, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAllStoriesForDialog$11(long j, TLObject tLObject) {
        this.allStoriesLoading.remove(Long.valueOf(j));
        if (tLObject == null) {
            return;
        }
        TL_stories.TL_stories_peerStories tL_stories_peerStories = (TL_stories.TL_stories_peerStories) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(tL_stories_peerStories.users, false);
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        TL_stories.PeerStories peerStories = tL_stories_peerStories.stories;
        this.allStoriesMap.put(DialogObject.getPeerDialogId(peerStories.peer), peerStories);
        if (user != null && (isContactOrService(user) || user.self)) {
            applyToList(peerStories);
            this.storiesStorage.putPeerStories(peerStories);
        }
        FileLog.m952d("StoriesController processAllStoriesResponse dialogId=" + j + " overwrite stories " + tL_stories_peerStories.stories.stories.size());
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public boolean hasSelfStories() {
        long j = UserConfig.getInstance(this.currentAccount).clientUserId;
        TL_stories.PeerStories peerStories = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        return ((peerStories == null || peerStories.stories.isEmpty()) && Utilities.isNullOrEmpty((Collection) this.uploadingStoriesByDialogId.get(j))) ? false : true;
    }

    public int getSelfStoriesCount() {
        TL_stories.PeerStories peerStories = (TL_stories.PeerStories) this.allStoriesMap.get(UserConfig.getInstance(this.currentAccount).clientUserId);
        return (peerStories != null ? peerStories.stories.size() : 0) + this.uploadingStoriesByDialogId.size();
    }

    public void deleteStory(long j, TL_stories.StoryItem storyItem) {
        TLRPC.ChatFull chatFull;
        TLRPC.UserFull userFull;
        if (storyItem == null || (storyItem instanceof TL_stories.TL_storyItemDeleted)) {
            return;
        }
        for (int i = 0; i < 2; i++) {
            TL_stories.PeerStories peerStories = null;
            if (i == 0) {
                chatFull = null;
                peerStories = (TL_stories.PeerStories) this.allStoriesMap.get(j);
                userFull = null;
            } else if (j >= 0) {
                userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
                if (userFull != null) {
                    chatFull = null;
                    peerStories = userFull.stories;
                } else {
                    chatFull = null;
                }
            } else {
                TLRPC.ChatFull chatFull2 = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
                if (chatFull2 != null) {
                    TL_stories.PeerStories peerStories2 = chatFull2.stories;
                    userFull = null;
                    peerStories = peerStories2;
                    chatFull = chatFull2;
                } else {
                    chatFull = chatFull2;
                    userFull = null;
                }
            }
            if (peerStories != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= peerStories.stories.size()) {
                        break;
                    }
                    if (peerStories.stories.get(i2).id == storyItem.id) {
                        peerStories.stories.remove(i2);
                        if (peerStories.stories.size() == 0) {
                            if (!hasUploadingStories(j)) {
                                this.allStoriesMap.remove(j);
                                this.dialogListStories.remove(peerStories);
                                this.hiddenListStories.remove(peerStories);
                            }
                            if (j > 0) {
                                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
                                if (user != null) {
                                    user.stories_unavailable = true;
                                }
                            } else {
                                TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
                                if (chat != null) {
                                    chat.stories_unavailable = true;
                                }
                            }
                        }
                    } else {
                        i2++;
                    }
                }
            }
            if (chatFull != null) {
                MessagesStorage.getInstance(this.currentAccount).updateChatInfo(chatFull, false);
            }
            if (userFull != null) {
                MessagesStorage.getInstance(this.currentAccount).updateUserInfo(userFull, false);
            }
        }
        TL_stories.TL_stories_deleteStories tL_stories_deleteStories = new TL_stories.TL_stories_deleteStories();
        tL_stories_deleteStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tL_stories_deleteStories.id.add(Integer.valueOf(storyItem.id));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$deleteStory$13(tLObject, tL_error);
            }
        });
        this.storiesStorage.deleteStory(j, storyItem.id);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        updateDeletedStoriesInLists(j, Arrays.asList(storyItem));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStory$13(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda6(this));
        }
    }

    public void deleteStories(long j, ArrayList arrayList) {
        TLRPC.ChatFull chatFull;
        TL_stories.PeerStories peerStories;
        TLRPC.UserFull userFull;
        if (arrayList == null) {
            return;
        }
        TL_stories.TL_stories_deleteStories tL_stories_deleteStories = new TL_stories.TL_stories_deleteStories();
        TLRPC.InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tL_stories_deleteStories.peer = inputPeer;
        if (inputPeer == null) {
            return;
        }
        TL_stories.PeerStories peerStories2 = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        for (int i = 0; i < arrayList.size(); i++) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) arrayList.get(i);
            if (!(storyItem instanceof TL_stories.TL_storyItemDeleted)) {
                if (peerStories2 != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= peerStories2.stories.size()) {
                            break;
                        }
                        if (peerStories2.stories.get(i2).id == storyItem.id) {
                            peerStories2.stories.remove(i2);
                            if (peerStories2.stories.isEmpty()) {
                                this.allStoriesMap.remove(j);
                            }
                        } else {
                            i2++;
                        }
                    }
                }
                tL_stories_deleteStories.id.add(Integer.valueOf(storyItem.id));
            }
        }
        if (j < 0 ? !((chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j)) == null || (peerStories = chatFull.stories) == null) : !((userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j)) == null || (peerStories = userFull.stories) == null)) {
            peerStories2 = peerStories;
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            TL_stories.StoryItem storyItem2 = (TL_stories.StoryItem) arrayList.get(i3);
            if (!(storyItem2 instanceof TL_stories.TL_storyItemDeleted) && peerStories2 != null) {
                int i4 = 0;
                while (true) {
                    if (i4 >= peerStories2.stories.size()) {
                        break;
                    }
                    if (peerStories2.stories.get(i4).id == storyItem2.id) {
                        peerStories2.stories.remove(i4);
                        break;
                    }
                    i4++;
                }
            }
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda28
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$deleteStories$14(tLObject, tL_error);
            }
        });
        updateDeletedStoriesInLists(j, arrayList);
        this.storiesStorage.deleteStories(j, tL_stories_deleteStories.id);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStories$14(TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda6(this));
    }

    public void updateStoriesPinned(long j, ArrayList arrayList, boolean z, final Utilities.Callback callback) {
        TL_stories.togglePinned togglepinned = new TL_stories.togglePinned();
        TL_stories.PeerStories stories = getStories(j);
        for (int i = 0; i < arrayList.size(); i++) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) arrayList.get(i);
            if (!(storyItem instanceof TL_stories.TL_storyItemDeleted)) {
                storyItem.pinned = z;
                togglepinned.id.add(Integer.valueOf(storyItem.id));
                if (stories != null) {
                    for (int i2 = 0; i2 < stories.stories.size(); i2++) {
                        if (stories.stories.get(i2).id == storyItem.id) {
                            stories.stories.get(i2).pinned = z;
                            this.storiesStorage.updateStoryItem(j, storyItem);
                        }
                    }
                }
            }
        }
        FileLog.m952d("StoriesController updateStoriesPinned");
        updateStoriesInLists(j, arrayList);
        updateStoriesForFullPeer(j, arrayList, false);
        togglepinned.pinned = z;
        togglepinned.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(togglepinned, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda21
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda30
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.m18651$r8$lambda$b7OkWgFOuLvuxCAhP7cdmXUtw8(callback, tL_error);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$b7OkWgFOuLvuxCAhP7cd-mXUtw8, reason: not valid java name */
    public static /* synthetic */ void m18651$r8$lambda$b7OkWgFOuLvuxCAhP7cdmXUtw8(Utilities.Callback callback, TLRPC.TL_error tL_error) {
        if (callback != null) {
            callback.run(Boolean.valueOf(tL_error == null));
        }
    }

    private long getSelfUserId() {
        return UserConfig.getInstance(this.currentAccount).getClientUserId();
    }

    public void updateStoryItem(long j, TL_stories.StoryItem storyItem, boolean z) {
        updateStoryItem(j, storyItem, false, z);
    }

    public void updateStoryItem(long j, TL_stories.StoryItem storyItem, boolean z, boolean z2) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("StoriesController updateStoryItem ");
        sb.append(j);
        sb.append(" ");
        if (storyItem == null) {
            str = "null";
        } else {
            str = storyItem.id + "@" + storyItem.dialogId;
        }
        sb.append(str);
        FileLog.m952d(sb.toString());
        updateStoriesInLists(j, Collections.singletonList(storyItem), z);
        this.storiesStorage.updateStoryItem(j, storyItem);
        updateStoriesForFullPeer(j, Collections.singletonList(storyItem), !z2);
    }

    public boolean markStoryAsRead(long j, TL_stories.StoryItem storyItem) {
        TL_stories.PeerStories stories = getStories(j);
        if (stories == null) {
            stories = getStoriesFromFullPeer(j);
        }
        return markStoryAsRead(stories, storyItem, false);
    }

    public boolean markStoryAsRead(TL_stories.PeerStories peerStories, TL_stories.StoryItem storyItem, boolean z) {
        if (storyItem != null && peerStories != null) {
            long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
            if (storyItem.justUploaded) {
                storyItem.justUploaded = false;
            }
            int i = this.dialogIdToMaxReadId.get(peerDialogId);
            int iMax = Math.max(peerStories.max_read_id, Math.max(i, storyItem.id));
            NotificationsController.getInstance(this.currentAccount).processReadStories(peerDialogId, iMax);
            peerStories.max_read_id = iMax;
            this.dialogIdToMaxReadId.put(peerDialogId, iMax);
            if (iMax > i) {
                if (!z) {
                    this.storiesStorage.updateMaxReadId(peerDialogId, iMax);
                }
                TL_stories.TL_stories_readStories tL_stories_readStories = new TL_stories.TL_stories_readStories();
                tL_stories_readStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(peerDialogId);
                tL_stories_readStories.max_id = storyItem.id;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_readStories, null);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesReadUpdated, new Object[0]);
                return true;
            }
        }
        return false;
    }

    public int getMaxStoriesReadId(long j) {
        TL_stories.PeerStories stories = getStories(j);
        if (stories == null) {
            stories = getStoriesFromFullPeer(j);
        }
        if (stories != null) {
            return Math.max(stories.max_read_id, this.dialogIdToMaxReadId.get(j, 0));
        }
        return this.dialogIdToMaxReadId.get(j, 0);
    }

    public void markStoriesAsReadFromServer(final long j, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$markStoriesAsReadFromServer$17(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$markStoriesAsReadFromServer$17(long j, int i) {
        int iMax = Math.max(this.dialogIdToMaxReadId.get(j, 0), i);
        this.dialogIdToMaxReadId.put(j, iMax);
        this.storiesStorage.updateMaxReadId(j, iMax);
        TL_stories.PeerStories stories = getStories(j);
        if (stories != null && i > stories.max_read_id) {
            stories.max_read_id = i;
            Collections.sort(this.dialogListStories, this.peerStoriesComparator);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
    }

    public boolean hasUnreadStories(long j) {
        TL_stories.PeerStories storiesFromFullPeer = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        if (storiesFromFullPeer == null) {
            storiesFromFullPeer = getStoriesFromFullPeer(j);
        }
        if (storiesFromFullPeer == null) {
            return false;
        }
        if (j == UserConfig.getInstance(this.currentAccount).getClientUserId() && !Utilities.isNullOrEmpty((Collection) this.uploadingStoriesByDialogId.get(j))) {
            return true;
        }
        for (int i = 0; i < storiesFromFullPeer.stories.size(); i++) {
            TL_stories.StoryItem storyItem = storiesFromFullPeer.stories.get(i);
            if (storyItem != null && storyItem.id > storiesFromFullPeer.max_read_id) {
                return true;
            }
        }
        return false;
    }

    public int hasUnreadStoriesLive(long j) {
        TL_stories.PeerStories storiesFromFullPeer = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        if (storiesFromFullPeer == null) {
            storiesFromFullPeer = getStoriesFromFullPeer(j);
        }
        if (storiesFromFullPeer == null) {
            return 0;
        }
        if (j == UserConfig.getInstance(this.currentAccount).getClientUserId() && !Utilities.isNullOrEmpty((Collection) this.uploadingStoriesByDialogId.get(j))) {
            return 1;
        }
        for (int i = 0; i < storiesFromFullPeer.stories.size(); i++) {
            TL_stories.StoryItem storyItem = storiesFromFullPeer.stories.get(i);
            if (storyItem != null) {
                if (storyItem.media instanceof TLRPC.TL_messageMediaVideoStream) {
                    return 2;
                }
                if (storyItem.id > storiesFromFullPeer.max_read_id) {
                    return 1;
                }
            }
        }
        return 0;
    }

    public boolean hasLiveStory(long j) {
        TL_stories.PeerStories storiesFromFullPeer = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        if (storiesFromFullPeer == null) {
            storiesFromFullPeer = getStoriesFromFullPeer(j);
        }
        if (storiesFromFullPeer == null) {
            return false;
        }
        for (int size = storiesFromFullPeer.stories.size() - 1; size >= 0; size--) {
            TL_stories.StoryItem storyItem = storiesFromFullPeer.stories.get(size);
            if (storyItem != null && (storyItem.media instanceof TLRPC.TL_messageMediaVideoStream)) {
                return true;
            }
        }
        return false;
    }

    public int getUnreadState(long j) {
        return getUnreadState(j, 0);
    }

    public int getUnreadState(long j, int i) {
        if (j == 0) {
            return 0;
        }
        TL_stories.PeerStories storiesFromFullPeer = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        if (storiesFromFullPeer == null) {
            storiesFromFullPeer = getStoriesFromFullPeer(j);
        }
        if (storiesFromFullPeer == null) {
            return 0;
        }
        if (j == UserConfig.getInstance(this.currentAccount).getClientUserId() && !Utilities.isNullOrEmpty((Collection) this.uploadingStoriesByDialogId.get(j))) {
            return 1;
        }
        int iMax = Math.max(storiesFromFullPeer.max_read_id, this.dialogIdToMaxReadId.get(j, 0));
        boolean z = false;
        for (int i2 = 0; i2 < storiesFromFullPeer.stories.size(); i2++) {
            if (storiesFromFullPeer.stories.get(i2).media instanceof TLRPC.TL_messageMediaVideoStream) {
                return 3;
            }
            if ((i == 0 || storiesFromFullPeer.stories.get(i2).id == i) && storiesFromFullPeer.stories.get(i2).id > iMax) {
                if (storiesFromFullPeer.stories.get(i2).close_friends) {
                    return 2;
                }
                z = true;
            }
        }
        return (!isLastUploadingFailed(j) && z) ? 1 : 0;
    }

    public boolean hasUploadingStories(long j) {
        ArrayList arrayList = (ArrayList) this.uploadingStoriesByDialogId.get(j);
        HashMap map = (HashMap) this.editingStories.get(j);
        if (arrayList == null || arrayList.isEmpty()) {
            return (map == null || map.isEmpty()) ? false : true;
        }
        return true;
    }

    public void cleanup() {
        this.allStoriesLoaded = false;
        this.allHiddenStoriesLoaded = false;
        this.storiesReadLoaded = false;
        this.stateHidden = _UrlKt.FRAGMENT_ENCODE_SET;
        this.state = _UrlKt.FRAGMENT_ENCODE_SET;
        this.mainSettings.edit().putBoolean("stories_loaded", false).remove("last_stories_state").putBoolean("stories_loaded_hidden", false).remove("last_stories_state_hidden").putBoolean("read_loaded", false).apply();
        final DraftsController draftsController = this.draftsController;
        Objects.requireNonNull(draftsController);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                draftsController.cleanup();
            }
        });
        loadStories();
        loadStoriesRead();
    }

    public void pollViewsForSelfStories(long j, boolean z) {
        ViewsForPeerStoriesRequester viewsForPeerStoriesRequester = (ViewsForPeerStoriesRequester) this.pollingViewsForSelfStoriesRequester.get(j);
        if (viewsForPeerStoriesRequester == null) {
            viewsForPeerStoriesRequester = new ViewsForPeerStoriesRequester(this, j, this.currentAccount);
            this.pollingViewsForSelfStoriesRequester.put(j, viewsForPeerStoriesRequester);
        }
        viewsForPeerStoriesRequester.start(z);
    }

    public void stopAllPollers() {
        for (int i = 0; i < this.pollingViewsForSelfStoriesRequester.size(); i++) {
            ((ViewsForPeerStoriesRequester) this.pollingViewsForSelfStoriesRequester.valueAt(i)).start(false);
        }
    }

    void loadSkippedStories(long j) {
        boolean z;
        TL_stories.PeerStories stories = getStories(j);
        if (stories == null) {
            stories = getStoriesFromFullPeer(j);
            z = true;
        } else {
            z = false;
        }
        loadSkippedStories(stories, z);
    }

    void loadSkippedStories(final TL_stories.PeerStories peerStories, final boolean z) {
        if (peerStories == null) {
            return;
        }
        final long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
        final long j = peerDialogId * ((long) (z ? -1 : 1));
        if (this.loadingAllStories.contains(Long.valueOf(j))) {
            return;
        }
        ArrayList<Integer> arrayList = null;
        for (int i = 0; i < peerStories.stories.size(); i++) {
            if (peerStories.stories.get(i) instanceof TL_stories.TL_storyItemSkipped) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(Integer.valueOf(peerStories.stories.get(i).id));
            }
            if (arrayList != null && arrayList.size() > 14) {
                break;
            }
        }
        if (arrayList != null) {
            this.loadingAllStories.add(Long.valueOf(j));
            TL_stories.TL_stories_getStoriesByID tL_stories_getStoriesByID = new TL_stories.TL_stories_getStoriesByID();
            tL_stories_getStoriesByID.id = arrayList;
            tL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(peerDialogId);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda23
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadSkippedStories$19(j, z, peerStories, peerDialogId, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSkippedStories$19(final long j, final boolean z, final TL_stories.PeerStories peerStories, final long j2, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSkippedStories$18(j, z, peerStories, j2, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSkippedStories$18(long j, boolean z, TL_stories.PeerStories peerStories, long j2, TLObject tLObject) {
        this.loadingAllStories.remove(Long.valueOf(j));
        if (!z) {
            peerStories = getStories(j2);
        }
        if (peerStories == null) {
            return;
        }
        if (tLObject instanceof TL_stories.TL_stories_stories) {
            TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject;
            for (int i = 0; i < tL_stories_stories.stories.size(); i++) {
                for (int i2 = 0; i2 < peerStories.stories.size(); i2++) {
                    if (peerStories.stories.get(i2).id == tL_stories_stories.stories.get(i).id) {
                        peerStories.stories.set(i2, tL_stories_stories.stories.get(i));
                        preloadStory(j2, tL_stories_stories.stories.get(i));
                    }
                }
            }
            if (!z) {
                this.storiesStorage.updateStories(peerStories);
            }
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public void loadNextStories(boolean z) {
        if (z) {
            if (!this.hasMoreHidden) {
                return;
            }
        } else if (!this.hasMore) {
            return;
        }
        loadFromServer(z);
    }

    public void fillMessagesWithStories(LongSparseArray longSparseArray, Runnable runnable, int i, Timer timer) {
        this.storiesStorage.fillMessagesWithStories(longSparseArray, runnable, i, timer);
    }

    public void resolveStoryAlbumLink(long j, final int i, final Consumer consumer) {
        StoriesCollections storyAlbumsList = getStoryAlbumsList(j, false);
        if (storyAlbumsList != null) {
            StoryAlbum storyAlbumFindById = storyAlbumsList.findById(i);
            if (storyAlbumFindById != null) {
                consumer.accept(storyAlbumFindById.toTl());
                return;
            } else if (storyAlbumsList.loaded) {
                consumer.accept(null);
                return;
            }
        }
        TL_stories.TL_getAlbums tL_getAlbums = new TL_stories.TL_getAlbums();
        tL_getAlbums.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_getAlbums, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda26
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda31
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.$r8$lambda$B2LG_gRvrAT08kQkY2FYnEPrC1k(tLObject, i, consumer);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$B2LG_gRvrAT08kQkY2FYnEPrC1k(TLObject tLObject, int i, Consumer consumer) {
        if (tLObject instanceof TL_stories.TL_albums) {
            ArrayList<TL_stories.TL_storyAlbum> arrayList = ((TL_stories.TL_albums) tLObject).albums;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                TL_stories.TL_storyAlbum tL_storyAlbum = arrayList.get(i2);
                i2++;
                TL_stories.TL_storyAlbum tL_storyAlbum2 = tL_storyAlbum;
                if (tL_storyAlbum2.album_id == i) {
                    consumer.accept(tL_storyAlbum2);
                    return;
                }
            }
        }
        consumer.accept(null);
    }

    public void resolveLiveStoryLink(long j, Consumer consumer) {
        TL_stories.PeerStories stories = getStories(j);
        if (stories != null) {
            for (int i = 0; i < stories.stories.size(); i++) {
                if ((stories.stories.get(i).media instanceof TLRPC.TL_messageMediaVideoStream) && !(stories.stories.get(i) instanceof TL_stories.TL_storyItemSkipped)) {
                    consumer.accept(stories.stories.get(i));
                    return;
                }
            }
        }
        long j2 = ((-93321425) + j) << 12;
        TL_stories.StoryItem storyItem = (TL_stories.StoryItem) this.resolvedStories.get(j2);
        if (storyItem != null) {
            consumer.accept(storyItem);
            return;
        }
        TL_stories.TL_stories_getPeerStories tL_stories_getPeerStories = new TL_stories.TL_stories_getPeerStories();
        tL_stories_getPeerStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_getPeerStories, new C56721(j2, consumer));
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.StoriesController$1 */
    /* JADX INFO: loaded from: classes7.dex */
    class C56721 implements RequestDelegate {
        final /* synthetic */ Consumer val$consumer;
        final /* synthetic */ long val$hash;

        C56721(long j, Consumer consumer) {
            this.val$hash = j;
            this.val$consumer = consumer;
        }

        @Override // org.telegram.tgnet.RequestDelegate
        public void run(final TLObject tLObject, TLRPC.TL_error tL_error) {
            final long j = this.val$hash;
            final Consumer consumer = this.val$consumer;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(tLObject, j, consumer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$run$0(TLObject tLObject, long j, Consumer consumer) {
            TL_stories.StoryItem storyItem;
            if (tLObject != null) {
                TL_stories.TL_stories_peerStories tL_stories_peerStories = (TL_stories.TL_stories_peerStories) tLObject;
                MessagesController.getInstance(StoriesController.this.currentAccount).putUsers(tL_stories_peerStories.users, false);
                MessagesController.getInstance(StoriesController.this.currentAccount).putChats(tL_stories_peerStories.chats, false);
                TL_stories.PeerStories peerStories = tL_stories_peerStories.stories;
                if (peerStories != null) {
                    for (int i = 0; i < peerStories.stories.size(); i++) {
                        if ((peerStories.stories.get(i).media instanceof TLRPC.TL_messageMediaVideoStream) && !(peerStories.stories.get(i) instanceof TL_stories.TL_storyItemSkipped)) {
                            LongSparseArray longSparseArray = StoriesController.this.resolvedStories;
                            storyItem = peerStories.stories.get(i);
                            longSparseArray.put(j, storyItem);
                            break;
                        }
                    }
                    storyItem = null;
                } else {
                    storyItem = null;
                }
            }
            consumer.accept(storyItem);
        }
    }

    public void resolveStoryLink(long j, int i, Consumer consumer) {
        TL_stories.PeerStories stories = getStories(j);
        if (stories != null) {
            for (int i2 = 0; i2 < stories.stories.size(); i2++) {
                if (stories.stories.get(i2).id == i && !(stories.stories.get(i2) instanceof TL_stories.TL_storyItemSkipped)) {
                    consumer.accept(stories.stories.get(i2));
                    return;
                }
            }
        }
        long j2 = (((long) i) + j) << 12;
        TL_stories.StoryItem storyItem = (TL_stories.StoryItem) this.resolvedStories.get(j2);
        if (storyItem != null) {
            consumer.accept(storyItem);
            return;
        }
        TL_stories.TL_stories_getStoriesByID tL_stories_getStoriesByID = new TL_stories.TL_stories_getStoriesByID();
        tL_stories_getStoriesByID.id.add(Integer.valueOf(i));
        tL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_getStoriesByID, new C56732(j2, consumer));
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.StoriesController$2 */
    /* JADX INFO: loaded from: classes7.dex */
    class C56732 implements RequestDelegate {
        final /* synthetic */ Consumer val$consumer;
        final /* synthetic */ long val$hash;

        C56732(long j, Consumer consumer) {
            this.val$hash = j;
            this.val$consumer = consumer;
        }

        @Override // org.telegram.tgnet.RequestDelegate
        public void run(final TLObject tLObject, TLRPC.TL_error tL_error) {
            final long j = this.val$hash;
            final Consumer consumer = this.val$consumer;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0(tLObject, j, consumer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:6:0x003b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$run$0(TLObject tLObject, long j, Consumer consumer) {
            TL_stories.StoryItem storyItem;
            if (tLObject != null) {
                TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject;
                MessagesController.getInstance(StoriesController.this.currentAccount).putUsers(tL_stories_stories.users, false);
                MessagesController.getInstance(StoriesController.this.currentAccount).putChats(tL_stories_stories.chats, false);
                if (tL_stories_stories.stories.size() > 0) {
                    LongSparseArray longSparseArray = StoriesController.this.resolvedStories;
                    storyItem = tL_stories_stories.stories.get(0);
                    longSparseArray.put(j, storyItem);
                } else {
                    storyItem = null;
                }
            }
            consumer.accept(storyItem);
        }
    }

    public ArrayList getHiddenList() {
        return this.hiddenListStories;
    }

    public int getTotalStoriesCount(boolean z) {
        return z ? this.hasMoreHidden ? Math.max(1, this.totalStoriesCountHidden) : this.hiddenListStories.size() : this.hasMore ? Math.max(1, this.totalStoriesCount) : this.dialogListStories.size();
    }

    public void putStories(long j, TL_stories.PeerStories peerStories) {
        putToAllStories(j, peerStories);
        if (j > 0) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
            if (isContactOrService(user) || user.self) {
                this.storiesStorage.putPeerStories(peerStories);
                return;
            }
            return;
        }
        if (ChatObject.isInChat(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j)))) {
            this.storiesStorage.putPeerStories(peerStories);
        }
    }

    public void setLoading(long j, boolean z) {
        if (z) {
            this.loadingDialogsStories.put(j, 1);
        } else {
            this.loadingDialogsStories.delete(j);
        }
    }

    public boolean isLoading(long j) {
        return this.loadingDialogsStories.get(j, 0) == 1;
    }

    public void removeContact(long j) {
        int i = 0;
        while (true) {
            if (i >= this.dialogListStories.size()) {
                break;
            }
            if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) this.dialogListStories.get(i)).peer) == j) {
                this.dialogListStories.remove(i);
                break;
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.hiddenListStories.size()) {
                break;
            }
            if (DialogObject.getPeerDialogId(((TL_stories.PeerStories) this.hiddenListStories.get(i2)).peer) == j) {
                this.hiddenListStories.remove(i2);
                break;
            }
            i2++;
        }
        this.storiesStorage.deleteAllUserStories(j);
        MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public StoriesStorage getStoriesStorage() {
        return this.storiesStorage;
    }

    public boolean hasHiddenStories() {
        return (this.hiddenListStories.isEmpty() || ExteraConfig.hideStories) ? false : true;
    }

    public void checkExpiredStories() {
        checkExpireStories(this.dialogListStories);
        checkExpireStories(this.hiddenListStories);
    }

    private void checkExpireStories(ArrayList arrayList) {
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            TL_stories.PeerStories peerStories = (TL_stories.PeerStories) arrayList.get(i);
            long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
            int i2 = 0;
            while (i2 < peerStories.stories.size()) {
                if (StoriesUtilities.isExpired(this.currentAccount, peerStories.stories.get(i2))) {
                    peerStories.stories.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (peerStories.stories.isEmpty() && !hasUploadingStories(peerDialogId)) {
                this.allStoriesMap.remove(peerDialogId);
                arrayList.remove(peerStories);
                z = true;
            }
        }
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
        }
    }

    private void checkExpireStories(TL_stories.PeerStories peerStories) {
        if (peerStories == null || peerStories.stories == null) {
            return;
        }
        int i = 0;
        while (i < peerStories.stories.size()) {
            if (StoriesUtilities.isExpired(this.currentAccount, peerStories.stories.get(i))) {
                peerStories.stories.remove(i);
                i--;
            }
            i++;
        }
        peerStories.checkedExpired = true;
    }

    public void checkExpiredStories(long j) {
        TL_stories.PeerStories stories = getStories(j);
        if (stories == null) {
            return;
        }
        int i = 0;
        while (i < stories.stories.size()) {
            if (StoriesUtilities.isExpired(this.currentAccount, stories.stories.get(i))) {
                stories.stories.remove(i);
                i--;
            }
            i++;
        }
        if (!stories.stories.isEmpty() || hasUnreadStories(j)) {
            return;
        }
        this.dialogListStories.remove(stories);
        this.hiddenListStories.remove(stories);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public boolean hasLoadingStories() {
        return this.loadingDialogsStories.size() > 0;
    }

    public TL_stories.TL_storiesStealthMode getStealthMode() {
        return this.stealthMode;
    }

    public void setStealthMode(TL_stories.TL_storiesStealthMode tL_storiesStealthMode) {
        this.stealthMode = tL_storiesStealthMode;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.stealthModeChanged, new Object[0]);
        writeStealthMode(tL_storiesStealthMode);
    }

    public void setStoryReaction(long j, TL_stories.StoryItem storyItem, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        if (storyItem == null) {
            return;
        }
        TL_stories.TL_stories_sendReaction tL_stories_sendReaction = new TL_stories.TL_stories_sendReaction();
        tL_stories_sendReaction.story_id = storyItem.id;
        tL_stories_sendReaction.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        if (visibleReaction == null) {
            tL_stories_sendReaction.reaction = new TLRPC.TL_reactionEmpty();
            storyItem.flags &= -32769;
            storyItem.sent_reaction = null;
        } else if (visibleReaction.documentId != 0) {
            TLRPC.TL_reactionCustomEmoji tL_reactionCustomEmoji = new TLRPC.TL_reactionCustomEmoji();
            tL_reactionCustomEmoji.document_id = visibleReaction.documentId;
            tL_stories_sendReaction.reaction = tL_reactionCustomEmoji;
            storyItem.flags |= 32768;
            storyItem.sent_reaction = tL_reactionCustomEmoji;
        } else if (visibleReaction.emojicon != null) {
            TLRPC.TL_reactionEmoji tL_reactionEmoji = new TLRPC.TL_reactionEmoji();
            tL_reactionEmoji.emoticon = visibleReaction.emojicon;
            tL_stories_sendReaction.reaction = tL_reactionEmoji;
            storyItem.flags |= 32768;
            storyItem.sent_reaction = tL_reactionEmoji;
        }
        updateStoryItem(j, storyItem, true);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_sendReaction, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda37
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                StoriesController.m18645$r8$lambda$5K2JLy0hG6eCW4OXirUJjmxFtA(tLObject, tL_error);
            }
        });
    }

    public void updateStoryReaction(long j, int i, TLRPC.Reaction reaction) {
        TL_stories.StoryItem storyItemFindStory = findStory(j, i);
        if (storyItemFindStory != null) {
            storyItemFindStory.sent_reaction = reaction;
            if (reaction != null) {
                storyItemFindStory.flags |= 32768;
            } else {
                storyItemFindStory.flags &= -32769;
            }
            updateStoryItem(j, storyItemFindStory, true);
        }
    }

    public TL_stories.StoryItem findStory(long j, int i) {
        TL_stories.PeerStories peerStories = (TL_stories.PeerStories) this.allStoriesMap.get(j);
        if (peerStories == null) {
            return null;
        }
        for (int i2 = 0; i2 < peerStories.stories.size(); i2++) {
            if (peerStories.stories.get(i2).id == i) {
                return peerStories.stories.get(i2);
            }
        }
        return null;
    }

    public void onPremiumChanged() {
        this.selfViewsModel.clear();
    }

    public void updateStoriesFromFullPeer(long j, TL_stories.PeerStories peerStories) {
        TL_stories.PeerStories peerStories2;
        if (peerStories == null || (peerStories2 = (TL_stories.PeerStories) this.allStoriesMap.get(j)) == null) {
            return;
        }
        FileLog.m952d("StoriesController update stories from full peer " + j);
        for (int i = 0; i < peerStories2.stories.size(); i++) {
            if (peerStories2.stories.get(i) instanceof TL_stories.TL_storyItemSkipped) {
                int i2 = peerStories2.stories.get(i).id;
                int i3 = 0;
                while (true) {
                    if (i3 >= peerStories.stories.size()) {
                        break;
                    }
                    if (peerStories.stories.get(i3).id == i2 && (peerStories.stories.get(i3) instanceof TL_stories.TL_storyItem)) {
                        peerStories2.stories.set(i, peerStories.stories.get(i3));
                        break;
                    }
                    i3++;
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class UploadingStory implements NotificationCenter.NotificationCenterDelegate {
        boolean canceled;
        float convertingProgress;
        private int currentRequest;
        long dialogId;
        private long duration;
        public final boolean edit;
        public final StoryEntry entry;
        private boolean entryDestroyed;
        public boolean failed;
        public String firstFramePath;
        public boolean hadFailed;
        public VideoEditedInfo info;
        public boolean isCloseFriends;
        boolean isVideo;
        public MessageObject messageObject;
        String path;
        private TL_bots.botPreviewMedia previewMedia;
        public float progress;
        public boolean putMessages;
        boolean ready;
        public MessageObject sharedMessageObject;
        float uploadProgress;
        private long firstSecondSize = -1;
        public final long random_id = Utilities.random.nextLong();

        public UploadingStory(StoryEntry storyEntry) {
            this.entry = storyEntry;
            this.edit = storyEntry.isEdit;
            File file = storyEntry.uploadThumbFile;
            if (file != null) {
                this.firstFramePath = file.getAbsolutePath();
            }
            boolean z = storyEntry.isError;
            this.hadFailed = z;
            this.failed = z;
            long j = storyEntry.botId;
            if (j != 0) {
                this.dialogId = j;
                return;
            }
            if (storyEntry.isEdit) {
                this.dialogId = storyEntry.editStoryPeerId;
                return;
            }
            TLRPC.InputPeer inputPeer = storyEntry.peer;
            if (inputPeer == null || (inputPeer instanceof TLRPC.TL_inputPeerSelf)) {
                this.dialogId = UserConfig.getInstance(StoriesController.this.currentAccount).clientUserId;
            } else {
                this.dialogId = DialogObject.getPeerDialogId(inputPeer);
            }
        }

        private void startForeground() {
            Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) StoryUploadingService.class);
            intent.putExtra("path", this.path);
            intent.putExtra("currentAccount", StoriesController.this.currentAccount);
            try {
                ApplicationLoader.applicationContext.startService(intent);
            } catch (Throwable th) {
                FileLog.m955e(th);
            }
        }

        public void start() {
            StoryEntry storyEntry = this.entry;
            if (storyEntry.isEditingCover) {
                TLRPC.TL_inputFileStoryDocument tL_inputFileStoryDocument = new TLRPC.TL_inputFileStoryDocument();
                tL_inputFileStoryDocument.doc = MessagesController.toInputDocument(this.entry.editingCoverDocument);
                sendUploadedRequest(tL_inputFileStoryDocument);
            } else if ((storyEntry.isEdit || (storyEntry.isRepost && storyEntry.repostMedia != null)) && !storyEntry.editedMedia && storyEntry.round == null) {
                sendUploadedRequest(null);
                return;
            }
            StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy = this.entry.privacy;
            this.isCloseFriends = storyPrivacy != null && storyPrivacy.isCloseFriends();
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.fileUploaded);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.fileUploadFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.fileUploadProgressChanged);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.filePreparingFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.filePreparingStarted);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).addObserver(this, NotificationCenter.fileNewChunkAvailable);
            boolean zWouldBeVideo = this.entry.wouldBeVideo();
            this.isVideo = zWouldBeVideo;
            if (zWouldBeVideo) {
                TLRPC.TL_message tL_message = new TLRPC.TL_message();
                tL_message.id = 1;
                String absolutePath = StoryEntry.makeCacheFile(StoriesController.this.currentAccount, true).getAbsolutePath();
                tL_message.attachPath = absolutePath;
                this.path = absolutePath;
                this.messageObject = new MessageObject(StoriesController.this.currentAccount, (TLRPC.Message) tL_message, (MessageObject) null, false, false);
                this.entry.getVideoEditedInfo(new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda7
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$start$0((VideoEditedInfo) obj);
                    }
                });
            } else {
                final File fileMakeCacheFile = StoryEntry.makeCacheFile(StoriesController.this.currentAccount, false);
                this.path = fileMakeCacheFile.getAbsolutePath();
                Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$start$2(fileMakeCacheFile);
                    }
                });
            }
            startForeground();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$0(VideoEditedInfo videoEditedInfo) {
            this.info = videoEditedInfo;
            this.messageObject.videoEditedInfo = videoEditedInfo;
            this.duration = videoEditedInfo.estimatedDuration / 1000;
            if (videoEditedInfo.needConvert()) {
                MediaController.getInstance().scheduleVideoConvert(this.messageObject, false, false, false);
            } else if (new File(this.messageObject.videoEditedInfo.originalPath).renameTo(new File(this.path))) {
                FileLoader.getInstance(StoriesController.this.currentAccount).uploadFile(this.path, false, false, 33554432);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$2(File file) {
            this.entry.buildPhoto(file);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$1();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$1() {
            this.ready = true;
            upload();
        }

        public void tryAgain() {
            this.failed = false;
            this.entryDestroyed = false;
            this.progress = 0.0f;
            this.uploadProgress = 0.0f;
            this.convertingProgress = 0.0f;
            if (this.path != null) {
                try {
                    new File(this.path).delete();
                    this.path = null;
                } catch (Exception unused) {
                }
            }
            start();
        }

        private void upload() {
            if (this.entry.shareUserIds != null) {
                putMessages();
                return;
            }
            FileLoader fileLoader = FileLoader.getInstance(StoriesController.this.currentAccount);
            String str = this.path;
            boolean z = !this.entry.isVideo;
            if (this.isVideo) {
                VideoEditedInfo videoEditedInfo = this.info;
                jMax = Math.max(1, (int) (videoEditedInfo != null ? videoEditedInfo.estimatedSize : 0L));
            }
            fileLoader.uploadFile(str, false, z, jMax, this.entry.isVideo ? 33554432 : 16777216, true);
        }

        public void cleanup() {
            HashMap map;
            ArrayList arrayList;
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploaded);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploadFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileUploadProgressChanged);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.filePreparingFailed);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.filePreparingStarted);
            NotificationCenter.getInstance(StoriesController.this.currentAccount).removeObserver(this, NotificationCenter.fileNewChunkAvailable);
            if (!this.failed && (arrayList = (ArrayList) StoriesController.this.uploadingStoriesByDialogId.get(this.dialogId)) != null) {
                arrayList.remove(this);
            }
            ArrayList arrayList2 = (ArrayList) StoriesController.this.uploadingAndEditingStories.get(this.dialogId);
            if (arrayList2 != null) {
                arrayList2.remove(this);
                if (!arrayList2.isEmpty()) {
                    StoriesController.this.uploadedStories++;
                } else {
                    StoriesController.this.uploadedStories = 0;
                }
            }
            if (this.edit && (map = (HashMap) StoriesController.this.editingStories.get(this.dialogId)) != null) {
                map.remove(Integer.valueOf(this.entry.editStoryId));
            }
            if (this.previewMedia != null) {
                StoriesList storiesList = StoriesController.this.getStoriesList(this.dialogId, 4, false);
                StoryEntry storyEntry = this.entry;
                if (storyEntry != null && storyEntry.isEdit) {
                    if (storiesList instanceof BotPreviewsList) {
                        ((BotPreviewsList) storiesList).edit(storyEntry.editingBotPreview, this.previewMedia);
                    }
                    int i = StoriesController.this.currentAccount;
                    long j = this.dialogId;
                    StoryEntry storyEntry2 = this.entry;
                    BotPreviewsEditContainer.edit(i, j, storyEntry2.botLang, storyEntry2.editingBotPreview, this.previewMedia);
                } else {
                    if (storiesList instanceof BotPreviewsList) {
                        ((BotPreviewsList) storiesList).push(this.previewMedia);
                    }
                    BotPreviewsEditContainer.push(StoriesController.this.currentAccount, this.dialogId, this.entry.botLang, this.previewMedia);
                }
                this.previewMedia = null;
            }
            NotificationCenter.getInstance(StoriesController.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
            StoryEntry storyEntry3 = this.entry;
            if (storyEntry3 != null && !storyEntry3.isEditSaved && !this.entryDestroyed) {
                storyEntry3.destroy(false);
                this.entryDestroyed = true;
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.uploadStoryEnd, this.path);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.filePreparingStarted) {
                if (objArr[0] == this.messageObject) {
                    this.path = (String) objArr[1];
                    upload();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.fileNewChunkAvailable) {
                if (objArr[0] == this.messageObject) {
                    String str = (String) objArr[1];
                    long jLongValue = ((Long) objArr[2]).longValue();
                    long jLongValue2 = ((Long) objArr[3]).longValue();
                    float fFloatValue = ((Float) objArr[4]).floatValue();
                    this.convertingProgress = fFloatValue;
                    this.progress = (fFloatValue * 0.3f) + (this.uploadProgress * 0.7f);
                    NotificationCenter.getInstance(StoriesController.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.uploadStoryProgress, this.path, Float.valueOf(this.progress));
                    if (this.firstSecondSize < 0 && this.convertingProgress * this.duration >= 1000.0f) {
                        this.firstSecondSize = jLongValue;
                    }
                    FileLoader.getInstance(StoriesController.this.currentAccount).checkUploadNewDataAvailable(str, false, Math.max(1L, jLongValue), jLongValue2, Float.valueOf(this.convertingProgress));
                    if (jLongValue2 > 0) {
                        if (this.firstSecondSize < 0) {
                            this.firstSecondSize = jLongValue2;
                        }
                        this.ready = true;
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == NotificationCenter.filePreparingFailed) {
                if (objArr[0] == this.messageObject) {
                    if (!this.edit) {
                        StoryEntry storyEntry = this.entry;
                        storyEntry.isError = true;
                        storyEntry.error = new TLRPC.TL_error();
                        TLRPC.TL_error tL_error = this.entry.error;
                        tL_error.code = 400;
                        tL_error.text = "FILE_PREPARE_FAILED";
                        this.entryDestroyed = true;
                        this.failed = true;
                        this.hadFailed = true;
                        StoriesController.this.getDraftsController().edit(this.entry);
                    }
                    cleanup();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.fileUploaded) {
                String str2 = (String) objArr[0];
                String str3 = this.path;
                if (str3 == null || !str2.equals(str3)) {
                    return;
                }
                sendUploadedRequest((TLRPC.InputFile) objArr[1]);
                return;
            }
            if (i == NotificationCenter.fileUploadFailed) {
                String str4 = (String) objArr[0];
                String str5 = this.path;
                if (str5 == null || !str4.equals(str5)) {
                    return;
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2484R.string.StoryUploadError));
                cleanup();
                return;
            }
            if (i == NotificationCenter.fileUploadProgressChanged && ((String) objArr[0]).equals(this.path)) {
                float fMin = Math.min(1.0f, ((Long) objArr[1]).longValue() / ((Long) objArr[2]).longValue());
                this.uploadProgress = fMin;
                this.progress = (this.convertingProgress * 0.3f) + (fMin * 0.7f);
                NotificationCenter.getInstance(StoriesController.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.uploadStoryProgress, this.path, Float.valueOf(this.progress));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:73:0x017a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void sendUploadedRequest(TLRPC.InputFile inputFile) {
            TLRPC.InputMedia inputMedia;
            boolean z;
            TLObject tLObject;
            CharSequence charSequence;
            CharSequence charSequence2;
            String lowerCase;
            List list;
            TLRPC.MessageMedia messageMedia;
            TLRPC.InputMedia inputMedia2;
            if (this.canceled) {
                return;
            }
            StoryEntry storyEntry = this.entry;
            if (storyEntry.shareUserIds != null) {
                return;
            }
            int i = 0;
            if (!storyEntry.isRepost || storyEntry.editedMedia || (messageMedia = storyEntry.repostMedia) == null) {
                inputMedia = null;
                z = false;
            } else {
                if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                    TLRPC.TL_inputMediaDocument tL_inputMediaDocument = new TLRPC.TL_inputMediaDocument();
                    TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
                    TLRPC.MessageMedia messageMedia2 = this.entry.repostMedia;
                    TLRPC.Document document = messageMedia2.document;
                    tL_inputDocument.id = document.id;
                    tL_inputDocument.access_hash = document.access_hash;
                    tL_inputDocument.file_reference = document.file_reference;
                    tL_inputMediaDocument.id = tL_inputDocument;
                    tL_inputMediaDocument.spoiler = messageMedia2.spoiler;
                    inputMedia2 = tL_inputMediaDocument;
                } else {
                    if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
                        TLRPC.TL_inputMediaPhoto tL_inputMediaPhoto = new TLRPC.TL_inputMediaPhoto();
                        TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
                        TLRPC.Photo photo = this.entry.repostMedia.photo;
                        tL_inputPhoto.id = photo.id;
                        tL_inputPhoto.access_hash = photo.access_hash;
                        tL_inputPhoto.file_reference = photo.file_reference;
                        tL_inputMediaPhoto.id = tL_inputPhoto;
                        inputMedia2 = tL_inputMediaPhoto;
                    }
                    inputMedia = null;
                    z = false;
                }
                z = true;
                inputMedia = inputMedia2;
            }
            TLRPC.InputMedia inputMedia3 = inputMedia;
            inputMedia3 = inputMedia;
            if (inputMedia == null && inputFile != null) {
                if (this.entry.wouldBeVideo()) {
                    TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
                    tL_inputMediaUploadedDocument.file = inputFile;
                    TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = new TLRPC.TL_documentAttributeVideo();
                    if (this.entry.editingCoverDocument != null) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= this.entry.editingCoverDocument.attributes.size()) {
                                break;
                            }
                            if (this.entry.editingCoverDocument.attributes.get(i2) instanceof TLRPC.TL_documentAttributeVideo) {
                                tL_documentAttributeVideo = (TLRPC.TL_documentAttributeVideo) this.entry.editingCoverDocument.attributes.get(i2);
                                break;
                            }
                            i2++;
                        }
                    } else {
                        SendMessagesHelper.fillVideoAttribute(this.path, tL_documentAttributeVideo, null);
                    }
                    tL_inputMediaUploadedDocument.attributes.add(tL_documentAttributeVideo);
                    tL_documentAttributeVideo.supports_streaming = true;
                    int i3 = tL_documentAttributeVideo.flags;
                    tL_documentAttributeVideo.flags = i3 | 4;
                    tL_documentAttributeVideo.preload_prefix_size = (int) this.firstSecondSize;
                    StoryEntry storyEntry2 = this.entry;
                    long j = storyEntry2.cover;
                    if (j >= 0) {
                        tL_documentAttributeVideo.flags = i3 | 20;
                        tL_documentAttributeVideo.video_start_ts = ((double) (j - (storyEntry2.left * storyEntry2.duration))) / 1000.0d;
                    }
                    List list2 = storyEntry2.stickers;
                    if (list2 != null && (!list2.isEmpty() || ((list = this.entry.editStickers) != null && !list.isEmpty()))) {
                        tL_inputMediaUploadedDocument.flags |= 1;
                        ArrayList arrayList = new ArrayList(this.entry.stickers);
                        tL_inputMediaUploadedDocument.stickers = arrayList;
                        List list3 = this.entry.editStickers;
                        if (list3 != null) {
                            arrayList.addAll(list3);
                        }
                        tL_inputMediaUploadedDocument.attributes.add(new TLRPC.TL_documentAttributeHasStickers());
                    }
                    StoryEntry storyEntry3 = this.entry;
                    tL_inputMediaUploadedDocument.nosound_video = storyEntry3.audioPath == null && (storyEntry3.muted || !storyEntry3.isVideo);
                    tL_inputMediaUploadedDocument.mime_type = "video/mp4";
                    inputMedia3 = tL_inputMediaUploadedDocument;
                } else {
                    TLRPC.TL_inputMediaUploadedPhoto tL_inputMediaUploadedPhoto = new TLRPC.TL_inputMediaUploadedPhoto();
                    tL_inputMediaUploadedPhoto.file = inputFile;
                    MimeTypeMap singleton = MimeTypeMap.getSingleton();
                    int iLastIndexOf = this.path.lastIndexOf(46);
                    if (iLastIndexOf == -1) {
                        lowerCase = "txt";
                    } else {
                        lowerCase = this.path.substring(iLastIndexOf + 1).toLowerCase();
                    }
                    tL_inputMediaUploadedPhoto.mime_type = singleton.getMimeTypeFromExtension(lowerCase);
                    List list4 = this.entry.stickers;
                    inputMedia3 = tL_inputMediaUploadedPhoto;
                    if (list4 != null) {
                        if (list4.isEmpty()) {
                            List list5 = this.entry.editStickers;
                            inputMedia3 = tL_inputMediaUploadedPhoto;
                            if (list5 != null) {
                                inputMedia3 = tL_inputMediaUploadedPhoto;
                                if (!list5.isEmpty()) {
                                    tL_inputMediaUploadedPhoto.flags |= 1;
                                    List list6 = this.entry.editStickers;
                                    if (list6 != null) {
                                        tL_inputMediaUploadedPhoto.stickers.addAll(list6);
                                    }
                                    tL_inputMediaUploadedPhoto.stickers = new ArrayList(this.entry.stickers);
                                    inputMedia3 = tL_inputMediaUploadedPhoto;
                                }
                            }
                        }
                    }
                }
            }
            int i4 = UserConfig.getInstance(StoriesController.this.currentAccount).isPremium() ? MessagesController.getInstance(StoriesController.this.currentAccount).storyCaptionLengthLimitPremium : MessagesController.getInstance(StoriesController.this.currentAccount).storyCaptionLengthLimitDefault;
            if (this.edit) {
                if (this.entry.botId != 0) {
                    TL_bots.editPreviewMedia editpreviewmedia = new TL_bots.editPreviewMedia();
                    editpreviewmedia.bot = MessagesController.getInstance(StoriesController.this.currentAccount).getInputUser(this.entry.botId);
                    StoryEntry storyEntry4 = this.entry;
                    editpreviewmedia.media = storyEntry4.editingBotPreview;
                    editpreviewmedia.new_media = inputMedia3;
                    editpreviewmedia.lang_code = storyEntry4.botLang;
                    tLObject = editpreviewmedia;
                } else {
                    TL_stories.TL_stories_editStory tL_stories_editStory = new TL_stories.TL_stories_editStory();
                    tL_stories_editStory.id = this.entry.editStoryId;
                    tL_stories_editStory.peer = MessagesController.getInstance(StoriesController.this.currentAccount).getInputPeer(this.dialogId);
                    if (inputMedia3 != null && this.entry.editedMedia) {
                        tL_stories_editStory.flags |= 1;
                        tL_stories_editStory.media = inputMedia3;
                    }
                    StoryEntry storyEntry5 = this.entry;
                    if (storyEntry5.editedCaption && (charSequence2 = storyEntry5.caption) != null) {
                        tL_stories_editStory.flags |= 2;
                        CharSequence[] charSequenceArr = {charSequence2};
                        if (charSequence2.length() > i4) {
                            charSequenceArr[0] = charSequenceArr[0].subSequence(0, i4);
                        }
                        if (MessagesController.getInstance(StoriesController.this.currentAccount).storyEntitiesAllowed()) {
                            tL_stories_editStory.entities = MediaDataController.getInstance(StoriesController.this.currentAccount).getEntities(charSequenceArr, true);
                        } else {
                            tL_stories_editStory.entities.clear();
                        }
                        if (charSequenceArr[0].length() > i4) {
                            charSequenceArr[0] = charSequenceArr[0].subSequence(0, i4);
                        }
                        tL_stories_editStory.caption = charSequenceArr[0].toString();
                    }
                    StoryEntry storyEntry6 = this.entry;
                    if (storyEntry6.editedPrivacy) {
                        tL_stories_editStory.flags |= 4;
                        tL_stories_editStory.privacy_rules.addAll(storyEntry6.privacyRules);
                    }
                    ArrayList arrayList2 = this.entry.editedMediaAreas;
                    if (arrayList2 != null) {
                        tL_stories_editStory.media_areas.addAll(arrayList2);
                    }
                    if (this.entry.mediaEntities != null) {
                        while (i < this.entry.mediaEntities.size()) {
                            TL_stories.MediaArea mediaArea = ((VideoEditedInfo.MediaEntity) this.entry.mediaEntities.get(i)).mediaArea;
                            if (mediaArea != null) {
                                tL_stories_editStory.media_areas.add(mediaArea);
                            }
                            i++;
                        }
                    }
                    if (!tL_stories_editStory.media_areas.isEmpty()) {
                        tL_stories_editStory.flags |= 8;
                    }
                    tLObject = tL_stories_editStory;
                }
            } else if (this.entry.botId != 0) {
                TL_bots.addPreviewMedia addpreviewmedia = new TL_bots.addPreviewMedia();
                addpreviewmedia.bot = MessagesController.getInstance(StoriesController.this.currentAccount).getInputUser(this.entry.botId);
                addpreviewmedia.media = inputMedia3;
                addpreviewmedia.lang_code = this.entry.botLang;
                tLObject = addpreviewmedia;
            } else {
                TL_stories.TL_stories_sendStory tL_stories_sendStory = new TL_stories.TL_stories_sendStory();
                tL_stories_sendStory.random_id = this.random_id;
                tL_stories_sendStory.peer = MessagesController.getInstance(StoriesController.this.currentAccount).getInputPeer(this.dialogId);
                tL_stories_sendStory.media = inputMedia3;
                tL_stories_sendStory.privacy_rules.addAll(this.entry.privacyRules);
                StoryEntry storyEntry7 = this.entry;
                tL_stories_sendStory.pinned = storyEntry7.pinned;
                tL_stories_sendStory.noforwards = !storyEntry7.allowScreenshots;
                tL_stories_sendStory.albums = storyEntry7.albums != null ? new ArrayList<>(this.entry.albums) : null;
                CharSequence charSequence3 = this.entry.caption;
                if (charSequence3 != null) {
                    tL_stories_sendStory.flags |= 3;
                    CharSequence[] charSequenceArr2 = {charSequence3};
                    if (charSequence3.length() > i4) {
                        charSequenceArr2[0] = charSequenceArr2[0].subSequence(0, i4);
                    }
                    if (MessagesController.getInstance(StoriesController.this.currentAccount).storyEntitiesAllowed()) {
                        tL_stories_sendStory.entities = MediaDataController.getInstance(StoriesController.this.currentAccount).getEntities(charSequenceArr2, true);
                    } else {
                        tL_stories_sendStory.entities.clear();
                    }
                    if (charSequenceArr2[0].length() > i4) {
                        charSequenceArr2[0] = charSequenceArr2[0].subSequence(0, i4);
                    }
                    tL_stories_sendStory.caption = charSequenceArr2[0].toString();
                }
                if (this.entry.isRepost) {
                    tL_stories_sendStory.flags |= 64;
                    tL_stories_sendStory.fwd_from_id = MessagesController.getInstance(StoriesController.this.currentAccount).getInputPeer(this.entry.repostPeer);
                    tL_stories_sendStory.fwd_from_story = this.entry.repostStoryId;
                    tL_stories_sendStory.fwd_modified = !z;
                }
                StoryEntry storyEntry8 = this.entry;
                int i5 = storyEntry8.period;
                if (i5 == Integer.MAX_VALUE) {
                    tL_stories_sendStory.pinned = true;
                } else {
                    tL_stories_sendStory.flags |= 8;
                    tL_stories_sendStory.period = i5;
                }
                if (storyEntry8.mediaEntities != null) {
                    while (i < this.entry.mediaEntities.size()) {
                        TL_stories.MediaArea mediaArea2 = ((VideoEditedInfo.MediaEntity) this.entry.mediaEntities.get(i)).mediaArea;
                        if (mediaArea2 != null) {
                            tL_stories_sendStory.media_areas.add(mediaArea2);
                        }
                        i++;
                    }
                    if (!tL_stories_sendStory.media_areas.isEmpty()) {
                        tL_stories_sendStory.flags |= 32;
                    }
                }
                tLObject = tL_stories_sendStory;
            }
            RequestDelegate requestDelegate = new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$sendUploadedRequest$8(tLObject2, tL_error);
                }
            };
            if (BuildVars.DEBUG_PRIVATE_VERSION && !this.edit && (charSequence = this.entry.caption) != null && charSequence.toString().contains("#failtest") && !this.hadFailed) {
                TLRPC.TL_error tL_error = new TLRPC.TL_error();
                tL_error.code = 400;
                tL_error.text = "FORCED_TO_FAIL";
                requestDelegate.run(null, tL_error);
                return;
            }
            this.currentRequest = ConnectionsManager.getInstance(StoriesController.this.currentAccount).sendRequest(tLObject, requestDelegate, 64);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$8(TLObject tLObject, final TLRPC.TL_error tL_error) {
            Utilities.Callback callback;
            if (tLObject instanceof TLRPC.Updates) {
                this.failed = false;
                TLRPC.Updates updates = (TLRPC.Updates) tLObject;
                if (this.entry.isEditingCover) {
                    MessagesController.getInstance(StoriesController.this.currentAccount).processUpdates(updates, false);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.cleanup();
                        }
                    });
                    return;
                }
                int i = 0;
                final TL_stories.StoryItem tL_storyItem = null;
                for (int i2 = 0; i2 < updates.updates.size(); i2++) {
                    if (updates.updates.get(i2) instanceof TL_stories.TL_updateStory) {
                        TL_stories.StoryItem storyItem = ((TL_stories.TL_updateStory) updates.updates.get(i2)).story;
                        storyItem.attachPath = this.path;
                        storyItem.firstFramePath = this.firstFramePath;
                        storyItem.justUploaded = !this.edit;
                        int i3 = storyItem.id;
                        if (tL_storyItem == null) {
                            tL_storyItem = storyItem;
                        } else {
                            tL_storyItem.media = storyItem.media;
                        }
                        i = i3;
                    }
                    if (updates.updates.get(i2) instanceof TLRPC.TL_updateStoryID) {
                        TLRPC.TL_updateStoryID tL_updateStoryID = (TLRPC.TL_updateStoryID) updates.updates.get(i2);
                        if (tL_storyItem == null) {
                            tL_storyItem = new TL_stories.TL_storyItem();
                            int currentTime = ConnectionsManager.getInstance(StoriesController.this.currentAccount).getCurrentTime();
                            tL_storyItem.date = currentTime;
                            StoryEntry storyEntry = this.entry;
                            int i4 = storyEntry.period;
                            if (i4 == Integer.MAX_VALUE) {
                                i4 = 86400;
                            }
                            tL_storyItem.expire_date = currentTime + i4;
                            tL_storyItem.parsedPrivacy = null;
                            tL_storyItem.privacy = StoryPrivacyBottomSheet.StoryPrivacy.toOutput(storyEntry.privacyRules);
                            tL_storyItem.pinned = this.entry.period == Integer.MAX_VALUE;
                            tL_storyItem.dialogId = UserConfig.getInstance(StoriesController.this.currentAccount).clientUserId;
                            tL_storyItem.attachPath = this.path;
                            tL_storyItem.firstFramePath = this.firstFramePath;
                            tL_storyItem.id = tL_updateStoryID.id;
                            tL_storyItem.justUploaded = !this.edit;
                        }
                    }
                }
                final long j = this.dialogId;
                if (this.canceled) {
                    TL_stories.TL_stories_deleteStories tL_stories_deleteStories = new TL_stories.TL_stories_deleteStories();
                    TLRPC.InputPeer inputPeer = MessagesController.getInstance(StoriesController.this.currentAccount).getInputPeer(this.dialogId);
                    tL_stories_deleteStories.peer = inputPeer;
                    if (inputPeer != null) {
                        tL_stories_deleteStories.id.add(Integer.valueOf(i));
                        ConnectionsManager.getInstance(StoriesController.this.currentAccount).sendRequest(tL_stories_deleteStories, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda2
                            @Override // org.telegram.tgnet.RequestDelegate
                            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                                this.f$0.lambda$sendUploadedRequest$3(tLObject2, tL_error2);
                            }
                        });
                    }
                } else {
                    if ((i == 0 || this.edit) && tL_storyItem != null) {
                        final TL_stories.TL_updateStory tL_updateStory = new TL_stories.TL_updateStory();
                        tL_updateStory.peer = MessagesController.getInstance(StoriesController.this.currentAccount).getPeer(j);
                        tL_updateStory.story = tL_storyItem;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda3
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$sendUploadedRequest$4(tL_updateStory);
                            }
                        });
                    }
                    TLRPC.MessageMedia messageMedia = tL_storyItem.media;
                    if (messageMedia != null && tL_storyItem.attachPath != null) {
                        if (messageMedia.document != null) {
                            FileLoader.getInstance(StoriesController.this.currentAccount).setLocalPathTo(tL_storyItem.media.document, tL_storyItem.attachPath);
                        } else {
                            TLRPC.Photo photo = messageMedia.photo;
                            if (photo != null) {
                                FileLoader.getInstance(StoriesController.this.currentAccount).setLocalPathTo(FileLoader.getClosestPhotoSizeWithSize(photo.sizes, Integer.MAX_VALUE), tL_storyItem.attachPath);
                            }
                        }
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$sendUploadedRequest$5(j, tL_storyItem);
                        }
                    });
                    MessagesController.getInstance(StoriesController.this.currentAccount).processUpdateArray(updates.updates, updates.users, updates.chats, false, updates.date);
                }
            } else if (tLObject instanceof TL_bots.botPreviewMedia) {
                this.previewMedia = (TL_bots.botPreviewMedia) tLObject;
            } else {
                if (tL_error != null && FileRefController.isFileRefError(tL_error.text)) {
                    StoryEntry storyEntry2 = this.entry;
                    if (storyEntry2.editingCoverDocument != null && (callback = storyEntry2.updateDocumentRef) != null) {
                        callback.run(new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda5
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$sendUploadedRequest$6((TLRPC.Document) obj);
                            }
                        });
                        this.entry.updateDocumentRef = null;
                        return;
                    }
                }
                if (tL_error != null && !this.edit) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$sendUploadedRequest$7(tL_error);
                        }
                    });
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$UploadingStory$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.cleanup();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$3(TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new StoriesController$$ExternalSyntheticLambda6(StoriesController.this));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$4(TL_stories.TL_updateStory tL_updateStory) {
            MessagesController.getInstance(StoriesController.this.currentAccount).getStoriesController().processUpdate(tL_updateStory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$5(long j, TL_stories.StoryItem storyItem) {
            this.entryDestroyed = true;
            if (this.entry.isError) {
                StoriesController.this.getDraftsController().delete(this.entry);
            }
            StoryEntry storyEntry = this.entry;
            storyEntry.isError = false;
            storyEntry.error = null;
            if (!storyEntry.isEditingCover) {
                StoriesController.this.getDraftsController().saveForEdit(this.entry, j, storyItem);
            }
            if (this.edit) {
                return;
            }
            StoriesController.this.invalidateStoryLimit();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$6(TLRPC.Document document) {
            this.entry.editingCoverDocument = document;
            TLRPC.TL_inputFileStoryDocument tL_inputFileStoryDocument = new TLRPC.TL_inputFileStoryDocument();
            tL_inputFileStoryDocument.doc = MessagesController.toInputDocument(this.entry.editingCoverDocument);
            sendUploadedRequest(tL_inputFileStoryDocument);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendUploadedRequest$7(TLRPC.TL_error tL_error) {
            this.entry.isError = true;
            if (StoriesController.this.checkStoryError(tL_error)) {
                this.entry.error = null;
            } else {
                this.entry.error = tL_error;
            }
            this.entryDestroyed = true;
            this.failed = true;
            this.hadFailed = true;
            StoriesController.this.getDraftsController().edit(this.entry);
        }

        private void putMessages() {
            boolean z;
            ArrayList arrayList = this.entry.shareUserIds;
            if (arrayList == null || this.putMessages) {
                return;
            }
            int size = arrayList.size();
            CharSequence charSequence = this.entry.caption;
            String string = charSequence == null ? null : charSequence.toString();
            boolean z2 = true;
            ArrayList<TLRPC.MessageEntity> entities = this.entry.caption != null ? MediaDataController.getInstance(StoriesController.this.currentAccount).getEntities(new CharSequence[]{this.entry.caption}, true) : null;
            int i = 0;
            while (i < size) {
                long jLongValue = ((Long) this.entry.shareUserIds.get(i)).longValue();
                if (this.entry.wouldBeVideo()) {
                    z = z2;
                    SendMessagesHelper.prepareSendingVideo(AccountInstance.getInstance(StoriesController.this.currentAccount), this.path, null, null, null, jLongValue, null, null, null, null, entities, 0, null, !r6.silent, this.entry.scheduleDate, 0, false, false, string, null, 0, 0L, 0L);
                } else {
                    z = z2;
                    ArrayList<TLRPC.MessageEntity> arrayList2 = entities;
                    String str = string;
                    SendMessagesHelper.prepareSendingPhoto(AccountInstance.getInstance(StoriesController.this.currentAccount), this.path, null, null, jLongValue, null, null, null, null, arrayList2, null, null, 0, null, null, !r6.silent, this.entry.scheduleDate, 0, false, str, null, 0, 0L, 0L);
                    entities = arrayList2;
                    string = str;
                }
                i++;
                z2 = z;
            }
            this.putMessages = z2;
        }

        public void cancel() {
            if (this.failed) {
                StoriesController.this.getDraftsController().delete(this.entry);
                ((ArrayList) StoriesController.this.uploadingStoriesByDialogId.get(this.dialogId)).remove(this);
            }
            this.canceled = true;
            if (this.entry.wouldBeVideo()) {
                MediaController.getInstance().cancelVideoConvert(this.messageObject);
            }
            FileLoader.getInstance(StoriesController.this.currentAccount).cancelFileUpload(this.path, false);
            if (this.currentRequest >= 0) {
                ConnectionsManager.getInstance(StoriesController.this.currentAccount).cancelRequest(this.currentRequest, true);
            }
            cleanup();
        }

        public boolean isCloseFriends() {
            return this.isCloseFriends;
        }
    }

    public StoriesCollections getStoryAlbumsList(long j) {
        return getStoryAlbumsList(j, true);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public StoriesCollections getStoryAlbumsList(long j, boolean z) {
        StoriesCollections storiesCollections = (StoriesCollections) this.storiesCollections.get(j);
        if (storiesCollections != null || !z) {
            return storiesCollections;
        }
        LongSparseArray longSparseArray = this.storiesCollections;
        StoriesCollections storiesCollections2 = new StoriesCollections(this.currentAccount, j);
        longSparseArray.put(j, storiesCollections2);
        return storiesCollections2;
    }

    public StoriesList getStoriesList(long j, int i) {
        return getStoriesList(j, i, -1, true);
    }

    public StoriesList getStoriesList(long j, int i, int i2) {
        return getStoriesList(j, i, i2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoriesList getStoriesList(long j, int i, boolean z) {
        return getStoriesList(j, i, -1, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoriesList getStoriesList(long j, int i, int i2, boolean z) {
        if (i == 0 && i2 > 0) {
            HashMap map = (HashMap) this.storiesAlbumsLists.get(Long.valueOf(j));
            if (map == null) {
                map = new HashMap();
                this.storiesAlbumsLists.put(Long.valueOf(j), map);
            }
            HashMap map2 = map;
            StoriesList storiesList = (StoriesList) map2.get(Integer.valueOf(i2));
            if (storiesList != null || !z) {
                return storiesList;
            }
            StoriesList storiesList2 = new StoriesList(this.currentAccount, j, i, i2, new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.destroyStoryList((StoriesController.StoriesList) obj);
                }
            });
            map2.put(Integer.valueOf(i2), storiesList2);
            return storiesList2;
        }
        HashMap[] mapArr = this.storiesLists;
        if (mapArr[i] == null) {
            mapArr[i] = new HashMap();
        }
        StoriesList storiesList3 = (StoriesList) this.storiesLists[i].get(Long.valueOf(j));
        if (storiesList3 != null || !z) {
            return storiesList3;
        }
        if (i == 4) {
            HashMap map3 = this.storiesLists[i];
            Long lValueOf = Long.valueOf(j);
            BotPreviewsList botPreviewsList = new BotPreviewsList(this.currentAccount, j, null, new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.destroyStoryList((StoriesController.StoriesList) obj);
                }
            });
            map3.put(lValueOf, botPreviewsList);
            return botPreviewsList;
        }
        HashMap map4 = this.storiesLists[i];
        Long lValueOf2 = Long.valueOf(j);
        StoriesList storiesList4 = new StoriesList(this.currentAccount, j, i, i2, new Utilities.Callback() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.destroyStoryList((StoriesController.StoriesList) obj);
            }
        });
        map4.put(lValueOf2, storiesList4);
        return storiesList4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String storyItemIds(List list) {
        if (list == null) {
            return "null";
        }
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        for (int i = 0; i < list.size(); i++) {
            try {
                if (i > 0) {
                    str = str + ", ";
                }
                str = str + ((TL_stories.StoryItem) list.get(i)).id + "@" + ((TL_stories.StoryItem) list.get(i)).dialogId;
            } catch (Exception unused) {
                return "err";
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String storyItemMessageIds(List list) {
        if (list == null) {
            return "null";
        }
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        for (int i = 0; i < list.size(); i++) {
            try {
                if (i > 0) {
                    str = str + ", ";
                }
                TL_stories.StoryItem storyItem = ((MessageObject) list.get(i)).storyItem;
                str = storyItem == null ? str + "null" : str + storyItem.id + "@" + storyItem.dialogId;
            } catch (Exception unused) {
                return "err";
            }
        }
        return str;
    }

    public void updateStoriesInLists(long j, List list) {
        updateStoriesInLists(j, list, false);
    }

    public void updateStoriesInLists(long j, List list, boolean z) {
        ArrayList arrayList;
        FileLog.m952d("updateStoriesInLists " + j + " storyItems[" + list.size() + "] {" + storyItemIds(list) + "}");
        int i = 0;
        StoriesList storiesList = getStoriesList(j, 0, false);
        StoriesList storiesList2 = getStoriesList(j, 1, false);
        if (storiesList != null) {
            storiesList.updateStories(list, z);
        }
        if (storiesList2 != null) {
            storiesList2.updateStories(list, z);
        }
        ArrayList arrayList2 = this.attachedSearchLists;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            ((SearchStoriesList) obj).updateStories(list, z);
        }
        StoriesCollections storyAlbumsList = getStoryAlbumsList(j, false);
        if (storyAlbumsList == null || (arrayList = storyAlbumsList.collections) == null) {
            return;
        }
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj2 = arrayList.get(i);
            i++;
            long j2 = j;
            StoriesList storiesList3 = getStoriesList(j2, 0, ((StoryAlbum) obj2).album_id, false);
            if (storiesList3 != null) {
                storiesList3.updateStories(list, z);
            }
            j = j2;
        }
    }

    public void updateDeletedStoriesInLists(long j, List list) {
        ArrayList arrayList;
        FileLog.m952d("updateDeletedStoriesInLists " + j + " storyItems[" + list.size() + "] {" + storyItemIds(list) + "}");
        int i = 0;
        StoriesList storiesList = getStoriesList(j, 0, false);
        StoriesList storiesList2 = getStoriesList(j, 1, false);
        if (storiesList != null) {
            storiesList.updateDeletedStories(list);
        }
        if (storiesList2 != null) {
            storiesList2.updateDeletedStories(list);
        }
        StoriesCollections storyAlbumsList = getStoryAlbumsList(j, false);
        if (storyAlbumsList == null || (arrayList = storyAlbumsList.collections) == null) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            long j2 = j;
            StoriesList storiesList3 = getStoriesList(j2, 0, ((StoryAlbum) obj).album_id, false);
            if (storiesList3 != null) {
                storiesList3.updateDeletedStories(list);
            }
            j = j2;
        }
    }

    public void destroyStoryList(StoriesList storiesList) {
        int i = storiesList.type;
        if (i == 0 && storiesList.albumId > 0) {
            HashMap map = (HashMap) this.storiesAlbumsLists.get(Long.valueOf(storiesList.dialogId));
            if (map == null) {
                return;
            }
            map.remove(Integer.valueOf(storiesList.albumId));
            if (map.isEmpty()) {
                this.storiesAlbumsLists.remove(Long.valueOf(storiesList.dialogId));
                return;
            }
            return;
        }
        HashMap map2 = this.storiesLists[i];
        if (map2 != null) {
            map2.remove(Long.valueOf(storiesList.dialogId));
        }
    }

    public static class BotPreview extends TL_stories.StoryItem {
        public final BotPreviewsList list;

        public BotPreview(BotPreviewsList botPreviewsList, long j, TL_bots.botPreviewMedia botpreviewmedia) {
            this.list = botPreviewsList;
            this.dialogId = j;
            TLRPC.MessageMedia messageMedia = botpreviewmedia.media;
            this.media = messageMedia;
            TLRPC.Document document = messageMedia.document;
            if (document != null) {
                document.date = botpreviewmedia.date;
                return;
            }
            TLRPC.Photo photo = messageMedia.photo;
            if (photo != null) {
                photo.date = botpreviewmedia.date;
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class BotPreviewsList extends StoriesList {
        private final ArrayList fakeDays;
        public final String lang_code;
        public final ArrayList lang_codes;
        private int lastId;
        private boolean loaded;
        private boolean loading;
        private int reqId;

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected void invalidateCache() {
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public boolean isOnlyCache() {
            return false;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected boolean markAsRead(int i) {
            return false;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected void preloadCache() {
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected void saveCache() {
        }

        public BotPreviewsList(int i, long j, String str, Utilities.Callback callback) {
            super(i, j, 4, -1, callback);
            this.lang_codes = new ArrayList();
            this.fakeDays = new ArrayList();
            this.lastId = 0;
            this.lang_code = str;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public boolean load(boolean z, int i, List list) {
            return loadInternal(null);
        }

        public boolean loadInternal(final Runnable runnable) {
            TLObject tLObject;
            if (this.loading || this.loaded) {
                return false;
            }
            if (this.lang_code != null) {
                TL_bots.getPreviewInfo getpreviewinfo = new TL_bots.getPreviewInfo();
                getpreviewinfo.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.dialogId);
                getpreviewinfo.lang_code = this.lang_code;
                tLObject = getpreviewinfo;
            } else {
                TL_bots.getPreviewMedias getpreviewmedias = new TL_bots.getPreviewMedias();
                getpreviewmedias.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.dialogId);
                tLObject = getpreviewmedias;
            }
            this.loading = true;
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$BotPreviewsList$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadInternal$1(runnable, tLObject2, tL_error);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$1(final Runnable runnable, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$BotPreviewsList$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadInternal$0(tLObject, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$0(TLObject tLObject, Runnable runnable) {
            MessageObject messageObject;
            int id;
            this.reqId = 0;
            this.loading = false;
            this.loaded = true;
            this.done = true;
            ArrayList arrayList = new ArrayList();
            if (tLObject instanceof Vector) {
                ArrayList arrayList2 = ((Vector) tLObject).objects;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    arrayList.add((TL_bots.botPreviewMedia) obj);
                }
            } else {
                if (!(tLObject instanceof TL_bots.previewInfo)) {
                    return;
                }
                TL_bots.previewInfo previewinfo = (TL_bots.previewInfo) tLObject;
                this.lang_codes.clear();
                this.lang_codes.addAll(previewinfo.lang_codes);
                arrayList.addAll(previewinfo.media);
            }
            ArrayList arrayList3 = new ArrayList(this.messageObjects);
            this.messageObjects.clear();
            this.fakeDays.clear();
            int size2 = arrayList.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList.get(i2);
                i2++;
                TL_bots.botPreviewMedia botpreviewmedia = (TL_bots.botPreviewMedia) obj2;
                MessageObject messageObject2 = new MessageObject(this.currentAccount, new BotPreview(this, this.dialogId, botpreviewmedia));
                int i3 = 0;
                while (true) {
                    if (i3 >= arrayList3.size()) {
                        messageObject = null;
                        break;
                    } else {
                        if (MessagesController.equals(((MessageObject) arrayList3.get(i3)).storyItem.media, botpreviewmedia.media)) {
                            messageObject = (MessageObject) arrayList3.get(i3);
                            break;
                        }
                        i3++;
                    }
                }
                TL_stories.StoryItem storyItem = messageObject2.storyItem;
                TLRPC.Message message = messageObject2.messageOwner;
                if (messageObject == null) {
                    id = this.lastId;
                    this.lastId = id + 1;
                } else {
                    id = messageObject.getId();
                }
                message.id = id;
                storyItem.id = id;
                messageObject2.parentStoriesList = this;
                messageObject2.generateThumbs(false);
                if (this.fakeDays.isEmpty()) {
                    this.fakeDays.add(new ArrayList());
                }
                ((ArrayList) this.fakeDays.get(0)).add(Integer.valueOf(messageObject2.getId()));
                this.messageObjects.add(messageObject2);
            }
            AndroidUtilities.cancelRunOnUIThread(((StoriesList) this).notify);
            AndroidUtilities.runOnUIThread(((StoriesList) this).notify);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }

        public void push(TL_bots.botPreviewMedia botpreviewmedia) {
            MessageObject messageObject = new MessageObject(this.currentAccount, new BotPreview(this, this.dialogId, botpreviewmedia));
            TL_stories.StoryItem storyItem = messageObject.storyItem;
            TLRPC.Message message = messageObject.messageOwner;
            int i = this.lastId;
            this.lastId = i + 1;
            message.id = i;
            storyItem.id = i;
            messageObject.parentStoriesList = this;
            messageObject.generateThumbs(false);
            if (this.fakeDays.isEmpty()) {
                this.fakeDays.add(new ArrayList());
            }
            ((ArrayList) this.fakeDays.get(0)).add(0, Integer.valueOf(messageObject.getId()));
            this.messageObjects.add(0, messageObject);
            notifyUpdate();
        }

        public void edit(TLRPC.InputMedia inputMedia, TL_bots.botPreviewMedia botpreviewmedia) {
            MessageObject messageObject;
            int id;
            TL_stories.StoryItem storyItem;
            TLRPC.MessageMedia messageMedia;
            TLRPC.Document document;
            int i = 0;
            while (true) {
                if (i >= this.messageObjects.size()) {
                    messageObject = null;
                    i = 0;
                    break;
                }
                messageObject = (MessageObject) this.messageObjects.get(i);
                if (inputMedia != null && (storyItem = messageObject.storyItem) != null && (messageMedia = storyItem.media) != null) {
                    if (inputMedia instanceof TLRPC.TL_inputMediaPhoto) {
                        TLRPC.Photo photo = messageMedia.photo;
                        if (photo != null && photo.id == ((TLRPC.TL_inputMediaPhoto) inputMedia).id.id) {
                            break;
                        }
                    } else if ((inputMedia instanceof TLRPC.TL_inputMediaDocument) && (document = messageMedia.document) != null && document.id == ((TLRPC.TL_inputMediaDocument) inputMedia).id.id) {
                        break;
                    }
                }
                i++;
            }
            if (messageObject != null) {
                this.messageObjects.remove(messageObject);
                if (this.fakeDays.isEmpty()) {
                    this.fakeDays.add(new ArrayList());
                }
                if (i > 0 && i < ((ArrayList) this.fakeDays.get(0)).size()) {
                    ((ArrayList) this.fakeDays.get(0)).remove(i);
                }
            }
            MessageObject messageObject2 = new MessageObject(this.currentAccount, new BotPreview(this, this.dialogId, botpreviewmedia));
            TL_stories.StoryItem storyItem2 = messageObject2.storyItem;
            TLRPC.Message message = messageObject2.messageOwner;
            if (messageObject == null) {
                id = this.lastId;
                this.lastId = id + 1;
            } else {
                id = messageObject.getId();
            }
            message.id = id;
            storyItem2.id = id;
            messageObject2.parentStoriesList = this;
            messageObject2.generateThumbs(false);
            if (this.fakeDays.isEmpty()) {
                this.fakeDays.add(new ArrayList());
            }
            ((ArrayList) this.fakeDays.get(0)).add(i, Integer.valueOf(messageObject2.getId()));
            this.messageObjects.add(i, messageObject2);
            notifyUpdate();
        }

        public void notifyUpdate() {
            AndroidUtilities.cancelRunOnUIThread(((StoriesList) this).notify);
            AndroidUtilities.runOnUIThread(((StoriesList) this).notify);
        }

        public void reload(Runnable runnable) {
            if (this.reqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = 0;
            }
            this.loading = false;
            this.loaded = false;
            loadInternal(runnable);
        }

        public void requestReference(final BotPreview botPreview, final Utilities.Callback callback) {
            reload(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$BotPreviewsList$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$requestReference$2(botPreview, callback);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$requestReference$2(BotPreview botPreview, Utilities.Callback callback) {
            TL_stories.StoryItem storyItem;
            TLRPC.MessageMedia messageMedia;
            TLRPC.Photo photo;
            TLRPC.Photo photo2;
            for (int i = 0; i < this.messageObjects.size(); i++) {
                MessageObject messageObject = (MessageObject) this.messageObjects.get(i);
                if (messageObject != null && (storyItem = messageObject.storyItem) != null && (messageMedia = storyItem.media) != null) {
                    TLRPC.MessageMedia messageMedia2 = botPreview.media;
                    TLRPC.Document document = messageMedia2.document;
                    if (document != null) {
                        TLRPC.Document document2 = messageMedia.document;
                        if (document2 != null) {
                            if (document2.id == document.id) {
                                callback.run((BotPreview) storyItem);
                                return;
                            }
                            photo = messageMedia2.photo;
                            if (photo != null) {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        photo = messageMedia2.photo;
                        if (photo != null && (photo2 = messageMedia.photo) != null && photo2.id == photo.id) {
                            callback.run((BotPreview) storyItem);
                            return;
                        }
                    }
                }
            }
            callback.run(null);
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public int getCount() {
            return this.messageObjects.size();
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public int getLoadedCount() {
            return this.messageObjects.size();
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public boolean isLoading() {
            return this.loading;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected ArrayList getDays() {
            return this.fakeDays;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public MessageObject findMessageObject(int i) {
            for (int i2 = 0; i2 < this.messageObjects.size(); i2++) {
                if (((MessageObject) this.messageObjects.get(i2)).getId() == i) {
                    return (MessageObject) this.messageObjects.get(i2);
                }
            }
            return null;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public void updatePinnedOrder(ArrayList arrayList, boolean z) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            TL_bots.reorderPreviewMedias reorderpreviewmedias = new TL_bots.reorderPreviewMedias();
            reorderpreviewmedias.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.dialogId);
            reorderpreviewmedias.lang_code = this.lang_code;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Integer num = (Integer) obj;
                MessageObject messageObjectFindMessageObject = findMessageObject(num.intValue());
                if (messageObjectFindMessageObject != null) {
                    reorderpreviewmedias.order.add(MessagesController.toInputMedia(messageObjectFindMessageObject.storyItem.media));
                    arrayList2.add(messageObjectFindMessageObject);
                    arrayList3.add(num);
                }
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(reorderpreviewmedias, null);
            if (this.fakeDays.isEmpty()) {
                this.fakeDays.add(new ArrayList());
            }
            ((ArrayList) this.fakeDays.get(0)).clear();
            ((ArrayList) this.fakeDays.get(0)).addAll(arrayList3);
            this.messageObjects.clear();
            this.messageObjects.addAll(arrayList2);
        }

        public void delete(ArrayList arrayList) {
            if (arrayList == null) {
                return;
            }
            int i = 0;
            while (i < this.messageObjects.size()) {
                MessageObject messageObject = (MessageObject) this.messageObjects.get(i);
                int i2 = 0;
                while (true) {
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    if (MessagesController.equals(messageObject.storyItem.media, (TLRPC.MessageMedia) arrayList.get(i2))) {
                        this.messageObjects.remove(i);
                        if (!this.fakeDays.isEmpty() && messageObject.getId() < ((ArrayList) this.fakeDays.get(0)).size()) {
                            ((ArrayList) this.fakeDays.get(0)).remove(messageObject.getId());
                        }
                        i--;
                    } else {
                        i2++;
                    }
                }
                i++;
            }
            TL_bots.deletePreviewMedia deletepreviewmedia = new TL_bots.deletePreviewMedia();
            deletepreviewmedia.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.dialogId);
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                deletepreviewmedia.media.add(MessagesController.toInputMedia((TLRPC.MessageMedia) arrayList.get(i3)));
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(deletepreviewmedia, null);
            AndroidUtilities.cancelRunOnUIThread(((StoriesList) this).notify);
            AndroidUtilities.runOnUIThread(((StoriesList) this).notify);
        }

        public void delete(TLRPC.MessageMedia messageMedia) {
            delete(new ArrayList(Arrays.asList(messageMedia)));
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class SearchStoriesList extends StoriesList {
        private int count;
        private final ArrayList fakeDays;
        private String last_offset;
        private boolean loading;
        public final String query;
        public final TL_stories.MediaArea queryArea;
        private int reqId;
        public final String username;

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected void invalidateCache() {
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public boolean isOnlyCache() {
            return false;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected boolean markAsRead(int i) {
            return false;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected void preloadCache() {
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected void saveCache() {
        }

        public SearchStoriesList(int i, String str, String str2) {
            super(i, 0L, 3, -1, null);
            this.fakeDays = new ArrayList();
            this.last_offset = _UrlKt.FRAGMENT_ENCODE_SET;
            this.query = str2;
            this.username = str;
            this.queryArea = null;
        }

        public SearchStoriesList(int i, TL_stories.MediaArea mediaArea) {
            super(i, 0L, 3, -1, null);
            this.fakeDays = new ArrayList();
            this.last_offset = _UrlKt.FRAGMENT_ENCODE_SET;
            this.query = null;
            this.username = null;
            this.queryArea = mediaArea;
        }

        public void cancel() {
            if (this.reqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = 0;
            }
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public boolean load(final boolean z, final int i, final List list) {
            TLObject userOrChat;
            if (this.loading || this.last_offset == null) {
                return false;
            }
            TL_stories.TL_stories_searchPosts tL_stories_searchPosts = new TL_stories.TL_stories_searchPosts();
            tL_stories_searchPosts.offset = this.last_offset;
            tL_stories_searchPosts.limit = i;
            String str = this.query;
            if (str != null) {
                tL_stories_searchPosts.flags |= 1;
                tL_stories_searchPosts.hashtag = str;
            }
            TL_stories.MediaArea mediaArea = this.queryArea;
            if (mediaArea != null) {
                tL_stories_searchPosts.flags |= 2;
                tL_stories_searchPosts.area = mediaArea;
            }
            this.loading = true;
            if (TextUtils.isEmpty(this.username)) {
                userOrChat = null;
            } else {
                userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(this.username);
                if (userOrChat == null) {
                    MessagesController.getInstance(this.currentAccount).getUserNameResolver().resolve(this.username, new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$SearchStoriesList$$ExternalSyntheticLambda0
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            this.f$0.lambda$load$0(z, i, list, (Long) obj);
                        }
                    });
                    return true;
                }
            }
            if (userOrChat != null) {
                tL_stories_searchPosts.flags |= 4;
                tL_stories_searchPosts.peer = MessagesController.getInputPeer(userOrChat);
            }
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_searchPosts, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$SearchStoriesList$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$2(tLObject, tL_error);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(boolean z, int i, List list, Long l) {
            TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(this.username);
            this.loading = false;
            if (userOrChat != null) {
                load(z, i, list);
                return;
            }
            this.count = 0;
            this.last_offset = _UrlKt.FRAGMENT_ENCODE_SET;
            AndroidUtilities.cancelRunOnUIThread(((StoriesList) this).notify);
            AndroidUtilities.runOnUIThread(((StoriesList) this).notify);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$2(final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$SearchStoriesList$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$1(tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$1(TLObject tLObject) {
            this.reqId = 0;
            if (tLObject instanceof TL_stories.TL_foundStories) {
                TL_stories.TL_foundStories tL_foundStories = (TL_stories.TL_foundStories) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(tL_foundStories.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(tL_foundStories.chats, false);
                ArrayList<TL_stories.TL_foundStory> arrayList = tL_foundStories.stories;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    TL_stories.TL_foundStory tL_foundStory = arrayList.get(i);
                    i++;
                    TL_stories.TL_foundStory tL_foundStory2 = tL_foundStory;
                    tL_foundStory2.storyItem.dialogId = DialogObject.getPeerDialogId(tL_foundStory2.peer);
                    tL_foundStory2.storyItem.messageId = this.messageObjects.size();
                    MessageObject messageObject = new MessageObject(this.currentAccount, tL_foundStory2.storyItem);
                    messageObject.generateThumbs(false);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(Integer.valueOf(this.messageObjects.size()));
                    this.fakeDays.add(arrayList2);
                    this.messageObjects.add(messageObject);
                }
                this.count = Math.max(this.messageObjects.size(), tL_foundStories.count);
                if (tL_foundStories.stories.isEmpty()) {
                    this.count = this.messageObjects.size();
                }
                this.last_offset = (this.messageObjects.size() >= tL_foundStories.count || tL_foundStories.stories.isEmpty()) ? null : tL_foundStories.next_offset;
                this.loading = false;
                AndroidUtilities.cancelRunOnUIThread(((StoriesList) this).notify);
                AndroidUtilities.runOnUIThread(((StoriesList) this).notify);
            }
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public int getCount() {
            return this.count;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public int getLoadedCount() {
            return this.messageObjects.size();
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public boolean isLoading() {
            return this.loading;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        protected ArrayList getDays() {
            return this.fakeDays;
        }

        @Override // org.telegram.ui.Stories.StoriesController.StoriesList
        public MessageObject findMessageObject(int i) {
            if (i < 0 || i >= this.messageObjects.size()) {
                return null;
            }
            return (MessageObject) this.messageObjects.get(i);
        }
    }

    public static class StoriesList {
        private static HashMap lastLoadTime;
        public final int albumId;
        private final Set cachedObjects;
        public final int currentAccount;
        private final Runnable destroyRunnable;
        public final long dialogId;
        public boolean done;
        private boolean error;
        public final HashMap groupedByDay;
        private boolean invalidateAfterPreload;
        private final ArrayList links;
        private final Set loadedObjects;
        private boolean loading;
        private int maxLinkId;
        public final ArrayList messageObjects;
        private final HashMap messageObjectsMap;
        private final Runnable notify;
        public final ArrayList pinnedIds;
        protected boolean preloading;
        private int reqId;
        private boolean saving;
        public final HashSet seenStories;
        private boolean showPhotos;
        private boolean showVideos;
        private final ArrayList tempArr;
        protected Utilities.CallbackReturn toLoad;
        private int totalCount;
        public final int type;

        public static /* synthetic */ void $r8$lambda$I2mzpsXgJt70KibSxQrcG7HZlLs() {
        }

        public static /* synthetic */ void $r8$lambda$gJ3kJ5LzpL6UzbdwoosGHx6lf3E() {
        }

        /* JADX INFO: renamed from: $r8$lambda$wPVWlmQxR7Fe-aHAIEf-7YfYwlM, reason: not valid java name */
        public static /* synthetic */ void m18674$r8$lambda$wPVWlmQxR7FeaHAIEf7YfYwlM(TLObject tLObject, TLRPC.TL_error tL_error) {
        }

        public int link() {
            int i = this.maxLinkId;
            this.maxLinkId = i + 1;
            this.links.add(Integer.valueOf(i));
            Runnable runnable = this.destroyRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            return i;
        }

        public void unlink(int i) {
            Runnable runnable;
            this.links.remove(Integer.valueOf(i));
            if (!this.links.isEmpty() || (runnable = this.destroyRunnable) == null) {
                return;
            }
            AndroidUtilities.cancelRunOnUIThread(runnable);
            AndroidUtilities.runOnUIThread(this.destroyRunnable, 300000L);
        }

        public void updateFilters(boolean z, boolean z2) {
            this.showPhotos = z;
            this.showVideos = z2;
            fill(true);
        }

        public boolean isOnlyCache() {
            return this.loadedObjects.isEmpty() && canLoad();
        }

        public boolean showPhotos() {
            return this.showPhotos;
        }

        public boolean showVideos() {
            return this.showVideos;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesListUpdated, this);
        }

        public void fill(boolean z) {
            fill(this.messageObjects, this.showPhotos, this.showVideos);
            if (z) {
                AndroidUtilities.cancelRunOnUIThread(this.notify);
                AndroidUtilities.runOnUIThread(this.notify);
            }
        }

        public void fill(ArrayList arrayList, boolean z, boolean z2) {
            this.tempArr.clear();
            if (this.type == 0 && this.albumId <= 0) {
                ArrayList arrayList2 = this.pinnedIds;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    Integer num = (Integer) obj;
                    num.intValue();
                    MessageObject messageObject = (MessageObject) this.messageObjectsMap.get(num);
                    if (filter(messageObject, z, z2)) {
                        this.tempArr.add(messageObject);
                    }
                }
            }
            int i2 = Integer.MAX_VALUE;
            for (Integer num2 : this.loadedObjects) {
                int iIntValue = num2.intValue();
                MessageObject messageObject2 = (MessageObject) this.messageObjectsMap.get(num2);
                if (this.type != 0 || this.albumId > 0 || !this.pinnedIds.contains(num2)) {
                    if (filter(messageObject2, z, z2)) {
                        this.tempArr.add(messageObject2);
                    }
                    if (iIntValue < i2) {
                        i2 = iIntValue;
                    }
                }
            }
            if (!this.done) {
                Iterator it = this.cachedObjects.iterator();
                while (it.hasNext() && (this.totalCount == -1 || this.tempArr.size() < this.totalCount)) {
                    Integer num3 = (Integer) it.next();
                    int iIntValue2 = num3.intValue();
                    if (this.type != 0 || this.albumId > 0 || !this.pinnedIds.contains(num3)) {
                        if (i2 == Integer.MAX_VALUE || iIntValue2 < i2) {
                            MessageObject messageObject3 = (MessageObject) this.messageObjectsMap.get(num3);
                            if (filter(messageObject3, z, z2)) {
                                this.tempArr.add(messageObject3);
                            }
                        }
                    }
                }
            }
            arrayList.clear();
            arrayList.addAll(this.tempArr);
        }

        private boolean filter(MessageObject messageObject, boolean z, boolean z2) {
            if (messageObject == null || !messageObject.isStory()) {
                return false;
            }
            if (z && messageObject.isPhoto()) {
                return true;
            }
            return (z2 && messageObject.isVideo()) || (messageObject.storyItem.media instanceof TLRPC.TL_messageMediaUnsupported);
        }

        private StoriesList(int i, long j, int i2, int i3, final Utilities.Callback callback) {
            this.maxLinkId = 0;
            this.links = new ArrayList();
            this.pinnedIds = new ArrayList();
            this.groupedByDay = new HashMap();
            this.messageObjects = new ArrayList();
            this.messageObjectsMap = new HashMap();
            this.seenStories = new HashSet();
            this.showPhotos = true;
            this.showVideos = true;
            this.tempArr = new ArrayList();
            this.notify = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            };
            this.totalCount = -1;
            this.reqId = -1;
            this.currentAccount = i;
            this.dialogId = j;
            this.type = i2;
            this.albumId = i3;
            this.destroyRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1(callback);
                }
            };
            if (i2 == 0 && i3 > 0) {
                this.cachedObjects = new LinkedHashSet();
                this.loadedObjects = new LinkedHashSet();
            } else {
                this.cachedObjects = new TreeSet(Comparator.CC.reverseOrder());
                this.loadedObjects = new TreeSet(Comparator.CC.reverseOrder());
            }
            preloadCache();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(Utilities.Callback callback) {
            callback.run(this);
        }

        protected void preloadCache() {
            if (this.preloading || this.loading || this.error) {
                return;
            }
            this.preloading = true;
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$preloadCache$3(messagesStorage);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preloadCache$3(MessagesStorage messagesStorage) {
            NativeByteBuffer nativeByteBuffer;
            TLRPC.Peer peer;
            StoriesList storiesList = this;
            final ArrayList arrayList = new ArrayList();
            final HashSet hashSet = new HashSet();
            HashSet<Long> hashSet2 = new HashSet<>();
            HashSet hashSet3 = new HashSet();
            final ArrayList arrayList2 = new ArrayList();
            final ArrayList<TLRPC.User> arrayList3 = new ArrayList<>();
            final ArrayList<TLRPC.Chat> arrayList4 = new ArrayList<>();
            SQLiteCursor sQLiteCursorCreateLoadStoriesCursor = null;
            try {
                messagesStorage.getDatabase();
                sQLiteCursorCreateLoadStoriesCursor = messagesStorage.createLoadStoriesCursor(storiesList.dialogId, storiesList.albumId, storiesList.type);
                while (sQLiteCursorCreateLoadStoriesCursor.next()) {
                    int i = 0;
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorCreateLoadStoriesCursor.byteBufferValue(0);
                    if (nativeByteBufferByteBufferValue != null) {
                        TL_stories.StoryItem storyItemTLdeserialize = TL_stories.StoryItem.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(true), true);
                        storyItemTLdeserialize.dialogId = storiesList.dialogId;
                        storyItemTLdeserialize.messageId = storyItemTLdeserialize.id;
                        MessageObject messageObject = new MessageObject(storiesList.currentAccount, storyItemTLdeserialize);
                        ArrayList<TLRPC.PrivacyRule> arrayList5 = storyItemTLdeserialize.privacy;
                        int size = arrayList5.size();
                        while (i < size) {
                            TLRPC.PrivacyRule privacyRule = arrayList5.get(i);
                            int i2 = i + 1;
                            TLRPC.PrivacyRule privacyRule2 = privacyRule;
                            if (privacyRule2 instanceof TLRPC.TL_privacyValueDisallowUsers) {
                                hashSet2.addAll(((TLRPC.TL_privacyValueDisallowUsers) privacyRule2).users);
                            } else if (privacyRule2 instanceof TLRPC.TL_privacyValueAllowUsers) {
                                hashSet2.addAll(((TLRPC.TL_privacyValueAllowUsers) privacyRule2).users);
                            }
                            i = i2;
                        }
                        TL_stories.StoryFwdHeader storyFwdHeader = storyItemTLdeserialize.fwd_from;
                        if (storyFwdHeader == null || (peer = storyFwdHeader.from) == null) {
                            nativeByteBuffer = nativeByteBufferByteBufferValue;
                        } else {
                            nativeByteBuffer = nativeByteBufferByteBufferValue;
                            long peerDialogId = DialogObject.getPeerDialogId(peer);
                            if (peerDialogId >= 0) {
                                hashSet2.add(Long.valueOf(peerDialogId));
                            } else {
                                hashSet3.add(Long.valueOf(-peerDialogId));
                            }
                        }
                        for (int i3 = 0; i3 < storyItemTLdeserialize.media_areas.size(); i3++) {
                            if (storyItemTLdeserialize.media_areas.get(i3) instanceof TL_stories.TL_mediaAreaChannelPost) {
                                hashSet3.add(Long.valueOf(((TL_stories.TL_mediaAreaChannelPost) storyItemTLdeserialize.media_areas.get(i3)).channel_id));
                            }
                        }
                        TLRPC.Peer peer2 = storyItemTLdeserialize.from_id;
                        if (peer2 != null) {
                            long peerDialogId2 = DialogObject.getPeerDialogId(peer2);
                            if (peerDialogId2 >= 0) {
                                hashSet2.add(Long.valueOf(peerDialogId2));
                            } else {
                                hashSet3.add(Long.valueOf(-peerDialogId2));
                            }
                        }
                        messageObject.generateThumbs(false);
                        arrayList2.add(messageObject);
                        nativeByteBuffer.reuse();
                        if (sQLiteCursorCreateLoadStoriesCursor.intValue(1) == 1) {
                            hashSet.add(Integer.valueOf(storyItemTLdeserialize.id));
                        }
                        int iIntValue = sQLiteCursorCreateLoadStoriesCursor.intValue(2);
                        if (iIntValue > 0) {
                            arrayList.add(Utilities.clamp(iIntValue, arrayList.size() - 1, 0), Integer.valueOf(storyItemTLdeserialize.id));
                        }
                    }
                    storiesList = this;
                }
                sQLiteCursorCreateLoadStoriesCursor.dispose();
                if (!hashSet2.isEmpty()) {
                    messagesStorage.getUsersInternal(hashSet2, arrayList3);
                }
                if (!hashSet3.isEmpty()) {
                    messagesStorage.getChatsInternal(TextUtils.join(",", hashSet3), arrayList4);
                }
            } catch (Throwable th) {
                try {
                    messagesStorage.checkSQLException(th);
                    if (sQLiteCursorCreateLoadStoriesCursor != null) {
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda16
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$preloadCache$2(arrayList2, arrayList, arrayList3, arrayList4, hashSet);
                        }
                    });
                } catch (Throwable th2) {
                    if (sQLiteCursorCreateLoadStoriesCursor != null) {
                        sQLiteCursorCreateLoadStoriesCursor.dispose();
                    }
                    throw th2;
                }
            }
            sQLiteCursorCreateLoadStoriesCursor.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$preloadCache$2(arrayList2, arrayList, arrayList3, arrayList4, hashSet);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preloadCache$2(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, HashSet hashSet) {
            FileLog.m952d("StoriesList " + this.type + "{" + this.dialogId + "} preloadCache {" + StoriesController.storyItemMessageIds(arrayList) + "}");
            this.pinnedIds.clear();
            this.pinnedIds.addAll(arrayList2);
            this.preloading = false;
            MessagesController.getInstance(this.currentAccount).putUsers(arrayList3, true);
            MessagesController.getInstance(this.currentAccount).putChats(arrayList4, true);
            if (this.invalidateAfterPreload) {
                this.invalidateAfterPreload = false;
                this.toLoad = null;
                invalidateCache();
                return;
            }
            this.seenStories.addAll(hashSet);
            this.cachedObjects.clear();
            for (int i = 0; i < arrayList.size(); i++) {
                pushObject((MessageObject) arrayList.get(i), true);
            }
            fill(false);
            Utilities.CallbackReturn callbackReturn = this.toLoad;
            if (callbackReturn != null) {
                callbackReturn.run(0);
                this.toLoad = null;
            }
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesListUpdated, this);
        }

        private void pushObject(MessageObject messageObject, boolean z) {
            if (messageObject == null) {
                return;
            }
            this.messageObjectsMap.put(Integer.valueOf(messageObject.getId()), messageObject);
            (z ? this.cachedObjects : this.loadedObjects).add(Integer.valueOf(messageObject.getId()));
            long jDay = day(messageObject);
            TreeSet treeSet = (TreeSet) this.groupedByDay.get(Long.valueOf(jDay));
            if (treeSet == null) {
                HashMap map = this.groupedByDay;
                Long lValueOf = Long.valueOf(jDay);
                TreeSet treeSet2 = new TreeSet(Comparator.CC.reverseOrder());
                map.put(lValueOf, treeSet2);
                treeSet = treeSet2;
            }
            treeSet.add(Integer.valueOf(messageObject.getId()));
        }

        private boolean removeObject(int i, boolean z) {
            MessageObject messageObject = (MessageObject) this.messageObjectsMap.remove(Integer.valueOf(i));
            if (z) {
                this.cachedObjects.remove(Integer.valueOf(i));
            }
            this.loadedObjects.remove(Integer.valueOf(i));
            this.pinnedIds.remove(Integer.valueOf(i));
            if (messageObject == null) {
                return false;
            }
            long jDay = day(messageObject);
            Collection collection = (Collection) this.groupedByDay.get(Long.valueOf(jDay));
            if (collection == null) {
                return true;
            }
            collection.remove(Integer.valueOf(i));
            if (!collection.isEmpty()) {
                return true;
            }
            this.groupedByDay.remove(Long.valueOf(jDay));
            return true;
        }

        public static long day(MessageObject messageObject) {
            if (messageObject == null) {
                return 0L;
            }
            long j = messageObject.messageOwner.date;
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j * 1000);
            return (((long) calendar.get(1)) * 10000) + (((long) calendar.get(2)) * 100) + ((long) calendar.get(5));
        }

        protected ArrayList getDays() {
            ArrayList arrayList = new ArrayList(this.groupedByDay.keySet());
            Collections.sort(arrayList, new java.util.Comparator() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda3
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return StoriesController.StoriesList.m18671$r8$lambda$p509TyV4xK3Z7Fg5n4CU4UIas8((Long) obj, (Long) obj2);
                }
            });
            ArrayList arrayList2 = new ArrayList();
            int i = this.type;
            int i2 = 0;
            if (i == 0 && this.albumId > 0) {
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = this.messageObjects;
                int size = arrayList4.size();
                while (i2 < size) {
                    Object obj = arrayList4.get(i2);
                    i2++;
                    arrayList3.add(Integer.valueOf(((MessageObject) obj).storyItem.id));
                }
                arrayList2.add(arrayList3);
                return arrayList2;
            }
            if (i == 0 && !this.pinnedIds.isEmpty()) {
                arrayList2.add(new ArrayList(this.pinnedIds));
            }
            int size2 = arrayList.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = arrayList.get(i3);
                i3++;
                TreeSet treeSet = (TreeSet) this.groupedByDay.get((Long) obj2);
                if (treeSet != null) {
                    ArrayList arrayList5 = new ArrayList(treeSet);
                    if (this.type == 0 && !this.pinnedIds.isEmpty()) {
                        ArrayList arrayList6 = this.pinnedIds;
                        int size3 = arrayList6.size();
                        int i4 = 0;
                        while (i4 < size3) {
                            Object obj3 = arrayList6.get(i4);
                            i4++;
                            Integer num = (Integer) obj3;
                            num.intValue();
                            arrayList5.remove(num);
                        }
                    }
                    if (!arrayList5.isEmpty()) {
                        arrayList2.add(arrayList5);
                    }
                }
            }
            return arrayList2;
        }

        /* JADX INFO: renamed from: $r8$lambda$p509TyV4xK3Z7-Fg5n4CU4UIas8, reason: not valid java name */
        public static /* synthetic */ int m18671$r8$lambda$p509TyV4xK3Z7Fg5n4CU4UIas8(Long l, Long l2) {
            return (int) (l2.longValue() - l.longValue());
        }

        protected void invalidateCache() {
            if (this.preloading) {
                this.invalidateAfterPreload = true;
                return;
            }
            resetCanLoad();
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$invalidateCache$6(messagesStorage);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$invalidateCache$6(MessagesStorage messagesStorage) {
            try {
                messagesStorage.getDatabase().executeFast(String.format(Locale.US, "DELETE FROM profile_stories WHERE dialog_id = %d AND type = %d", Long.valueOf(this.dialogId), Integer.valueOf(this.type))).stepThis().dispose();
            } catch (Throwable th) {
                messagesStorage.checkSQLException(th);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$invalidateCache$5();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$invalidateCache$5() {
            this.cachedObjects.clear();
            fill(true);
        }

        protected void saveCache() {
            if (this.saving) {
                return;
            }
            this.saving = true;
            final ArrayList arrayList = new ArrayList();
            final ArrayList arrayList2 = new ArrayList(this.pinnedIds);
            fill(arrayList, true, true);
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveCache$8(arrayList, messagesStorage, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$saveCache$8(ArrayList arrayList, MessagesStorage messagesStorage, ArrayList arrayList2) {
            SQLitePreparedStatement sQLitePreparedStatement;
            SQLiteDatabase database;
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast;
            FileLog.m952d("StoriesList " + this.type + "{" + this.dialogId + "} saveCache {" + StoriesController.storyItemMessageIds(arrayList) + "}");
            SQLitePreparedStatement sQLitePreparedStatement2 = null;
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = null;
            try {
                database = messagesStorage.getDatabase();
                sQLitePreparedStatementExecuteFast = database.executeFast("REPLACE INTO profile_stories VALUES(?, ?, ?, ?, ?, ?)");
            } catch (Throwable th) {
                th = th;
                sQLitePreparedStatement = null;
            }
            try {
                database.executeFast(String.format(Locale.US, "DELETE FROM profile_stories_albums_links WHERE dialog_id = %d AND album_id = %d", Long.valueOf(this.dialogId), Integer.valueOf(this.albumId))).stepThis().dispose();
                sQLitePreparedStatementExecuteFast2 = database.executeFast("REPLACE INTO profile_stories_albums_links VALUES(?, ?, ?, ?)");
                for (int i = 0; i < arrayList.size(); i++) {
                    TL_stories.StoryItem storyItem = ((MessageObject) arrayList.get(i)).storyItem;
                    if (storyItem != null) {
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(storyItem.getObjectSize());
                        storyItem.serializeToStream(nativeByteBuffer);
                        sQLitePreparedStatementExecuteFast.requery();
                        sQLitePreparedStatementExecuteFast.bindLong(1, this.dialogId);
                        sQLitePreparedStatementExecuteFast.bindInteger(2, storyItem.id);
                        sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer);
                        sQLitePreparedStatementExecuteFast.bindInteger(4, this.type);
                        sQLitePreparedStatementExecuteFast.bindInteger(5, this.seenStories.contains(Integer.valueOf(storyItem.id)) ? 1 : 0);
                        sQLitePreparedStatementExecuteFast.bindInteger(6, arrayList2.indexOf(Integer.valueOf(storyItem.id)) + 1);
                        sQLitePreparedStatementExecuteFast.step();
                        nativeByteBuffer.reuse();
                        sQLitePreparedStatementExecuteFast2.requery();
                        sQLitePreparedStatementExecuteFast2.bindLong(1, this.dialogId);
                        sQLitePreparedStatementExecuteFast2.bindInteger(2, this.albumId);
                        sQLitePreparedStatementExecuteFast2.bindInteger(3, storyItem.id);
                        sQLitePreparedStatementExecuteFast2.bindInteger(4, i);
                        sQLitePreparedStatementExecuteFast2.step();
                    }
                }
                if (sQLitePreparedStatementExecuteFast != null) {
                    sQLitePreparedStatementExecuteFast.dispose();
                }
                if (sQLitePreparedStatementExecuteFast2 != null) {
                    sQLitePreparedStatementExecuteFast2.dispose();
                }
            } catch (Throwable th2) {
                th = th2;
                sQLitePreparedStatement = sQLitePreparedStatementExecuteFast2;
                sQLitePreparedStatement2 = sQLitePreparedStatementExecuteFast;
                try {
                    messagesStorage.checkSQLException(th);
                } finally {
                    if (sQLitePreparedStatement2 != null) {
                        sQLitePreparedStatement2.dispose();
                    }
                    if (sQLitePreparedStatement != null) {
                        sQLitePreparedStatement.dispose();
                    }
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveCache$7();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$saveCache$7() {
            this.saving = false;
        }

        protected boolean markAsRead(int i) {
            if (this.seenStories.contains(Integer.valueOf(i))) {
                return false;
            }
            this.seenStories.add(Integer.valueOf(i));
            saveCache();
            TL_stories.TL_stories_incrementStoryViews tL_stories_incrementStoryViews = new TL_stories.TL_stories_incrementStoryViews();
            tL_stories_incrementStoryViews.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_stories_incrementStoryViews.id.add(Integer.valueOf(i));
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_incrementStoryViews, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda17
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    StoriesController.StoriesList.m18674$r8$lambda$wPVWlmQxR7FeaHAIEf7YfYwlM(tLObject, tL_error);
                }
            });
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesReadUpdated, new Object[0]);
            return true;
        }

        protected boolean canLoad() {
            Long l;
            return lastLoadTime == null || (l = (Long) lastLoadTime.get(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.dialogId), Integer.valueOf(this.albumId))))) == null || System.currentTimeMillis() - l.longValue() > 120000;
        }

        protected void resetCanLoad() {
            HashMap map = lastLoadTime;
            if (map != null) {
                map.remove(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.dialogId), Integer.valueOf(this.albumId))));
            }
        }

        public boolean load(boolean z, int i) {
            return load(z, i, Collections.EMPTY_LIST);
        }

        public boolean load(List list) {
            boolean z;
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (!this.messageObjectsMap.containsKey((Integer) it.next())) {
                    z = true;
                    break;
                }
            }
            return load(z, 0, list);
        }

        public int lastLoadedId() {
            if (this.loadedObjects.isEmpty()) {
                return -1;
            }
            ArrayList arrayList = new ArrayList(this.loadedObjects);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Integer num = (Integer) arrayList.get(size);
                int iIntValue = num.intValue();
                if (!this.pinnedIds.contains(num)) {
                    return iIntValue;
                }
            }
            return -1;
        }

        public int firstLoadedId() {
            if (this.loadedObjects.isEmpty()) {
                return -1;
            }
            ArrayList arrayList = new ArrayList(this.loadedObjects);
            for (int i = 0; i < arrayList.size(); i++) {
                Integer num = (Integer) arrayList.get(i);
                int iIntValue = num.intValue();
                if (!this.pinnedIds.contains(num)) {
                    return iIntValue;
                }
            }
            return -1;
        }

        public boolean load(final boolean z, final int i, final List list) {
            final int iLastLoadedId;
            TLObject tLObject;
            if (this.loading || ((this.done || this.error || !canLoad()) && !z)) {
                return false;
            }
            if (this.preloading) {
                this.toLoad = new Utilities.CallbackReturn() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.CallbackReturn
                    public final Object run(Object obj) {
                        return this.f$0.lambda$load$10(z, i, list, (Integer) obj);
                    }
                };
                return false;
            }
            int i2 = this.type;
            if (i2 == 0 && this.albumId > 0) {
                TL_stories.TL_stories_getAlbumStories tL_stories_getAlbumStories = new TL_stories.TL_stories_getAlbumStories();
                tL_stories_getAlbumStories.album_id = this.albumId;
                tL_stories_getAlbumStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                iLastLoadedId = this.loadedObjects.size();
                tL_stories_getAlbumStories.offset = iLastLoadedId;
                tL_stories_getAlbumStories.limit = i;
                tLObject = tL_stories_getAlbumStories;
            } else if (i2 == 0) {
                TL_stories.TL_stories_getPinnedStories tL_stories_getPinnedStories = new TL_stories.TL_stories_getPinnedStories();
                tL_stories_getPinnedStories.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                iLastLoadedId = lastLoadedId();
                tL_stories_getPinnedStories.offset_id = iLastLoadedId;
                tL_stories_getPinnedStories.limit = i;
                tLObject = tL_stories_getPinnedStories;
            } else if (i2 == 2) {
                TL_stories.TL_stories_getStoriesByID tL_stories_getStoriesByID = new TL_stories.TL_stories_getStoriesByID();
                tL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                tL_stories_getStoriesByID.id.addAll(list);
                iLastLoadedId = -1;
                tLObject = tL_stories_getStoriesByID;
            } else {
                TL_stories.TL_stories_getStoriesArchive tL_stories_getStoriesArchive = new TL_stories.TL_stories_getStoriesArchive();
                tL_stories_getStoriesArchive.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                iLastLoadedId = lastLoadedId();
                tL_stories_getStoriesArchive.offset_id = iLastLoadedId;
                tL_stories_getStoriesArchive.limit = i;
                tLObject = tL_stories_getStoriesArchive;
            }
            FileLog.m952d("StoriesList " + this.type + "{" + this.dialogId + "} load");
            this.loading = true;
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$13(iLastLoadedId, tLObject2, tL_error);
                }
            });
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Boolean lambda$load$10(boolean z, int i, List list, Integer num) {
            return Boolean.valueOf(load(z, i, list));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$13(final int i, TLObject tLObject, TLRPC.TL_error tL_error) {
            if (tLObject instanceof TL_stories.TL_stories_stories) {
                final ArrayList arrayList = new ArrayList();
                final TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject;
                for (int i2 = 0; i2 < tL_stories_stories.stories.size(); i2++) {
                    arrayList.add(toMessageObject(tL_stories_stories.stories.get(i2), tL_stories_stories));
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$load$11(arrayList, tL_stories_stories, i);
                    }
                });
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$12();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$11(ArrayList arrayList, TL_stories.TL_stories_stories tL_stories_stories, int i) {
            this.reqId = -1;
            FileLog.m952d("StoriesList " + this.type + "{" + this.dialogId + "} loaded {" + StoriesController.storyItemMessageIds(arrayList) + "}");
            this.pinnedIds.clear();
            this.pinnedIds.addAll(tL_stories_stories.pinned_to_top);
            MessagesController.getInstance(this.currentAccount).putUsers(tL_stories_stories.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_stories_stories.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_stories_stories.users, tL_stories_stories.chats, true, true);
            this.loading = false;
            this.totalCount = tL_stories_stories.count;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                pushObject((MessageObject) arrayList.get(i2), false);
            }
            boolean z = this.loadedObjects.size() >= this.totalCount;
            this.done = z;
            if (!z) {
                if (this.albumId <= 0) {
                    if (i == -1) {
                        i = firstLoadedId();
                    }
                    int iLastLoadedId = lastLoadedId();
                    Iterator it = this.cachedObjects.iterator();
                    while (it.hasNext()) {
                        Integer num = (Integer) it.next();
                        int iIntValue = num.intValue();
                        if (!this.loadedObjects.contains(num) && iIntValue >= i && iIntValue <= iLastLoadedId) {
                            it.remove();
                            removeObject(iIntValue, false);
                        }
                    }
                }
            } else {
                Iterator it2 = this.cachedObjects.iterator();
                while (it2.hasNext()) {
                    Integer num2 = (Integer) it2.next();
                    int iIntValue2 = num2.intValue();
                    if (!this.loadedObjects.contains(num2)) {
                        it2.remove();
                        removeObject(iIntValue2, false);
                    }
                }
            }
            fill(true);
            if (this.done) {
                if (lastLoadTime == null) {
                    lastLoadTime = new HashMap();
                }
                lastLoadTime.put(Integer.valueOf(Objects.hash(Integer.valueOf(this.currentAccount), Integer.valueOf(this.type), Long.valueOf(this.dialogId), Integer.valueOf(this.albumId))), Long.valueOf(System.currentTimeMillis()));
            } else {
                resetCanLoad();
            }
            saveCache();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$12() {
            this.loading = false;
            this.error = true;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesListUpdated, this, Boolean.FALSE);
        }

        public void reload() {
            if (this.reqId != -1) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = -1;
            }
            resetCanLoad();
            int size = this.messageObjects.size();
            this.messageObjectsMap.clear();
            this.loadedObjects.clear();
            this.cachedObjects.clear();
            invalidateCache();
            this.done = false;
            this.error = false;
            load(true, Utilities.clamp(size, 50, 10));
        }

        public void updateDeletedStories(List list) {
            FileLog.m952d("StoriesList " + this.type + "{" + this.dialogId + "} updateDeletedStories {" + StoriesController.storyItemIds(list) + "}");
            if (list == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                TL_stories.StoryItem storyItem = (TL_stories.StoryItem) list.get(i);
                if (storyItem != null) {
                    if (this.loadedObjects.contains(Integer.valueOf(storyItem.id)) || this.cachedObjects.contains(Integer.valueOf(storyItem.id))) {
                        this.loadedObjects.remove(Integer.valueOf(storyItem.id));
                        this.cachedObjects.remove(Integer.valueOf(storyItem.id));
                        int i2 = this.totalCount;
                        if (i2 != -1) {
                            this.totalCount = i2 - 1;
                        }
                        z = true;
                    }
                    removeObject(storyItem.id, true);
                }
            }
            if (z) {
                fill(true);
                saveCache();
            }
        }

        public void updateStoryViews(List list, ArrayList arrayList) {
            TL_stories.StoryItem storyItem;
            if (list == null || arrayList == null) {
                return;
            }
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                Integer num = (Integer) list.get(i);
                num.intValue();
                if (i >= arrayList.size()) {
                    break;
                }
                TL_stories.StoryViews storyViews = (TL_stories.StoryViews) arrayList.get(i);
                MessageObject messageObject = (MessageObject) this.messageObjectsMap.get(num);
                if (messageObject != null && (storyItem = messageObject.storyItem) != null) {
                    storyItem.views = storyViews;
                    z = true;
                }
            }
            if (z) {
                saveCache();
            }
        }

        public void updateStories(List list, boolean z) {
            MessageObject messageObject;
            FileLog.m952d("StoriesList " + this.type + "{" + this.dialogId + "} updateStories {" + StoriesController.storyItemIds(list) + "}");
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            boolean z2 = false;
            for (int i = 0; i < list.size(); i++) {
                TL_stories.StoryItem storyItem = (TL_stories.StoryItem) list.get(i);
                if (storyItem != null) {
                    boolean z3 = this.loadedObjects.contains(Integer.valueOf(storyItem.id)) || this.cachedObjects.contains(Integer.valueOf(storyItem.id));
                    boolean z4 = this.type == 1 || storyItem.pinned;
                    int i2 = this.albumId;
                    if (i2 > 0) {
                        ArrayList<Integer> arrayList2 = storyItem.albums;
                        z4 = arrayList2 != null && arrayList2.contains(Integer.valueOf(i2));
                    }
                    if (storyItem instanceof TL_stories.TL_storyItemDeleted) {
                        z4 = false;
                    }
                    if (z3 != z4) {
                        if (!z4) {
                            FileLog.m952d("StoriesList remove story " + storyItem.id);
                            removeObject(storyItem.id, true);
                            int i3 = this.totalCount;
                            if (i3 != -1) {
                                this.totalCount = i3 - 1;
                            }
                        } else if (this.done) {
                            FileLog.m952d("StoriesList put story " + storyItem.id);
                            pushObject(toMessageObject(storyItem, null), false);
                            arrayList.add(Integer.valueOf(storyItem.id));
                            int i4 = this.totalCount;
                            if (i4 != -1) {
                                this.totalCount = i4 + 1;
                            }
                        } else if (!this.loading) {
                            FileLog.m952d("StoriesList cannot put story " + storyItem.id + " -> reload");
                            reload();
                        }
                    } else if (z3 && z4 && ((messageObject = (MessageObject) this.messageObjectsMap.get(Integer.valueOf(storyItem.id))) == null || z || !equal(messageObject.storyItem, storyItem))) {
                        FileLog.m952d("StoriesList update story " + storyItem.id);
                        this.messageObjectsMap.put(Integer.valueOf(storyItem.id), toMessageObject(storyItem, null));
                    }
                    z2 = true;
                }
            }
            if (this.albumId > 0 && !arrayList.isEmpty()) {
                updateOrderInAlbum(arrayList, false);
            }
            if (z2) {
                fill(true);
                saveCache();
            }
        }

        public void updateStoryItemsAlbums(int i, List list, boolean z) {
            TL_stories.StoryItem storyItem;
            Iterator it = list.iterator();
            boolean zAddOrRemoveStoryItemAlbum = false;
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                num.intValue();
                MessageObject messageObject = (MessageObject) this.messageObjectsMap.get(num);
                if (messageObject != null && (storyItem = messageObject.storyItem) != null) {
                    zAddOrRemoveStoryItemAlbum |= StoriesController.addOrRemoveStoryItemAlbum(storyItem, i, z);
                }
            }
            if (zAddOrRemoveStoryItemAlbum) {
                fill(true);
                saveCache();
            }
        }

        public MessageObject findMessageObject(int i) {
            return (MessageObject) this.messageObjectsMap.get(Integer.valueOf(i));
        }

        public boolean equal(TL_stories.StoryItem storyItem, TL_stories.StoryItem storyItem2) {
            if (storyItem == null && storyItem2 == null) {
                return true;
            }
            if ((storyItem == null) != (storyItem2 == null)) {
                return false;
            }
            return storyItem == storyItem2 || (storyItem.id == storyItem2.id && storyItem.media == storyItem2.media && TextUtils.equals(storyItem.caption, storyItem2.caption));
        }

        private MessageObject toMessageObject(TL_stories.StoryItem storyItem, TL_stories.TL_stories_stories tL_stories_stories) {
            storyItem.dialogId = this.dialogId;
            storyItem.messageId = storyItem.id;
            MessageObject messageObject = new MessageObject(this.currentAccount, storyItem);
            messageObject.generateThumbs(false);
            return messageObject;
        }

        public boolean isLoading() {
            return this.preloading || this.loading;
        }

        public boolean isFull() {
            return this.done;
        }

        public int getLoadedCount() {
            return this.loadedObjects.size();
        }

        public int getCount() {
            if (this.showVideos && this.showPhotos) {
                if (this.totalCount < 0) {
                    return this.messageObjects.size();
                }
                return Math.max(this.messageObjects.size(), this.totalCount);
            }
            return this.messageObjects.size();
        }

        public boolean isPinned(int i) {
            if (this.type != 0 || this.albumId > 0) {
                return false;
            }
            return this.pinnedIds.contains(Integer.valueOf(i));
        }

        public boolean updatePinned(ArrayList arrayList, boolean z) {
            int i;
            ArrayList arrayList2 = new ArrayList(this.pinnedIds);
            int size = arrayList.size() - 1;
            while (true) {
                i = 0;
                if (size < 0) {
                    break;
                }
                Integer num = (Integer) arrayList.get(size);
                num.intValue();
                if (z && !arrayList2.contains(num)) {
                    arrayList2.add(0, num);
                } else if (!z && arrayList2.contains(num)) {
                    arrayList2.remove(num);
                }
                size--;
            }
            boolean z2 = arrayList2.size() > MessagesController.getInstance(this.currentAccount).storiesPinnedToTopCountMax;
            if (z2) {
                return true;
            }
            boolean z3 = this.pinnedIds.size() != arrayList2.size();
            if (!z3) {
                while (true) {
                    if (i >= this.pinnedIds.size()) {
                        break;
                    }
                    if (this.pinnedIds.get(i) != arrayList2.get(i)) {
                        z3 = true;
                        break;
                    }
                    i++;
                }
            }
            if (z3) {
                this.pinnedIds.clear();
                this.pinnedIds.addAll(arrayList2);
                fill(true);
                TL_stories.TL_togglePinnedToTop tL_togglePinnedToTop = new TL_stories.TL_togglePinnedToTop();
                tL_togglePinnedToTop.id.addAll(this.pinnedIds);
                tL_togglePinnedToTop.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_togglePinnedToTop, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda13
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda15
                            @Override // java.lang.Runnable
                            public final void run() {
                                StoriesController.StoriesList.$r8$lambda$gJ3kJ5LzpL6UzbdwoosGHx6lf3E();
                            }
                        });
                    }
                });
            }
            return z2;
        }

        public void updateOrderInAlbum(List list, boolean z) {
            reorder(this.cachedObjects, list);
            reorder(this.loadedObjects, list);
            fill(false);
            if (z) {
                TL_stories.TL_updateAlbum tL_updateAlbum = new TL_stories.TL_updateAlbum();
                tL_updateAlbum.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                tL_updateAlbum.album_id = this.albumId;
                tL_updateAlbum.order = new ArrayList<>(list);
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_updateAlbum, null);
            }
        }

        public void updatePinnedOrder(ArrayList arrayList, boolean z) {
            if (this.albumId > 0) {
                updateOrderInAlbum(arrayList, z);
                return;
            }
            ArrayList arrayList2 = new ArrayList(arrayList);
            int i = MessagesController.getInstance(this.currentAccount).storiesPinnedToTopCountMax;
            if (arrayList2.size() > i) {
                arrayList2.subList(i, arrayList2.size()).clear();
            }
            if (this.pinnedIds.size() == arrayList2.size()) {
                for (int i2 = 0; i2 < this.pinnedIds.size() && this.pinnedIds.get(i2) == arrayList2.get(i2); i2++) {
                }
            }
            this.pinnedIds.clear();
            this.pinnedIds.addAll(arrayList2);
            fill(false);
            if (z) {
                TL_stories.TL_togglePinnedToTop tL_togglePinnedToTop = new TL_stories.TL_togglePinnedToTop();
                tL_togglePinnedToTop.id.addAll(this.pinnedIds);
                tL_togglePinnedToTop.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_togglePinnedToTop, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda0
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesList$$ExternalSyntheticLambda14
                            @Override // java.lang.Runnable
                            public final void run() {
                                StoriesController.StoriesList.$r8$lambda$I2mzpsXgJt70KibSxQrcG7HZlLs();
                            }
                        });
                    }
                });
            }
        }

        private static void reorder(Set set, List list) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (set.contains(num)) {
                    linkedHashSet.add(num);
                }
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                Integer num2 = (Integer) it2.next();
                if (!linkedHashSet.contains(num2)) {
                    linkedHashSet.add(num2);
                }
            }
            set.clear();
            set.addAll(linkedHashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$new$23(TL_stories.PeerStories peerStories, TL_stories.PeerStories peerStories2) {
        int i;
        long peerDialogId = DialogObject.getPeerDialogId(peerStories.peer);
        long peerDialogId2 = DialogObject.getPeerDialogId(peerStories2.peer);
        boolean zHasUploadingStories = hasUploadingStories(peerDialogId);
        boolean zHasUploadingStories2 = hasUploadingStories(peerDialogId2);
        boolean zHasUnreadStories = hasUnreadStories(peerDialogId);
        boolean zHasUnreadStories2 = hasUnreadStories(peerDialogId2);
        boolean zHasLiveStory = hasLiveStory(peerDialogId);
        boolean zHasLiveStory2 = hasLiveStory(peerDialogId2);
        if (zHasLiveStory != zHasLiveStory2) {
            return (zHasLiveStory2 ? 1 : 0) - (zHasLiveStory ? 1 : 0);
        }
        if (zHasUploadingStories != zHasUploadingStories2) {
            return (zHasUploadingStories2 ? 1 : 0) - (zHasUploadingStories ? 1 : 0);
        }
        if (zHasUnreadStories != zHasUnreadStories2) {
            return (zHasUnreadStories2 ? 1 : 0) - (zHasUnreadStories ? 1 : 0);
        }
        boolean zIsService = UserObject.isService(peerDialogId);
        boolean zIsService2 = UserObject.isService(peerDialogId2);
        if (zIsService != zIsService2) {
            return (zIsService2 ? 1 : 0) - (zIsService ? 1 : 0);
        }
        boolean zIsPremium = isPremium(peerDialogId);
        boolean zIsPremium2 = isPremium(peerDialogId2);
        if (zIsPremium != zIsPremium2) {
            return (zIsPremium2 ? 1 : 0) - (zIsPremium ? 1 : 0);
        }
        int i2 = 0;
        if (peerStories.stories.isEmpty()) {
            i = 0;
        } else {
            i = peerStories.stories.get(r11.size() - 1).date;
        }
        if (!peerStories2.stories.isEmpty()) {
            i2 = peerStories2.stories.get(r12.size() - 1).date;
        }
        return i2 - i;
    }

    private boolean isPremium(long j) {
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        if (user == null) {
            return false;
        }
        return user.premium;
    }

    public void scheduleSort() {
        AndroidUtilities.cancelRunOnUIThread(this.sortStoriesRunnable);
        this.sortStoriesRunnable.run();
    }

    public boolean hasOnlySelfStories() {
        return hasSelfStories() && (getDialogListStories().isEmpty() || (getDialogListStories().size() == 1 && DialogObject.getPeerDialogId(((TL_stories.PeerStories) getDialogListStories().get(0)).peer) == UserConfig.getInstance(this.currentAccount).clientUserId));
    }

    public void sortHiddenStories() {
        sortDialogStories(this.hiddenListStories);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesUpdated, new Object[0]);
    }

    public void loadBlocklistAtFirst() {
        if (this.lastBlocklistRequested == 0) {
            loadBlocklist(false);
        }
    }

    public void loadBlocklist(boolean z) {
        if (this.blocklistLoading) {
            if (!z || this.blocklistLoadingReset) {
                return;
            }
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.blocklistReqId, true);
            this.blocklistReqId = 0;
            this.blocklistLoadingReset = false;
            this.blocklistLoading = false;
        }
        if (!z || System.currentTimeMillis() - this.lastBlocklistRequested >= 1800000) {
            if (z || !this.blocklistFull) {
                this.blocklistLoading = true;
                this.blocklistLoadingReset = z;
                TLRPC.TL_contacts_getBlocked tL_contacts_getBlocked = new TLRPC.TL_contacts_getBlocked();
                tL_contacts_getBlocked.my_stories_from = true;
                if (z) {
                    tL_contacts_getBlocked.offset = 0;
                    tL_contacts_getBlocked.limit = 100;
                    this.blocklistFull = false;
                } else {
                    tL_contacts_getBlocked.offset = this.blocklist.size();
                    tL_contacts_getBlocked.limit = 25;
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_getBlocked, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda20
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$loadBlocklist$25(tLObject, tL_error);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBlocklist$25(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadBlocklist$24(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadBlocklist$24(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_contacts_blocked) {
            TLRPC.TL_contacts_blocked tL_contacts_blocked = (TLRPC.TL_contacts_blocked) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_blocked.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_contacts_blocked.chats, false);
            this.blocklist.clear();
            ArrayList arrayList = tL_contacts_blocked.blocked;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                this.blocklist.add(Long.valueOf(DialogObject.getPeerDialogId(((TLRPC.TL_peerBlocked) obj).peer_id)));
            }
            this.blocklistCount = Math.max(this.blocklist.size(), tL_contacts_blocked.count);
            this.blocklistFull = true;
        } else {
            if (!(tLObject instanceof TLRPC.TL_contacts_blockedSlice)) {
                return;
            }
            TLRPC.TL_contacts_blockedSlice tL_contacts_blockedSlice = (TLRPC.TL_contacts_blockedSlice) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_blockedSlice.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_contacts_blockedSlice.chats, false);
            ArrayList arrayList2 = tL_contacts_blockedSlice.blocked;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj2 = arrayList2.get(i2);
                i2++;
                this.blocklist.add(Long.valueOf(DialogObject.getPeerDialogId(((TLRPC.TL_peerBlocked) obj2).peer_id)));
            }
            this.blocklistCount = tL_contacts_blockedSlice.count;
            this.blocklistFull = this.blocklist.size() >= this.blocklistCount;
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesBlocklistUpdate, new Object[0]);
        this.blocklistLoading = false;
        this.lastBlocklistRequested = System.currentTimeMillis();
    }

    public int getBlocklistCount() {
        return this.blocklistCount;
    }

    public void updateBlockedUsers(HashSet hashSet, final Runnable runnable) {
        TLRPC.TL_contacts_setBlocked tL_contacts_setBlocked = new TLRPC.TL_contacts_setBlocked();
        tL_contacts_setBlocked.my_stories_from = true;
        tL_contacts_setBlocked.limit = this.blocklist.size();
        int size = this.blocklistCount - this.blocklist.size();
        this.blocklistCount = size;
        if (size < 0) {
            this.blocklistCount = 0;
        }
        this.blocklist.clear();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Long l = (Long) it.next();
            TLRPC.InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(l.longValue());
            if (inputPeer != null && !(inputPeer instanceof TLRPC.TL_inputPeerEmpty)) {
                this.blocklist.add(l);
                tL_contacts_setBlocked.id.add(inputPeer);
            }
        }
        this.blocklistCount += this.blocklist.size();
        tL_contacts_setBlocked.limit = Math.max(tL_contacts_setBlocked.limit, this.blocklist.size());
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_setBlocked, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda40
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda41
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoriesController.m18647$r8$lambda$G2O6l9Hr4Go5O9xxhY9RL6YO_0(runnable);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$G2O6l9H-r4Go5O9xxhY9RL6YO_0, reason: not valid java name */
    public static /* synthetic */ void m18647$r8$lambda$G2O6l9Hr4Go5O9xxhY9RL6YO_0(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }

    public boolean isBlocked(TL_stories.StoryView storyView) {
        if (storyView == null) {
            return false;
        }
        if (this.blockedOverride.containsKey(storyView.user_id)) {
            return ((Boolean) this.blockedOverride.get(storyView.user_id)).booleanValue();
        }
        return this.lastBlocklistRequested == 0 ? storyView.blocked_my_stories_from || storyView.blocked : this.blocklist.contains(Long.valueOf(storyView.user_id)) || storyView.blocked_my_stories_from || storyView.blocked;
    }

    public void applyStoryViewsBlocked(TL_stories.StoryViewsList storyViewsList) {
        if (storyViewsList == null || storyViewsList.views == null) {
            return;
        }
        for (int i = 0; i < storyViewsList.views.size(); i++) {
            TL_stories.StoryView storyView = storyViewsList.views.get(i);
            if (this.blockedOverride.containsKey(storyView.user_id)) {
                this.blockedOverride.put(storyView.user_id, Boolean.valueOf(storyView.blocked_my_stories_from));
            }
        }
    }

    public void updateBlockUser(long j, boolean z) {
        updateBlockUser(j, z, true);
    }

    public void updateBlockUser(long j, boolean z, boolean z2) {
        TLObject tLObject;
        TLRPC.InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        if (inputPeer == null || (inputPeer instanceof TLRPC.TL_inputPeerEmpty)) {
            return;
        }
        this.blockedOverride.put(j, Boolean.valueOf(z));
        if (this.blocklist.contains(Long.valueOf(j)) != z) {
            if (z) {
                this.blocklist.add(Long.valueOf(j));
                this.blocklistCount++;
            } else {
                this.blocklist.remove(Long.valueOf(j));
                this.blocklistCount--;
            }
        }
        if (z2) {
            if (z) {
                TLRPC.TL_contacts_block tL_contacts_block = new TLRPC.TL_contacts_block();
                tL_contacts_block.my_stories_from = true;
                tL_contacts_block.id = inputPeer;
                tLObject = tL_contacts_block;
            } else {
                TLRPC.TL_contacts_unblock tL_contacts_unblock = new TLRPC.TL_contacts_unblock();
                tL_contacts_unblock.my_stories_from = true;
                tL_contacts_unblock.id = inputPeer;
                tLObject = tL_contacts_unblock;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLObject, null);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesBlocklistUpdate, new Object[0]);
    }

    public StoryLimit checkStoryLimit() {
        int i;
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            i = MessagesController.getInstance(this.currentAccount).storyExpiringLimitPremium;
        } else {
            i = MessagesController.getInstance(this.currentAccount).storyExpiringLimitDefault;
        }
        if (getMyStoriesCount() >= i) {
            return new StoryLimit(1, 0, 0L);
        }
        if (this.storyLimitFetched) {
            return this.storyLimitCached;
        }
        TL_stories.TL_stories_canSendStory tL_stories_canSendStory = new TL_stories.TL_stories_canSendStory();
        tL_stories_canSendStory.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_canSendStory, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkStoryLimit$29(tLObject, tL_error);
            }
        }, 1024);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStoryLimit$29(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkStoryLimit$28(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkStoryLimit$28(TLObject tLObject, TLRPC.TL_error tL_error) {
        this.storyLimitFetched = true;
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            this.storyLimitCached = null;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesLimitUpdate, new Object[0]);
        } else if (tLObject instanceof TL_stories.canSendStoryCount) {
            this.storyLimitCached = new StoryLimit(1, ((TL_stories.canSendStoryCount) tLObject).count_remains, -1L);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesLimitUpdate, new Object[0]);
        } else {
            checkStoryError(tL_error);
        }
    }

    public void canSendStoryFor(final long j, final Consumer consumer, final boolean z, final Theme.ResourcesProvider resourcesProvider) {
        TL_stories.TL_stories_canSendStory tL_stories_canSendStory = new TL_stories.TL_stories_canSendStory();
        tL_stories_canSendStory.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_canSendStory, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda16
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$canSendStoryFor$34(z, j, consumer, resourcesProvider, tLObject, tL_error);
            }
        }, 1024);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$34(final boolean z, final long j, final Consumer consumer, final Theme.ResourcesProvider resourcesProvider, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$canSendStoryFor$33(tL_error, z, j, consumer, resourcesProvider);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$33(TLRPC.TL_error tL_error, boolean z, final long j, final Consumer consumer, Theme.ResourcesProvider resourcesProvider) {
        if (tL_error != null) {
            if (tL_error.text.contains("BOOSTS_REQUIRED")) {
                if (z) {
                    final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                    messagesController.getBoostsController().getBoostsStats(j, new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda34
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(Object obj) {
                            this.f$0.lambda$canSendStoryFor$32(consumer, messagesController, j, (TL_stories.TL_premium_boostsStatus) obj);
                        }
                    });
                    return;
                } else {
                    consumer.accept(Boolean.FALSE);
                    return;
                }
            }
            if (tL_error.text.startsWith("STORY_LIVE_ALREADY_")) {
                BaseFragment lastFragment = LaunchActivity.getLastFragment();
                if (z && lastFragment != null) {
                    new AlertDialog.Builder(lastFragment.getContext(), resourcesProvider).setTitle(LocaleController.getString(C2484R.string.LiveStoryAlreadyStreamingTitle)).setMessage(LocaleController.getString(C2484R.string.LiveStoryAlreadyStreaming)).setPositiveButton(LocaleController.getString(C2484R.string.OK), null).show();
                }
                consumer.accept(Boolean.FALSE);
                return;
            }
            if (tL_error.text.equalsIgnoreCase("PREMIUM_ACCOUNT_REQUIRED")) {
                BaseFragment lastFragment2 = LaunchActivity.getLastFragment();
                if (z && lastFragment2 != null) {
                    lastFragment2.showDialog(new PremiumFeatureBottomSheet(lastFragment2, 14, true));
                }
                consumer.accept(Boolean.FALSE);
                return;
            }
            BulletinFactory bulletinFactoryGlobal = BulletinFactory.global();
            if (bulletinFactoryGlobal != null) {
                bulletinFactoryGlobal.showForError(tL_error);
            }
            consumer.accept(Boolean.FALSE);
            return;
        }
        consumer.accept(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$32(final Consumer consumer, MessagesController messagesController, final long j, final TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        if (tL_premium_boostsStatus == null) {
            consumer.accept(Boolean.FALSE);
        } else {
            messagesController.getBoostsController().userCanBoostChannel(j, tL_premium_boostsStatus, new Consumer() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda36
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$canSendStoryFor$31(consumer, j, tL_premium_boostsStatus, (ChannelBoostsController.CanApplyBoost) obj);
                }
            });
            consumer.accept(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$31(Consumer consumer, final long j, TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus, ChannelBoostsController.CanApplyBoost canApplyBoost) {
        if (canApplyBoost == null) {
            consumer.accept(Boolean.FALSE);
        } else {
            LimitReachedBottomSheet.openBoostsForPostingStories(LaunchActivity.getLastFragment(), j, canApplyBoost, tL_premium_boostsStatus, canPostStories(j) ? new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$canSendStoryFor$30(j);
                }
            } : null);
            consumer.accept(Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$canSendStoryFor$30(long j) {
        BaseFragment baseFragmentCreate = StatisticActivity.create(MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j)));
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            if (StoryRecorder.isVisible()) {
                BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
                bottomSheetParams.transitionFromLeft = true;
                lastFragment.showAsSheet(baseFragmentCreate, bottomSheetParams);
                return;
            }
            lastFragment.presentFragment(baseFragmentCreate);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean checkStoryError(TLRPC.TL_error tL_error) {
        boolean z;
        String str;
        if (tL_error == null || (str = tL_error.text) == null) {
            z = false;
        } else {
            long j = 0;
            z = true;
            if (str.startsWith("STORY_SEND_FLOOD_WEEKLY_")) {
                try {
                    j = Long.parseLong(tL_error.text.substring(24));
                } catch (Exception unused) {
                }
                this.storyLimitCached = new StoryLimit(2, 0, j);
            } else if (tL_error.text.startsWith("STORY_SEND_FLOOD_MONTHLY_")) {
                try {
                    j = Long.parseLong(tL_error.text.substring(25));
                } catch (Exception unused2) {
                }
                this.storyLimitCached = new StoryLimit(3, 0, j);
            } else if (tL_error.text.equals("STORIES_TOO_MUCH")) {
                this.storyLimitCached = new StoryLimit(1, 0, 0L);
            } else if (tL_error.text.equals("PREMIUM_ACCOUNT_REQUIRED")) {
                MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                if ("enabled".equals(messagesController.storiesPosting)) {
                    SharedPreferences.Editor editorEdit = messagesController.getMainSettings().edit();
                    messagesController.storiesPosting = "premium";
                    editorEdit.putString("storiesPosting", "premium").apply();
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesEnabledUpdate, new Object[0]);
                }
            }
        }
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesLimitUpdate, new Object[0]);
        }
        return z;
    }

    public boolean hasStoryLimit(int i) {
        StoryLimit storyLimitCheckStoryLimit = checkStoryLimit();
        return storyLimitCheckStoryLimit != null && storyLimitCheckStoryLimit.active(this.currentAccount, i);
    }

    public void invalidateStoryLimit() {
        this.storyLimitFetched = false;
        this.storyLimitCached = null;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class StoryLimit {
        public int remains_count;
        public int type;
        public long until;

        public StoryLimit(int i, int i2, long j) {
            this.type = i;
            this.until = j;
            this.remains_count = i2;
        }

        public int getLimitReachedType() {
            int i = this.type;
            if (i != 2) {
                return i != 3 ? 14 : 16;
            }
            return 15;
        }

        public boolean active(int i) {
            return active(i, 1);
        }

        public boolean active(int i, int i2) {
            int i3 = this.type;
            return i3 != 1 ? !(i3 == 2 || i3 == 3) || ((long) ConnectionsManager.getInstance(i).getCurrentTime()) < this.until : this.remains_count < i2;
        }
    }

    public void loadSendAs() {
        if (this.loadingSendAs || this.loadedSendAs) {
            return;
        }
        this.loadingSendAs = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_stories.TL_stories_getChatsToSend(), new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda17
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadSendAs$36(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSendAs$36(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSendAs$35(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSendAs$35(TLObject tLObject) {
        this.sendAs.clear();
        this.sendAs.add(new TLRPC.TL_inputPeerSelf());
        if (tLObject instanceof TLRPC.TL_messages_chats) {
            ArrayList<TLRPC.Chat> arrayList = ((TLRPC.TL_messages_chats) tLObject).chats;
            MessagesController.getInstance(this.currentAccount).putChats(arrayList, false);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.Chat chat = arrayList.get(i);
                i++;
                this.sendAs.add(MessagesController.getInputPeer(chat));
            }
        }
        this.loadingSendAs = false;
        this.loadedSendAs = true;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storiesSendAsUpdate, new Object[0]);
    }

    public String getAlbumName(long j, int i) {
        StoryAlbum storyAlbumFindById;
        StoriesCollections storyAlbumsList = getStoryAlbumsList(j, false);
        if (storyAlbumsList == null || (storyAlbumFindById = storyAlbumsList.findById(i)) == null) {
            return null;
        }
        return storyAlbumFindById.title;
    }

    public boolean canEditStories(long j) {
        TLRPC.Chat chat;
        if (j >= 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j))) == null) {
            return false;
        }
        if (chat.creator) {
            return true;
        }
        TLRPC.TL_chatAdminRights tL_chatAdminRights = chat.admin_rights;
        return tL_chatAdminRights != null && tL_chatAdminRights.edit_stories;
    }

    public boolean canEditStoryAlbums(long j) {
        return UserConfig.getInstance(this.currentAccount).getClientUserId() == j || canEditStories(j);
    }

    public boolean canPostStories(long j) {
        TLRPC.User user;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        if (j >= 0) {
            return j > 0 && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j))) != null && user.bot && user.bot_can_edit;
        }
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
        if (chat == null || !ChatObject.isBoostSupported(chat)) {
            return false;
        }
        return chat.creator || ((tL_chatAdminRights = chat.admin_rights) != null && tL_chatAdminRights.post_stories);
    }

    public boolean canEditStory(TL_stories.StoryItem storyItem) {
        TLRPC.Chat chat;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        TLRPC.User user;
        if (storyItem == null || storyItem.dialogId == getSelfUserId()) {
            return false;
        }
        if (storyItem.dialogId > 0 && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(storyItem.dialogId))) != null && user.bot && user.bot_can_edit) {
            return true;
        }
        if (storyItem.dialogId >= 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-storyItem.dialogId))) == null) {
            return false;
        }
        if (chat.creator) {
            return true;
        }
        boolean z = storyItem.out;
        if (z && (tL_chatAdminRights2 = chat.admin_rights) != null && (tL_chatAdminRights2.post_stories || tL_chatAdminRights2.edit_stories)) {
            return true;
        }
        return (z || (tL_chatAdminRights = chat.admin_rights) == null || !tL_chatAdminRights.edit_stories) ? false : true;
    }

    public boolean canDeleteStory(TL_stories.StoryItem storyItem) {
        TLRPC.Chat chat;
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        TLRPC.TL_chatAdminRights tL_chatAdminRights2;
        TLRPC.User user;
        if (storyItem == null || storyItem.dialogId == getSelfUserId()) {
            return false;
        }
        if (storyItem.dialogId > 0 && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(storyItem.dialogId))) != null && user.bot && user.bot_can_edit) {
            return true;
        }
        if (storyItem.dialogId >= 0 || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-storyItem.dialogId))) == null) {
            return false;
        }
        if (chat.creator) {
            return true;
        }
        boolean z = storyItem.out;
        if (z && (tL_chatAdminRights2 = chat.admin_rights) != null && (tL_chatAdminRights2.post_stories || tL_chatAdminRights2.delete_stories)) {
            return true;
        }
        return (z || (tL_chatAdminRights = chat.admin_rights) == null || !tL_chatAdminRights.delete_stories) ? false : true;
    }

    public boolean canCreateNewAlbum(long j) {
        StoriesCollections storyAlbumsList = getStoryAlbumsList(j, false);
        return storyAlbumsList != null && storyAlbumsList.canCreateNewAlbum();
    }

    public void createAlbum(long j, String str, Utilities.Callback callback) {
        getStoryAlbumsList(j).createCollection(str, callback);
    }

    public void renameAlbum(long j, int i, String str) {
        getStoryAlbumsList(j).renameCollection(i, str);
    }

    public void removeAlbum(long j, int i) {
        getStoryAlbumsList(j).removeCollection(i);
    }

    public void addStoriesToAlbum(long j, int i, ArrayList arrayList) {
        getStoryAlbumsList(j).addStories(i, arrayList);
    }

    public void addStoryToAlbum(long j, int i, TL_stories.StoryItem storyItem) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(storyItem);
        addStoriesToAlbum(j, i, arrayList);
    }

    public void removeStoriesFromAlbum(long j, int i, ArrayList arrayList) {
        getStoryAlbumsList(j).removeStories(i, arrayList);
    }

    public void removeStoryFromAlbum(long j, int i, TL_stories.StoryItem storyItem) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(storyItem);
        removeStoriesFromAlbum(j, i, arrayList);
    }

    public static class StoryAlbum {
        public int album_id;
        public TLRPC.Photo icon_photo;
        public TLRPC.Document icon_video;
        public String title;

        private StoryAlbum() {
        }

        public TL_stories.TL_storyAlbum toTl() {
            TL_stories.TL_storyAlbum tL_storyAlbum = new TL_stories.TL_storyAlbum();
            tL_storyAlbum.album_id = this.album_id;
            tL_storyAlbum.title = this.title;
            tL_storyAlbum.icon_photo = this.icon_photo;
            tL_storyAlbum.icon_video = this.icon_video;
            return tL_storyAlbum;
        }

        public static StoryAlbum from(TL_stories.TL_storyAlbum tL_storyAlbum) {
            StoryAlbum storyAlbum = new StoryAlbum();
            storyAlbum.album_id = tL_storyAlbum.album_id;
            storyAlbum.title = tL_storyAlbum.title;
            storyAlbum.icon_photo = tL_storyAlbum.icon_photo;
            storyAlbum.icon_video = tL_storyAlbum.icon_video;
            return storyAlbum;
        }
    }

    public class StoriesCollections {
        public ArrayList collections;
        public boolean creating;
        public final int currentAccount;
        public int currentRequestId;
        public final long dialogId;
        public final boolean isSelf;
        private ArrayList lastCollections;
        public boolean loaded;
        private boolean loadedCache;
        public boolean loading;

        private StoriesCollections(StoriesController storiesController, int i, long j) {
            this(i, j, true);
        }

        private StoriesCollections(int i, long j, boolean z) {
            this.lastCollections = new ArrayList();
            this.collections = new ArrayList();
            this.currentRequestId = -1;
            this.currentAccount = i;
            this.dialogId = j;
            this.isSelf = j == UserConfig.getInstance(i).getClientUserId();
            if (z) {
                load();
            }
        }

        public boolean canCreateNewAlbum() {
            return (this.isSelf || StoriesController.this.canEditStoryAlbums(this.dialogId)) && this.loaded && this.collections.size() < MessagesController.getInstance(this.currentAccount).config.storiesAlbumsLimit.get();
        }

        public void load() {
            if (this.loading || this.loaded) {
                return;
            }
            this.loading = true;
            if (!this.loadedCache) {
                MessagesStorage.getInstance(this.currentAccount).loadStoryAlbumsCache(this.dialogId, new java.util.function.Consumer() { // from class: org.telegram.ui.Stories.StoriesController$StoriesCollections$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    /* JADX INFO: renamed from: accept */
                    public final void m800v(Object obj) {
                        this.f$0.lambda$load$1((List) obj);
                    }

                    public /* synthetic */ java.util.function.Consumer andThen(java.util.function.Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                return;
            }
            TL_stories.TL_getAlbums tL_getAlbums = new TL_stories.TL_getAlbums();
            tL_getAlbums.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            this.currentRequestId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_getAlbums, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$StoriesCollections$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$3(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$1(final List list) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesCollections$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$0(list);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(List list) {
            this.collections.clear();
            this.collections.addAll(list);
            this.loadedCache = true;
            this.loading = false;
            load();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storyAlbumsCollectionsUpdate, Long.valueOf(this.dialogId), this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$3(final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesCollections$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$2(tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$2(TLObject tLObject) {
            if (tLObject instanceof TL_stories.TL_albums) {
                TL_stories.TL_albums tL_albums = (TL_stories.TL_albums) tLObject;
                ArrayList arrayList = new ArrayList(tL_albums.albums.size());
                ArrayList<TL_stories.TL_storyAlbum> arrayList2 = tL_albums.albums;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    TL_stories.TL_storyAlbum tL_storyAlbum = arrayList2.get(i);
                    i++;
                    arrayList.add(StoryAlbum.from(tL_storyAlbum));
                }
                this.collections.clear();
                this.collections.addAll(arrayList);
                this.lastCollections.clear();
                this.lastCollections.addAll(arrayList);
                this.loaded = true;
                this.loading = false;
                updateAlbumsListCache(true);
                return;
            }
            if (tLObject instanceof TL_stories.TL_albumsNotModified) {
                this.collections.clear();
                this.collections.addAll(this.lastCollections);
                this.loaded = true;
                this.loading = false;
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storyAlbumsCollectionsUpdate, Long.valueOf(this.dialogId), this);
            }
        }

        private void updateAlbumsListCache(boolean z) {
            MessagesStorage.getInstance(this.currentAccount).saveStoryAlbumsCache(this.dialogId, this.collections);
            if (z) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storyAlbumsCollectionsUpdate, Long.valueOf(this.dialogId), this);
            }
        }

        public void createCollection(String str, final Utilities.Callback callback) {
            if (this.creating) {
                return;
            }
            this.creating = true;
            TL_stories.TL_createAlbum tL_createAlbum = new TL_stories.TL_createAlbum();
            tL_createAlbum.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_createAlbum.title = str;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_createAlbum, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$StoriesCollections$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$createCollection$5(callback, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createCollection$5(final Utilities.Callback callback, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$StoriesCollections$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createCollection$4(tLObject, callback, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createCollection$4(TLObject tLObject, Utilities.Callback callback, TLRPC.TL_error tL_error) {
            BaseFragment safeLastFragment;
            this.creating = false;
            if (tLObject instanceof TL_stories.TL_storyAlbum) {
                StoryAlbum storyAlbumFrom = StoryAlbum.from((TL_stories.TL_storyAlbum) tLObject);
                this.collections.add(storyAlbumFrom);
                updateAlbumsListCache(true);
                if (callback != null) {
                    callback.run(storyAlbumFrom);
                    return;
                }
                return;
            }
            if (tL_error != null && (safeLastFragment = LaunchActivity.getSafeLastFragment()) != null) {
                BulletinFactory.of(safeLastFragment).showForError(tL_error);
            }
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.storyAlbumsCollectionsUpdate, Long.valueOf(this.dialogId), this);
        }

        public StoryAlbum findById(int i) {
            for (int i2 = 0; i2 < this.collections.size(); i2++) {
                StoryAlbum storyAlbum = (StoryAlbum) this.collections.get(i2);
                if (i == storyAlbum.album_id) {
                    return storyAlbum;
                }
            }
            return null;
        }

        public int indexOf(int i) {
            for (int i2 = 0; i2 < this.collections.size(); i2++) {
                if (i == ((StoryAlbum) this.collections.get(i2)).album_id) {
                    return i2;
                }
            }
            return -1;
        }

        public void removeCollection(int i) {
            int iIndexOf = indexOf(i);
            if (iIndexOf == -1) {
                return;
            }
            StoryAlbum storyAlbum = (StoryAlbum) this.collections.remove(iIndexOf);
            TL_stories.TL_deleteAlbum tL_deleteAlbum = new TL_stories.TL_deleteAlbum();
            tL_deleteAlbum.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_deleteAlbum.album_id = storyAlbum.album_id;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_deleteAlbum, null);
            updateAlbumsListCache(true);
        }

        public void renameCollection(int i, String str) {
            int iIndexOf = indexOf(i);
            if (iIndexOf == -1) {
                return;
            }
            ((StoryAlbum) this.collections.get(iIndexOf)).title = str;
            TL_stories.TL_updateAlbum tL_updateAlbum = new TL_stories.TL_updateAlbum();
            tL_updateAlbum.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_updateAlbum.album_id = i;
            tL_updateAlbum.title = str;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_updateAlbum, null);
            updateAlbumsListCache(true);
        }

        public void addStories(int i, ArrayList arrayList) {
            TL_stories.TL_updateAlbum tL_updateAlbum = new TL_stories.TL_updateAlbum();
            tL_updateAlbum.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_updateAlbum.album_id = i;
            tL_updateAlbum.add_stories = new ArrayList<>(arrayList.size());
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                tL_updateAlbum.add_stories.add(Integer.valueOf(((TL_stories.StoryItem) obj).id));
            }
            int size2 = arrayList.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = arrayList.get(i3);
                i3++;
                TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj2;
                ArrayList<Integer> arrayList2 = storyItem.albums;
                if (arrayList2 == null) {
                    ArrayList<Integer> arrayList3 = new ArrayList<>();
                    storyItem.albums = arrayList3;
                    arrayList3.add(Integer.valueOf(i));
                } else if (!arrayList2.contains(Integer.valueOf(i))) {
                    storyItem.albums.add(Integer.valueOf(i));
                }
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_updateAlbum, null);
            StoriesList storiesList = StoriesController.this.getStoriesList(this.dialogId, 0, i, false);
            if (storiesList != null) {
                storiesList.updateStories(arrayList, true);
            }
            ArrayList arrayList4 = this.collections;
            int size3 = arrayList4.size();
            int i4 = 0;
            while (i4 < size3) {
                Object obj3 = arrayList4.get(i4);
                i4++;
                StoriesList storiesList2 = StoriesController.this.getStoriesList(this.dialogId, 0, ((StoryAlbum) obj3).album_id, false);
                if (storiesList2 != null) {
                    storiesList2.updateStoryItemsAlbums(i, tL_updateAlbum.add_stories, false);
                }
            }
        }

        public void removeStories(int i, ArrayList arrayList) {
            TL_stories.TL_updateAlbum tL_updateAlbum = new TL_stories.TL_updateAlbum();
            tL_updateAlbum.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_updateAlbum.album_id = i;
            tL_updateAlbum.delete_stories = new ArrayList<>(arrayList.size());
            int size = arrayList.size();
            int i2 = 0;
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                tL_updateAlbum.delete_stories.add(Integer.valueOf(((TL_stories.StoryItem) obj).id));
            }
            int size2 = arrayList.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj2 = arrayList.get(i4);
                i4++;
                TL_stories.StoryItem storyItem = (TL_stories.StoryItem) obj2;
                ArrayList<Integer> arrayList2 = storyItem.albums;
                if (arrayList2 != null) {
                    arrayList2.remove(Integer.valueOf(i));
                    if (storyItem.albums.isEmpty()) {
                        storyItem.albums = null;
                    }
                }
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_updateAlbum, null);
            StoriesList storiesList = StoriesController.this.getStoriesList(this.dialogId, 0, i, false);
            if (storiesList != null) {
                storiesList.updateDeletedStories(arrayList);
            }
            ArrayList arrayList3 = this.collections;
            int size3 = arrayList3.size();
            while (i2 < size3) {
                Object obj3 = arrayList3.get(i2);
                i2++;
                StoriesList storiesList2 = StoriesController.this.getStoriesList(this.dialogId, 0, ((StoryAlbum) obj3).album_id, false);
                if (storiesList2 != null) {
                    storiesList2.updateStoryItemsAlbums(i, tL_updateAlbum.delete_stories, true);
                }
            }
        }

        public void reorderStep(ArrayList arrayList) {
            HashMap map = new HashMap();
            ArrayList arrayList2 = this.collections;
            int size = arrayList2.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                StoryAlbum storyAlbum = (StoryAlbum) obj;
                map.put(Integer.valueOf(storyAlbum.album_id), storyAlbum);
            }
            ArrayList arrayList3 = new ArrayList();
            int size2 = arrayList.size();
            while (i < size2) {
                Object obj2 = arrayList.get(i);
                i++;
                Integer num = (Integer) obj2;
                num.intValue();
                StoryAlbum storyAlbum2 = (StoryAlbum) map.get(num);
                if (storyAlbum2 != null) {
                    arrayList3.add(storyAlbum2);
                }
            }
            this.collections.clear();
            this.collections.addAll(arrayList3);
        }

        public void reorderComplete(boolean z) {
            sendOrder();
            updateAlbumsListCache(z);
        }

        public void sendOrder() {
            TL_stories.TL_reorderAlbums tL_reorderAlbums = new TL_stories.TL_reorderAlbums();
            tL_reorderAlbums.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.dialogId);
            tL_reorderAlbums.order = new ArrayList<>();
            ArrayList arrayList = this.collections;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                tL_reorderAlbums.order.add(Integer.valueOf(((StoryAlbum) obj).album_id));
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_reorderAlbums, null);
        }
    }

    public static boolean addOrRemoveStoryItemAlbum(TL_stories.StoryItem storyItem, int i, boolean z) {
        if (storyItem == null) {
            return false;
        }
        HashSet hashSet = storyItem.albums != null ? new HashSet(storyItem.albums) : new HashSet();
        Integer numValueOf = Integer.valueOf(i);
        boolean zRemove = z ? hashSet.remove(numValueOf) : hashSet.add(numValueOf);
        storyItem.albums = !hashSet.isEmpty() ? new ArrayList<>(hashSet) : null;
        return zRemove;
    }

    public void checkUnsupportedStory(final long j, final int i) {
        final String str = "223:" + j + ":" + i;
        if (this.requestingUnsupportedStories.contains(str) || this.unsupportedStoriesChecked.contains(str)) {
            return;
        }
        this.requestingUnsupportedStories.add(str);
        TL_stories.TL_stories_getStoriesByID tL_stories_getStoriesByID = new TL_stories.TL_stories_getStoriesByID();
        tL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tL_stories_getStoriesByID.id.add(Integer.valueOf(i));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda33
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$checkUnsupportedStory$38(i, str, j, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUnsupportedStory$38(final int i, final String str, final long j, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesController$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkUnsupportedStory$37(tLObject, i, str, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUnsupportedStory$37(TLObject tLObject, int i, String str, long j) {
        TL_stories.StoryItem storyItem;
        if (tLObject != null) {
            TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_stories_stories.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_stories_stories.chats, false);
            for (int i2 = 0; i2 < tL_stories_stories.stories.size(); i2++) {
                if (tL_stories_stories.stories.get(i2).id == i) {
                    storyItem = tL_stories_stories.stories.get(i2);
                    break;
                }
            }
            storyItem = null;
        } else {
            storyItem = null;
        }
        this.requestingUnsupportedStories.remove(str);
        if (storyItem != null) {
            storyItem.dialogId = j;
            TL_stories.TL_updateStory tL_updateStory = new TL_stories.TL_updateStory();
            tL_updateStory.peer = MessagesController.getInstance(this.currentAccount).getPeer(j);
            tL_updateStory.story = storyItem;
            processUpdate(tL_updateStory);
            return;
        }
        Iterator it = this.unsupportedStoriesChecked.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            if (str2.endsWith(":" + j + ":" + i)) {
                this.unsupportedStoriesChecked.remove(str2);
                break;
            }
        }
        this.unsupportedStoriesChecked.add(str);
        this.mainSettings.edit().putStringSet("unsupported_stories_checked", this.unsupportedStoriesChecked).apply();
    }
}
