package org.telegram.messenger;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.NotificationBadge;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class HashtagSearchController {
    public static final int HISTORY_LIMIT = 100;
    private static volatile HashtagSearchController[] Instance = new HashtagSearchController[16];
    private static final Object[] lockObjects = new Object[16];
    private final SearchResult channelPostsSearch;
    public final int currentAccount;
    public final ArrayList<String> history = new ArrayList<>();
    private final SharedPreferences historyPreferences;
    private final SearchResult localPostsSearch;
    private final SearchResult myMessagesSearch;

    static {
        for (int i = 0; i < 16; i++) {
            lockObjects[i] = new Object();
        }
    }

    public static HashtagSearchController getInstance(int i) {
        HashtagSearchController hashtagSearchController;
        HashtagSearchController hashtagSearchController2 = Instance[i];
        if (hashtagSearchController2 != null) {
            return hashtagSearchController2;
        }
        synchronized (lockObjects[i]) {
            try {
                hashtagSearchController = Instance[i];
                if (hashtagSearchController == null) {
                    HashtagSearchController[] hashtagSearchControllerArr = Instance;
                    HashtagSearchController hashtagSearchController3 = new HashtagSearchController(i);
                    hashtagSearchControllerArr[i] = hashtagSearchController3;
                    hashtagSearchController = hashtagSearchController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashtagSearchController;
    }

    private HashtagSearchController(int i) {
        this.currentAccount = i;
        this.myMessagesSearch = new SearchResult(i);
        this.channelPostsSearch = new SearchResult(i);
        this.localPostsSearch = new SearchResult(i);
        this.historyPreferences = ApplicationLoader.applicationContext.getSharedPreferences("hashtag_search_history" + i, 0);
        loadHistoryFromPref();
    }

    private void loadHistoryFromPref() {
        int i = this.historyPreferences.getInt(NotificationBadge.NewHtcHomeBadger.COUNT, 0);
        this.history.clear();
        this.history.ensureCapacity(i);
        for (int i2 = 0; i2 < i; i2++) {
            String string = this.historyPreferences.getString("e_" + i2, _UrlKt.FRAGMENT_ENCODE_SET);
            if (!string.startsWith("#") && !string.startsWith("$")) {
                string = "#".concat(string);
            }
            this.history.add(string);
        }
    }

    private void saveHistoryToPref() {
        SharedPreferences.Editor editorEdit = this.historyPreferences.edit();
        editorEdit.clear();
        editorEdit.putInt(NotificationBadge.NewHtcHomeBadger.COUNT, this.history.size());
        for (int i = 0; i < this.history.size(); i++) {
            editorEdit.putString("e_" + i, this.history.get(i));
        }
        editorEdit.apply();
    }

    public void putToHistory(String str) {
        if (str.startsWith("#") || str.startsWith("$")) {
            int iIndexOf = this.history.indexOf(str);
            if (iIndexOf != -1) {
                if (iIndexOf == 0) {
                    return;
                } else {
                    this.history.remove(iIndexOf);
                }
            }
            this.history.add(0, str);
            if (this.history.size() >= 100) {
                ArrayList<String> arrayList = this.history;
                arrayList.subList(99, arrayList.size()).clear();
            }
            saveHistoryToPref();
        }
    }

    public void clearHistory() {
        this.history.clear();
        saveHistoryToPref();
    }

    public void removeHashtagFromHistory(String str) {
        int iIndexOf = this.history.indexOf(str);
        if (iIndexOf != -1) {
            this.history.remove(iIndexOf);
            saveHistoryToPref();
        }
    }

    public SearchResult getSearchResult(int i) {
        if (i == 1) {
            return this.myMessagesSearch;
        }
        if (i == 2) {
            return this.channelPostsSearch;
        }
        if (i == 3) {
            return this.localPostsSearch;
        }
        GlShader$$ExternalSyntheticBUOutline1.m966m("Unknown search type");
        return null;
    }

    public ArrayList<MessageObject> getMessages(int i) {
        return getSearchResult(i).messages;
    }

    public int getCount(int i) {
        return getSearchResult(i).count;
    }

    public boolean isEndReached(int i) {
        return getSearchResult(i).endReached;
    }

    public void searchHashtag(String str, final int i, final int i2, final int i3) {
        final String str2;
        final String str3;
        String strSubstring;
        TLObject tLObject;
        final SearchResult searchResult = getSearchResult(i2);
        if (searchResult.lastHashtag == null && str == null) {
            return;
        }
        if (str == null || !str.isEmpty()) {
            String str4 = searchResult.lastHashtag;
            if (str == null) {
                str2 = str4;
            } else {
                if (!TextUtils.equals(str, str4)) {
                    searchResult.clear();
                } else if (searchResult.loading) {
                    return;
                }
                str2 = str;
            }
            searchResult.lastHashtag = str2;
            int iIndexOf = str2.indexOf(64);
            TLObject userOrChat = null;
            if (iIndexOf >= 0) {
                String strSubstring2 = str2.substring(iIndexOf + 1);
                strSubstring = str2.substring(0, iIndexOf);
                str3 = strSubstring2;
            } else {
                str3 = null;
                strSubstring = str2;
            }
            searchResult.loading = true;
            if (!TextUtils.isEmpty(str3) && (userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(str3)) == null) {
                Runnable runnableResolve = MessagesController.getInstance(this.currentAccount).getUserNameResolver().resolve(str3, new Consumer() { // from class: org.telegram.messenger.HashtagSearchController$$ExternalSyntheticLambda0
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$searchHashtag$0(searchResult, str2, str3, runnableArr, i, i2, i3, (Long) obj);
                    }
                });
                searchResult.cancel = runnableResolve;
                final Runnable[] runnableArr = {runnableResolve};
                return;
            }
            final int i4 = 21;
            if (i2 == 1) {
                TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal = new TLRPC.TL_messages_searchGlobal();
                tL_messages_searchGlobal.limit = 21;
                tL_messages_searchGlobal.f873q = str2;
                tL_messages_searchGlobal.filter = new TLRPC.TL_inputMessagesFilterEmpty();
                tL_messages_searchGlobal.offset_peer = new TLRPC.TL_inputPeerEmpty();
                tLObject = tL_messages_searchGlobal;
                if (searchResult.lastOffsetPeer != null) {
                    tL_messages_searchGlobal.offset_rate = searchResult.lastOffsetRate;
                    tL_messages_searchGlobal.offset_id = searchResult.lastOffsetId;
                    tL_messages_searchGlobal.offset_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(searchResult.lastOffsetPeer);
                    tLObject = tL_messages_searchGlobal;
                }
            } else if (userOrChat != null) {
                TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterEmpty();
                tL_messages_search.peer = MessagesController.getInputPeer(userOrChat);
                tL_messages_search.f871q = strSubstring;
                tL_messages_search.limit = 21;
                int i5 = searchResult.lastOffsetId;
                if (i5 != 0) {
                    tL_messages_search.offset_id = i5;
                }
                tLObject = tL_messages_search;
            } else {
                TLRPC.TL_channels_searchPosts tL_channels_searchPosts = new TLRPC.TL_channels_searchPosts();
                tL_channels_searchPosts.flags |= 1;
                tL_channels_searchPosts.hashtag = str2;
                tL_channels_searchPosts.limit = 21;
                tL_channels_searchPosts.offset_peer = new TLRPC.TL_inputPeerEmpty();
                tLObject = tL_channels_searchPosts;
                if (searchResult.lastOffsetPeer != null) {
                    tL_channels_searchPosts.offset_rate = searchResult.lastOffsetRate;
                    tL_channels_searchPosts.offset_id = searchResult.lastOffsetId;
                    tL_channels_searchPosts.offset_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(searchResult.lastOffsetPeer);
                    tLObject = tL_channels_searchPosts;
                }
            }
            int iSendRequest = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.HashtagSearchController$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$searchHashtag$2(i2, str2, iArr, searchResult, i4, i, i3, tLObject2, tL_error);
                }
            });
            searchResult.reqId = iSendRequest;
            final int[] iArr = {iSendRequest};
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchHashtag$0(SearchResult searchResult, String str, String str2, Runnable[] runnableArr, int i, int i2, int i3, Long l) {
        if (TextUtils.equals(searchResult.lastHashtag, str)) {
            if (MessagesController.getInstance(this.currentAccount).getUserOrChat(str2) == null) {
                if (runnableArr[0] == searchResult.cancel) {
                    searchResult.cancel = null;
                    searchResult.loading = false;
                    searchResult.endReached = true;
                    searchResult.count = 0;
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.hashtagSearchUpdated, Integer.valueOf(i), Integer.valueOf(searchResult.count), Boolean.valueOf(searchResult.endReached), Integer.valueOf(searchResult.getMask()), Integer.valueOf(searchResult.selectedIndex), 0);
                    return;
                }
                return;
            }
            searchHashtag(str, i, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchHashtag$2(final int i, String str, final int[] iArr, final SearchResult searchResult, final int i2, final int i3, final int i4, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.messages_Messages) {
            final TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            final ArrayList arrayList = new ArrayList();
            ArrayList<TLRPC.Message> arrayList2 = messages_messages.messages;
            int size = arrayList2.size();
            int i5 = 0;
            final int i6 = 0;
            while (i5 < size) {
                TLRPC.Message message = arrayList2.get(i5);
                i5++;
                TLRPC.Message message2 = message;
                if (ChatUtils.hasRestrictionReason(message2.restriction_reason, "terms")) {
                    i6++;
                } else {
                    MessageObject messageObject = new MessageObject(this.currentAccount, message2, null, null, null, null, null, true, true, 0L, false, false, false, i);
                    if (messageObject.hasValidGroupId()) {
                        messageObject.isPrimaryGroupMessage = true;
                    }
                    messageObject.setQuery(str, false);
                    arrayList.add(messageObject);
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.HashtagSearchController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchHashtag$1(iArr, searchResult, i6, messages_messages, arrayList, i2, i3, i, i4);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchHashtag$1(int[] iArr, SearchResult searchResult, int i, TLRPC.messages_Messages messages_messages, ArrayList arrayList, int i2, int i3, int i4, int i5) {
        if (iArr[0] == searchResult.reqId) {
            searchResult.reqId = -1;
            searchResult.loading = false;
            if (searchResult.lastOffsetId == 0 && searchResult.messages.isEmpty()) {
                searchResult.filteredCount = 0;
            }
            searchResult.filteredCount += i;
            searchResult.lastOffsetRate = messages_messages.next_rate;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                MessageObject messageObject = (MessageObject) obj;
                MessageCompositeID messageCompositeID = new MessageCompositeID(messageObject.messageOwner);
                Integer numValueOf = searchResult.generatedIds.get(messageCompositeID);
                if (numValueOf == null) {
                    int i7 = searchResult.lastGeneratedId;
                    searchResult.lastGeneratedId = i7 - 1;
                    numValueOf = Integer.valueOf(i7);
                    searchResult.generatedIds.put(messageCompositeID, numValueOf);
                    searchResult.messages.add(messageObject);
                }
                TLRPC.Message message = messageObject.messageOwner;
                message.realId = message.id;
                message.id = numValueOf.intValue();
            }
            if (!messages_messages.messages.isEmpty()) {
                ArrayList<TLRPC.Message> arrayList2 = messages_messages.messages;
                TLRPC.Message message2 = arrayList2.get(arrayList2.size() - 1);
                int i8 = message2.realId;
                if (i8 == 0) {
                    i8 = message2.id;
                }
                searchResult.lastOffsetId = i8;
                searchResult.lastOffsetPeer = message2.peer_id;
            }
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
            MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
            searchResult.endReached = messages_messages.messages.size() < i2;
            searchResult.count = Math.max(Math.max(messages_messages.count - searchResult.filteredCount, 0), searchResult.messages.size());
            if (arrayList.isEmpty() && !searchResult.endReached) {
                searchHashtag(null, i3, i4, i5);
            } else {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messagesDidLoad, 0L, Integer.valueOf(arrayList.size()), arrayList, Boolean.FALSE, 0, 0, 0, 0, 2, Boolean.TRUE, Integer.valueOf(i3), Integer.valueOf(i5), 0, 0, 7);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.hashtagSearchUpdated, Integer.valueOf(i3), Integer.valueOf(searchResult.count), Boolean.valueOf(searchResult.endReached), Integer.valueOf(searchResult.getMask()), Integer.valueOf(searchResult.selectedIndex), 0);
            }
        }
    }

    public void jumpToMessage(int i, int i2, int i3) {
        SearchResult searchResult = getSearchResult(i3);
        if (i2 < 0 || i2 >= searchResult.messages.size()) {
            return;
        }
        searchResult.selectedIndex = i2;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.hashtagSearchUpdated, Integer.valueOf(i), Integer.valueOf(searchResult.count), Boolean.valueOf(searchResult.endReached), Integer.valueOf(searchResult.getMask()), Integer.valueOf(searchResult.selectedIndex), Integer.valueOf(searchResult.messages.get(i2).messageOwner.id));
    }

    public void clearSearchResults() {
        this.myMessagesSearch.clear();
        this.channelPostsSearch.clear();
    }

    public void clearSearchResults(int i) {
        getSearchResult(i).clear();
    }

    public static final class MessageCompositeID {
        final long dialog_id;
        final int id;

        public MessageCompositeID(TLRPC.Message message) {
            this(MessageObject.getDialogId(message), message.id);
        }

        public MessageCompositeID(long j, int i) {
            this.dialog_id = j;
            this.id = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && MessageCompositeID.class == obj.getClass()) {
                MessageCompositeID messageCompositeID = (MessageCompositeID) obj;
                if (this.dialog_id == messageCompositeID.dialog_id && this.id == messageCompositeID.id) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.dialog_id), Integer.valueOf(this.id));
        }
    }

    public static class SearchResult {
        public Runnable cancel;
        public int count;
        private final int currentAccount;
        public boolean endReached;
        public int filteredCount;
        public String lastHashtag;
        public int lastOffsetId;
        public TLRPC.Peer lastOffsetPeer;
        public int lastOffsetRate;
        public boolean loading;
        public int selectedIndex;
        public final ArrayList<MessageObject> messages = new ArrayList<>();
        public final HashMap<MessageCompositeID, Integer> generatedIds = new HashMap<>();
        public int reqId = -1;
        public int lastGeneratedId = Integer.MAX_VALUE;

        public SearchResult(int i) {
            this.currentAccount = i;
        }

        public int getMask() {
            int i = this.selectedIndex >= this.messages.size() - 1 ? 0 : 1;
            return this.selectedIndex > 0 ? i | 2 : i;
        }

        public void clear() {
            if (this.reqId >= 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = -1;
            }
            Runnable runnable = this.cancel;
            if (runnable != null) {
                runnable.run();
                this.cancel = null;
            }
            this.messages.clear();
            this.generatedIds.clear();
            this.lastOffsetRate = 0;
            this.lastOffsetId = 0;
            this.lastOffsetPeer = null;
            this.lastGeneratedId = 2147483637;
            this.lastHashtag = null;
            this.selectedIndex = 0;
            this.count = 0;
            this.filteredCount = 0;
            this.endReached = false;
        }
    }
}
