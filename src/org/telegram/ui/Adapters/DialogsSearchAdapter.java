package org.telegram.ui.Adapters;

import android.content.Context;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.rop.code.RegisterSpec;
import com.exteragram.messenger.utils.network.RemoteUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.DialogsSearchAdapter;
import org.telegram.ui.Adapters.FiltersView;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.HashtagSearchCell;
import org.telegram.ui.Cells.HintDialogCell;
import org.telegram.ui.Cells.ProfileSearchCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TopicSearchCell;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.ForegroundColorSpanThemable;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.FilteredSearchView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DialogsSearchAdapter extends RecyclerListView.SelectionAdapter {
    private Runnable cancelShowMoreAnimation;
    private int currentItemCount;
    private String currentMessagesQuery;
    public DialogsSearchAdapterDelegate delegate;
    private final DialogsActivity dialogsActivity;
    private int dialogsType;
    private ColoredImageSpan filterArrowsIcon;
    private ArrayList<Long> filterDialogIds;
    private FilteredSearchView.Delegate filtersDelegate;
    private int folderId;
    private boolean forceLoadingMessages;
    private RecyclerListView innerListView;
    private DefaultItemAnimator itemAnimator;
    private int lastForumReqId;
    private int lastGlobalSearchId;
    private int lastLocalSearchId;
    private int lastMessagesSearchFilterFlags;
    private int lastMessagesSearchId;
    private String lastMessagesSearchString;
    private int lastReqId;
    private int lastSearchId;
    private String lastSearchText;
    private long lastShowMoreUpdate;
    private boolean localMessagesSearchEndReached;
    private boolean localTipArchive;
    private final Context mContext;
    private EmptyLayout messagesEmptyLayout;
    private boolean messagesSearchEndReached;
    private int needMessagesSearch;
    private int nextSearchRate;
    public String publicPostsHashtag;
    public int publicPostsLastRate;
    public int publicPostsTotalCount;
    private final Theme.ResourcesProvider resourcesProvider;
    private SearchAdapterHelper searchAdapterHelper;
    private Runnable searchHashtagRunnable;
    private Runnable searchRunnable;
    private Runnable searchRunnable2;
    private boolean searchWas;
    private long selfUserId;
    public View showMoreHeader;
    private String sponsoredQuery;
    private int sponsoredReqId;
    int waitingResponseCount;
    private Filter currentMessagesFilter = Filter.All;
    private int searchHashtagRequest = -1;
    private ArrayList<Object> searchResult = new ArrayList<>();
    public ArrayList<MessageObject> publicPosts = new ArrayList<>();
    private final ArrayList<ContactsController.Contact> searchContacts = new ArrayList<>();
    private final ArrayList<TLRPC.TL_forumTopic> searchTopics = new ArrayList<>();
    private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
    private final ArrayList<MessageObject> searchForumResultMessages = new ArrayList<>();
    private final ArrayList<MessageObject> searchResultMessages = new ArrayList<>();
    private final ArrayList<String> searchResultHashtags = new ArrayList<>();
    public final ArrayList<TLRPC.TL_sponsoredPeer> sponsoredPeers = new ArrayList<>();
    private final HashSet<byte[]> seenSponsoredPeers = new HashSet<>();
    private int reqId = 0;
    private int reqForumId = 0;
    public int localMessagesLoadingRow = -1;
    public boolean showMoreAnimation = false;
    private int currentAccount = UserConfig.selectedAccount;
    private ArrayList<RecentSearchObject> recentSearchObjects = new ArrayList<>();
    private final ArrayList<RecentSearchObject> filteredRecentSearchObjects = new ArrayList<>();
    private final ArrayList<RecentSearchObject> filtered2RecentSearchObjects = new ArrayList<>();
    private String filteredRecentQuery = null;
    private LongSparseArray<RecentSearchObject> recentSearchObjectsById = new LongSparseArray<>();
    private ArrayList<FiltersView.DateData> localTipDates = new ArrayList<>();
    private int messagesSectionPosition = -1;
    boolean globalSearchCollapsed = true;
    boolean phoneCollapsed = true;

    /* JADX INFO: loaded from: classes4.dex */
    public static class DialogSearchResult {
        public int date;
        public CharSequence name;
        public TLObject object;
    }

    public interface DialogsSearchAdapterDelegate {
        void didPressedBlockedDialog(View view, long j);

        void didPressedOnSubDialog(long j);

        long getSearchForumDialogId();

        boolean isSelected(long j);

        void needClearList();

        void needRemoveHint(long j);

        void runResultsEnterAnimation();

        void searchStateChanged(boolean z, boolean z2);
    }

    public interface OnRecentSearchLoaded {
        void setRecentSearch(ArrayList<RecentSearchObject> arrayList, LongSparseArray<RecentSearchObject> longSparseArray);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class RecentSearchObject {
        public int date;
        public long did;
        public TLObject object;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public abstract void openBotApp(TLRPC.User user);

    public abstract void openPublicPosts();

    public abstract void openSponsoredOptions(ProfileSearchCell profileSearchCell, TLRPC.TL_sponsoredPeer tL_sponsoredPeer);

    public enum Filter {
        All(0, C2807R.string.SearchMessagesFilterAll, C2807R.string.SearchMessagesFilterAllFrom),
        Private(8, C2807R.string.SearchMessagesFilterPrivate, C2807R.string.SearchMessagesFilterPrivateFrom),
        Groups(4, C2807R.string.SearchMessagesFilterGroup, C2807R.string.SearchMessagesFilterGroupFrom),
        Channels(2, C2807R.string.SearchMessagesFilterChannels, C2807R.string.SearchMessagesFilterChannelsFrom);

        public final int flags;
        public final int strFromResId;
        public final int strResId;

        Filter(int i, int i2, int i3) {
            this.flags = i;
            this.strResId = i2;
            this.strFromResId = i3;
        }
    }

    public void resetFilter() {
        this.currentMessagesFilter = Filter.All;
    }

    public void setFilterDialogIds(ArrayList<Long> arrayList) {
        this.filterDialogIds = arrayList;
    }

    public boolean isSearching() {
        return this.waitingResponseCount > 0;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class CategoryAdapterRecycler extends RecyclerListView.SelectionAdapter {
        private final int currentAccount;
        private boolean drawChecked;
        private final Context mContext;
        private Theme.ResourcesProvider resourcesProvider;
        private boolean showPremiumBlock;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public CategoryAdapterRecycler(Context context, int i, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
            this.drawChecked = z;
            this.mContext = context;
            this.currentAccount = i;
            this.showPremiumBlock = z2;
            this.resourcesProvider = resourcesProvider;
        }

        public void setIndex(int i) {
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            HintDialogCell hintDialogCell = new HintDialogCell(this.mContext, this.drawChecked, this.resourcesProvider);
            if (this.showPremiumBlock) {
                hintDialogCell.showPremiumBlocked();
            }
            hintDialogCell.setLayoutParams(new RecyclerView.LayoutParams(AndroidUtilities.dp(80.0f), AndroidUtilities.dp(86.0f)));
            return new RecyclerListView.Holder(hintDialogCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TLRPC.Chat chat;
            String monoForumTitle;
            HintDialogCell hintDialogCell = (HintDialogCell) viewHolder.itemView;
            TLRPC.TL_topPeer tL_topPeer = MediaDataController.getInstance(this.currentAccount).hints.get(i);
            new TLRPC.TL_dialog();
            TLRPC.Peer peer = tL_topPeer.peer;
            long j = peer.user_id;
            TLRPC.User user = null;
            if (j != 0) {
                user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_topPeer.peer.user_id));
                chat = null;
            } else {
                long j2 = peer.channel_id;
                if (j2 != 0) {
                    j = -j2;
                    chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tL_topPeer.peer.channel_id));
                } else {
                    long j3 = peer.chat_id;
                    if (j3 != 0) {
                        j = -j3;
                        chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(tL_topPeer.peer.chat_id));
                    } else {
                        j = 0;
                        chat = null;
                    }
                }
            }
            hintDialogCell.setTag(Long.valueOf(j));
            if (user != null) {
                monoForumTitle = UserObject.getFirstName(user);
            } else if (chat == null) {
                monoForumTitle = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                monoForumTitle = chat.monoforum ? ForumUtilities.getMonoForumTitle(this.currentAccount, chat) : chat.title;
            }
            hintDialogCell.setDialog(j, true, monoForumTitle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return MediaDataController.getInstance(this.currentAccount).hints.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean filter(Object obj) {
        if (searchesGlobalChannels()) {
            return (obj instanceof TLRPC.Chat) && ChatObject.isChannelAndNotMegaGroup((TLRPC.Chat) obj);
        }
        if (this.dialogsType != 14) {
            return true;
        }
        if (obj instanceof TLRPC.User) {
            boolean z = ((TLRPC.User) obj).bot;
            DialogsActivity dialogsActivity = this.dialogsActivity;
            if (z) {
                return dialogsActivity.allowBots;
            }
            return dialogsActivity.allowUsers;
        }
        if (!(obj instanceof TLRPC.Chat)) {
            return false;
        }
        TLRPC.Chat chat = (TLRPC.Chat) obj;
        if (ChatObject.isChannel(chat)) {
            return this.dialogsActivity.allowChannels;
        }
        boolean zIsMegagroup = ChatObject.isMegagroup(chat);
        DialogsActivity dialogsActivity2 = this.dialogsActivity;
        return zIsMegagroup ? dialogsActivity2.allowGroups || dialogsActivity2.allowMegagroups : dialogsActivity2.allowGroups || dialogsActivity2.allowLegacyGroups;
    }

    private boolean searchesGlobalChannels() {
        DialogsActivity dialogsActivity;
        return this.dialogsType == 5 && (dialogsActivity = this.dialogsActivity) != null && dialogsActivity.searchGlobalChannels;
    }

    public DialogsSearchAdapter(Context context, DialogsActivity dialogsActivity, int i, int i2, DefaultItemAnimator defaultItemAnimator, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this.itemAnimator = defaultItemAnimator;
        this.dialogsActivity = dialogsActivity;
        this.resourcesProvider = resourcesProvider;
        SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(false) { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter.1
            @Override // org.telegram.ui.Adapters.SearchAdapterHelper
            public boolean filter(TLObject tLObject) {
                return DialogsSearchAdapter.this.filter(tLObject);
            }
        };
        this.searchAdapterHelper = searchAdapterHelper;
        searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter.2
            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public void onDataSetChanged(int i3) {
                DialogsSearchAdapter dialogsSearchAdapter = DialogsSearchAdapter.this;
                dialogsSearchAdapter.waitingResponseCount--;
                dialogsSearchAdapter.lastGlobalSearchId = i3;
                if (DialogsSearchAdapter.this.lastLocalSearchId != i3) {
                    DialogsSearchAdapter.this.searchResult.clear();
                }
                if (DialogsSearchAdapter.this.lastMessagesSearchId != i3) {
                    DialogsSearchAdapter.this.searchResultMessages.clear();
                }
                DialogsSearchAdapter.this.searchWas = true;
                DialogsSearchAdapter dialogsSearchAdapter2 = DialogsSearchAdapter.this;
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = dialogsSearchAdapter2.delegate;
                if (dialogsSearchAdapterDelegate != null) {
                    dialogsSearchAdapterDelegate.searchStateChanged(dialogsSearchAdapter2.waitingResponseCount > 0, true);
                }
                DialogsSearchAdapter.this.notifyDataSetChanged();
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate2 = DialogsSearchAdapter.this.delegate;
                if (dialogsSearchAdapterDelegate2 != null) {
                    dialogsSearchAdapterDelegate2.runResultsEnterAnimation();
                }
            }

            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public void onSetHashtags(ArrayList<SearchAdapterHelper.HashtagObject> arrayList, HashMap<String, SearchAdapterHelper.HashtagObject> map) {
                DialogsSearchAdapter dialogsSearchAdapter;
                int i3 = 0;
                while (true) {
                    int size = arrayList.size();
                    dialogsSearchAdapter = DialogsSearchAdapter.this;
                    if (i3 >= size) {
                        break;
                    }
                    dialogsSearchAdapter.searchResultHashtags.add(arrayList.get(i3).hashtag);
                    i3++;
                }
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = dialogsSearchAdapter.delegate;
                if (dialogsSearchAdapterDelegate != null) {
                    dialogsSearchAdapterDelegate.searchStateChanged(dialogsSearchAdapter.waitingResponseCount > 0, false);
                }
                DialogsSearchAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public boolean canApplySearchResults(int i3) {
                return i3 == DialogsSearchAdapter.this.lastSearchId;
            }
        });
        this.searchAdapterHelper.setAllowGlobalResults(z);
        this.mContext = context;
        this.needMessagesSearch = i;
        this.dialogsType = i2;
        this.selfUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        loadRecentSearch();
        MediaDataController.getInstance(this.currentAccount).loadHints(true);
    }

    public RecyclerListView getInnerListView() {
        return this.innerListView;
    }

    public void setDelegate(DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate) {
        this.delegate = dialogsSearchAdapterDelegate;
    }

    public boolean isMessagesSearchEndReached() {
        return (this.delegate.getSearchForumDialogId() == 0 || this.localMessagesSearchEndReached) && this.messagesSearchEndReached;
    }

    public void loadMoreSearchMessages() {
        if ((this.reqForumId == 0 || this.reqId == 0) && this.lastMessagesSearchId == this.lastSearchId) {
            DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
            if (dialogsSearchAdapterDelegate != null && dialogsSearchAdapterDelegate.getSearchForumDialogId() != 0 && !this.localMessagesSearchEndReached) {
                searchForumMessagesInternal(this.lastMessagesSearchString, this.lastMessagesSearchId);
            } else {
                searchMessagesInternal(this.lastMessagesSearchString, this.lastMessagesSearchId);
            }
        }
    }

    public String getLastSearchString() {
        return this.lastMessagesSearchString;
    }

    private void searchForumMessagesInternal(final String str, final int i) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate == null || dialogsSearchAdapterDelegate.getSearchForumDialogId() == 0 || this.needMessagesSearch == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.lastMessagesSearchString) && TextUtils.isEmpty(str)) {
            return;
        }
        if (this.reqForumId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqForumId, true);
            this.reqForumId = 0;
        }
        if (TextUtils.isEmpty(str)) {
            this.filteredRecentQuery = null;
            this.searchResultMessages.clear();
            this.searchForumResultMessages.clear();
            this.lastForumReqId = 0;
            this.lastMessagesSearchString = null;
            this.searchWas = false;
            notifyDataSetChanged();
            return;
        }
        if (this.dialogsType == 15) {
            return;
        }
        long searchForumDialogId = this.delegate.getSearchForumDialogId();
        final TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
        tL_messages_search.limit = 20;
        tL_messages_search.f1032q = str;
        tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterEmpty();
        tL_messages_search.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(searchForumDialogId);
        if (str.equals(this.lastMessagesSearchString) && !this.searchForumResultMessages.isEmpty()) {
            tL_messages_search.add_offset = this.searchForumResultMessages.size();
        }
        this.lastMessagesSearchString = str;
        final int i2 = this.lastForumReqId + 1;
        this.lastForumReqId = i2;
        this.reqForumId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda28
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$searchForumMessagesInternal$1(str, i2, i, tL_messages_search, tLObject, tL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchForumMessagesInternal$1(final String str, final int i, final int i2, final TLRPC.TL_messages_search tL_messages_search, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        final ArrayList arrayList = new ArrayList();
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            LongSparseArray longSparseArray = new LongSparseArray();
            LongSparseArray longSparseArray2 = new LongSparseArray();
            for (int i3 = 0; i3 < messages_messages.chats.size(); i3++) {
                TLRPC.Chat chat = messages_messages.chats.get(i3);
                longSparseArray.put(chat.id, chat);
            }
            for (int i4 = 0; i4 < messages_messages.users.size(); i4++) {
                TLRPC.User user = messages_messages.users.get(i4);
                longSparseArray2.put(user.id, user);
            }
            for (int i5 = 0; i5 < messages_messages.messages.size(); i5++) {
                MessageObject messageObject = new MessageObject(this.currentAccount, messages_messages.messages.get(i5), (LongSparseArray<TLRPC.User>) longSparseArray2, (LongSparseArray<TLRPC.Chat>) longSparseArray, false, true);
                arrayList.add(messageObject);
                messageObject.setQuery(str);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchForumMessagesInternal$0(i, i2, tL_error, str, tLObject, tL_messages_search, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchForumMessagesInternal$0(int i, int i2, TLRPC.TL_error tL_error, String str, TLObject tLObject, TLRPC.TL_messages_search tL_messages_search, ArrayList arrayList) {
        if (i == this.lastForumReqId && (i2 <= 0 || i2 == this.lastSearchId)) {
            this.waitingResponseCount--;
            if (tL_error == null) {
                this.currentMessagesQuery = str;
                TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
                if (tL_messages_search.add_offset == 0) {
                    this.searchForumResultMessages.clear();
                }
                this.nextSearchRate = messages_messages.next_rate;
                for (int i3 = 0; i3 < messages_messages.messages.size(); i3++) {
                    TLRPC.Message message = messages_messages.messages.get(i3);
                    int i4 = MessagesController.getInstance(this.currentAccount).deletedHistory.get(MessageObject.getDialogId(message));
                    if (i4 == 0 || message.id > i4) {
                        this.searchForumResultMessages.add((MessageObject) arrayList.get(i3));
                    }
                }
                this.searchWas = true;
                this.localMessagesSearchEndReached = messages_messages.messages.size() != 20;
                if (i2 > 0) {
                    this.lastMessagesSearchId = i2;
                    if (this.lastLocalSearchId != i2) {
                        this.searchResult.clear();
                    }
                    if (this.lastGlobalSearchId != i2) {
                        this.searchAdapterHelper.clear();
                    }
                }
                this.searchAdapterHelper.mergeResults(this.searchResult, this.filtered2RecentSearchObjects);
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
                if (dialogsSearchAdapterDelegate != null) {
                    dialogsSearchAdapterDelegate.searchStateChanged(this.waitingResponseCount > 0, true);
                    this.delegate.runResultsEnterAnimation();
                }
                notifyDataSetChanged();
            }
        }
        this.reqForumId = 0;
    }

    private void searchTopics(String str) {
        this.searchTopics.clear();
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate == null || dialogsSearchAdapterDelegate.getSearchForumDialogId() == 0) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            ArrayList<TLRPC.TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(-this.delegate.getSearchForumDialogId());
            String strTrim = str.trim();
            for (int i = 0; i < topics.size(); i++) {
                if (topics.get(i) != null && topics.get(i).title.toLowerCase().contains(strTrim)) {
                    this.searchTopics.add(topics.get(i));
                    topics.get(i).searchQuery = strTrim;
                }
            }
        }
        notifyDataSetChanged();
    }

    private void searchMessagesInternal(final String str, final int i) {
        if (this.needMessagesSearch != 0) {
            if (TextUtils.isEmpty(this.lastMessagesSearchString) && TextUtils.isEmpty(str)) {
                return;
            }
            if (this.reqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = 0;
            }
            if (TextUtils.isEmpty(str) || this.delegate.getSearchForumDialogId() != 0) {
                this.filteredRecentQuery = null;
                this.searchResultMessages.clear();
                this.searchForumResultMessages.clear();
                this.lastReqId = 0;
                this.lastMessagesSearchString = null;
                this.lastMessagesSearchFilterFlags = 0;
                this.searchWas = false;
                notifyDataSetChanged();
                return;
            }
            filterRecent(str);
            this.searchAdapterHelper.mergeResults(this.searchResult, this.filtered2RecentSearchObjects);
            if (this.dialogsType == 15) {
                int i2 = this.waitingResponseCount - 1;
                this.waitingResponseCount = i2;
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
                if (dialogsSearchAdapterDelegate != null) {
                    dialogsSearchAdapterDelegate.searchStateChanged(i2 > 0, true);
                    this.delegate.runResultsEnterAnimation();
                    return;
                }
                return;
            }
            final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal = new TLRPC.TL_messages_searchGlobal();
            int i3 = this.currentMessagesFilter.flags;
            tL_messages_searchGlobal.broadcasts_only = (i3 & 2) != 0;
            tL_messages_searchGlobal.groups_only = (i3 & 4) != 0;
            tL_messages_searchGlobal.users_only = (i3 & 8) != 0;
            tL_messages_searchGlobal.limit = 20;
            tL_messages_searchGlobal.f1034q = str;
            tL_messages_searchGlobal.filter = new TLRPC.TL_inputMessagesFilterEmpty();
            int i4 = this.folderId;
            if (i4 != 0) {
                tL_messages_searchGlobal.flags |= 1;
                tL_messages_searchGlobal.folder_id = i4;
            }
            if (!str.equals(this.lastMessagesSearchString)) {
                this.forceLoadingMessages = false;
            }
            if (str.equals(this.lastMessagesSearchString) && this.lastMessagesSearchFilterFlags == this.currentMessagesFilter.flags && !this.searchResultMessages.isEmpty() && this.lastMessagesSearchId == this.lastSearchId) {
                ArrayList<MessageObject> arrayList = this.searchResultMessages;
                MessageObject messageObject = arrayList.get(arrayList.size() - 1);
                tL_messages_searchGlobal.offset_id = messageObject.getId();
                tL_messages_searchGlobal.offset_rate = this.nextSearchRate;
                tL_messages_searchGlobal.offset_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(MessageObject.getPeerId(messageObject.messageOwner.peer_id));
            } else {
                tL_messages_searchGlobal.offset_rate = 0;
                tL_messages_searchGlobal.offset_id = 0;
                tL_messages_searchGlobal.offset_peer = new TLRPC.TL_inputPeerEmpty();
            }
            this.lastMessagesSearchString = str;
            this.lastMessagesSearchFilterFlags = this.currentMessagesFilter.flags;
            final int i5 = this.lastReqId + 1;
            this.lastReqId = i5;
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_searchGlobal, new RequestDelegate() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda29
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$searchMessagesInternal$4(str, i5, i, tL_messages_searchGlobal, tLObject, tL_error);
                }
            }, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInternal$4(final String str, final int i, final int i2, final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        final ArrayList arrayList = new ArrayList();
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            LongSparseArray longSparseArray = new LongSparseArray();
            LongSparseArray longSparseArray2 = new LongSparseArray();
            for (int i3 = 0; i3 < messages_messages.chats.size(); i3++) {
                TLRPC.Chat chat = messages_messages.chats.get(i3);
                longSparseArray.put(chat.id, chat);
            }
            for (int i4 = 0; i4 < messages_messages.users.size(); i4++) {
                TLRPC.User user = messages_messages.users.get(i4);
                longSparseArray2.put(user.id, user);
            }
            for (int i5 = 0; i5 < messages_messages.messages.size(); i5++) {
                MessageObject messageObject = new MessageObject(this.currentAccount, messages_messages.messages.get(i5), (LongSparseArray<TLRPC.User>) longSparseArray2, (LongSparseArray<TLRPC.Chat>) longSparseArray, false, true);
                arrayList.add(messageObject);
                messageObject.setQuery(str);
            }
        }
        final HashSet hashSet = new HashSet();
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages2 = (TLRPC.messages_Messages) tLObject;
            for (int i6 = 0; i6 < messages_messages2.messages.size(); i6++) {
                TLRPC.Message message = messages_messages2.messages.get(i6);
                long dialogId = MessageObject.getDialogId(message);
                boolean z = message.out;
                int i7 = this.currentAccount;
                if ((z ? MessagesController.getInstance(i7).dialogs_read_outbox_max : MessagesController.getInstance(i7).dialogs_read_inbox_max).get(Long.valueOf(dialogId)) == null) {
                    hashSet.add(new Pair(Boolean.valueOf(message.out), Long.valueOf(dialogId)));
                }
            }
        }
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchMessagesInternal$2(i, i2, tL_error, str, tLObject, tL_messages_searchGlobal, arrayList);
            }
        };
        if (hashSet.isEmpty()) {
            AndroidUtilities.runOnUIThread(runnable);
        } else {
            MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchMessagesInternal$3(hashSet, runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$searchMessagesInternal$2(int i, int i2, TLRPC.TL_error tL_error, String str, TLObject tLObject, TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal, ArrayList arrayList) {
        Integer num;
        int i3;
        if (i == this.lastReqId && (i2 <= 0 || i2 == this.lastSearchId)) {
            this.waitingResponseCount--;
            if (tL_error == null) {
                this.currentMessagesQuery = str;
                TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
                if (tL_messages_searchGlobal.offset_id == 0) {
                    this.searchResultMessages.clear();
                }
                this.nextSearchRate = messages_messages.next_rate;
                for (int i4 = 0; i4 < messages_messages.messages.size(); i4++) {
                    TLRPC.Message message = messages_messages.messages.get(i4);
                    int i5 = MessagesController.getInstance(this.currentAccount).deletedHistory.get(MessageObject.getDialogId(message));
                    if (i5 == 0 || message.id > i5) {
                        MessageObject messageObject = (MessageObject) arrayList.get(i4);
                        if (!this.searchForumResultMessages.isEmpty()) {
                            for (0; i3 < this.searchForumResultMessages.size(); i3 + 1) {
                                MessageObject messageObject2 = this.searchForumResultMessages.get(i3);
                                i3 = (messageObject2 == null || messageObject == null || messageObject.getId() != messageObject2.getId() || messageObject.getDialogId() != messageObject2.getDialogId()) ? i3 + 1 : 0;
                            }
                            this.searchResultMessages.add(messageObject);
                            long dialogId = MessageObject.getDialogId(message);
                            boolean z = message.out;
                            int i6 = this.currentAccount;
                            num = (!z ? MessagesController.getInstance(i6).dialogs_read_outbox_max : MessagesController.getInstance(i6).dialogs_read_inbox_max).get(Long.valueOf(dialogId));
                            if (num != null) {
                                message.unread = num.intValue() < message.id;
                            }
                        } else {
                            this.searchResultMessages.add(messageObject);
                            long dialogId2 = MessageObject.getDialogId(message);
                            boolean z2 = message.out;
                            int i62 = this.currentAccount;
                            num = (!z2 ? MessagesController.getInstance(i62).dialogs_read_outbox_max : MessagesController.getInstance(i62).dialogs_read_inbox_max).get(Long.valueOf(dialogId2));
                            if (num != null) {
                            }
                        }
                    }
                }
                this.searchWas = true;
                this.messagesSearchEndReached = messages_messages.messages.size() != 20;
                if (i2 > 0) {
                    this.lastMessagesSearchId = i2;
                    if (this.lastLocalSearchId != i2) {
                        this.searchResult.clear();
                    }
                    if (this.lastGlobalSearchId != i2) {
                        this.searchAdapterHelper.clear();
                    }
                }
                this.searchAdapterHelper.mergeResults(this.searchResult, this.filtered2RecentSearchObjects);
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
                if (dialogsSearchAdapterDelegate != null) {
                    dialogsSearchAdapterDelegate.searchStateChanged(this.waitingResponseCount > 0, true);
                    this.delegate.runResultsEnterAnimation();
                }
                this.globalSearchCollapsed = true;
                this.phoneCollapsed = true;
                this.forceLoadingMessages = false;
                EmptyLayout emptyLayout = this.messagesEmptyLayout;
                if (emptyLayout != null) {
                    emptyLayout.setQuery(this.lastMessagesSearchString);
                }
                notifyDataSetChanged();
            }
        }
        this.reqId = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessagesInternal$3(HashSet hashSet, Runnable runnable) {
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            boolean zBooleanValue = ((Boolean) pair.first).booleanValue();
            Long l = (Long) pair.second;
            (zBooleanValue ? messagesController.dialogs_read_outbox_max : messagesController.dialogs_read_inbox_max).put(l, Integer.valueOf(MessagesStorage.getInstance(this.currentAccount).getDialogReadMaxSync(zBooleanValue, l.longValue())));
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    public boolean hasRecentSearch() {
        return recentSearchAvailable() && getRecentItemsCount() > 0;
    }

    private boolean recentSearchAvailable() {
        int i = this.dialogsType;
        return (i == 2 || i == 4 || i == 5 || i == 6 || i == 1 || i == 11 || i == 15) ? false : true;
    }

    public boolean isSearchWas() {
        return this.searchWas;
    }

    public boolean isRecentSearchDisplayed() {
        return this.needMessagesSearch != 2 && hasRecentSearch();
    }

    public void loadRecentSearch() {
        int i = this.dialogsType;
        if (i == 15) {
            return;
        }
        loadRecentSearch(this.currentAccount, i, new OnRecentSearchLoaded() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Adapters.DialogsSearchAdapter.OnRecentSearchLoaded
            public final void setRecentSearch(ArrayList arrayList, LongSparseArray longSparseArray) {
                this.f$0.lambda$loadRecentSearch$5(arrayList, longSparseArray);
            }
        });
    }

    public static void loadRecentSearch(final int i, final int i2, final OnRecentSearchLoaded onRecentSearchLoaded) {
        MessagesStorage.getInstance(i).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DialogsSearchAdapter.$r8$lambda$IeZY6DzfyevAnT9a9okTeQwCnus(i, i2, onRecentSearchLoaded);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$IeZY6DzfyevAnT9a9okTeQwCnus(int i, int i2, final OnRecentSearchLoaded onRecentSearchLoaded) {
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = MessagesStorage.getInstance(i).getDatabase().queryFinalized("SELECT did, date FROM search_recent WHERE 1", new Object[0]);
            ArrayList<Long> arrayList = new ArrayList<>();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            new ArrayList();
            final ArrayList arrayList4 = new ArrayList();
            final LongSparseArray longSparseArray = new LongSparseArray();
            while (sQLiteCursorQueryFinalized.next()) {
                long jLongValue = sQLiteCursorQueryFinalized.longValue(0);
                if (DialogObject.isEncryptedDialog(jLongValue)) {
                    if (i2 == 0 || i2 == 3) {
                        int encryptedChatId = DialogObject.getEncryptedChatId(jLongValue);
                        if (!arrayList3.contains(Integer.valueOf(encryptedChatId))) {
                            arrayList3.add(Integer.valueOf(encryptedChatId));
                            RecentSearchObject recentSearchObject = new RecentSearchObject();
                            recentSearchObject.did = jLongValue;
                            recentSearchObject.date = sQLiteCursorQueryFinalized.intValue(1);
                            arrayList4.add(recentSearchObject);
                            longSparseArray.put(recentSearchObject.did, recentSearchObject);
                        }
                    }
                } else if (DialogObject.isUserDialog(jLongValue)) {
                    if (i2 != 2 && !arrayList.contains(Long.valueOf(jLongValue))) {
                        arrayList.add(Long.valueOf(jLongValue));
                        RecentSearchObject recentSearchObject2 = new RecentSearchObject();
                        recentSearchObject2.did = jLongValue;
                        recentSearchObject2.date = sQLiteCursorQueryFinalized.intValue(1);
                        arrayList4.add(recentSearchObject2);
                        longSparseArray.put(recentSearchObject2.did, recentSearchObject2);
                    }
                } else {
                    long j = -jLongValue;
                    if (!arrayList2.contains(Long.valueOf(j))) {
                        arrayList2.add(Long.valueOf(j));
                        RecentSearchObject recentSearchObject22 = new RecentSearchObject();
                        recentSearchObject22.did = jLongValue;
                        recentSearchObject22.date = sQLiteCursorQueryFinalized.intValue(1);
                        arrayList4.add(recentSearchObject22);
                        longSparseArray.put(recentSearchObject22.did, recentSearchObject22);
                    }
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            ArrayList<TLRPC.User> arrayList5 = new ArrayList<>();
            if (!arrayList3.isEmpty()) {
                ArrayList<TLRPC.EncryptedChat> arrayList6 = new ArrayList<>();
                MessagesStorage.getInstance(i).getEncryptedChatsInternal(TextUtils.join(",", arrayList3), arrayList6, arrayList);
                for (int i3 = 0; i3 < arrayList6.size(); i3++) {
                    RecentSearchObject recentSearchObject3 = (RecentSearchObject) longSparseArray.get(DialogObject.makeEncryptedDialogId(arrayList6.get(i3).id));
                    if (recentSearchObject3 != null) {
                        recentSearchObject3.object = arrayList6.get(i3);
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                ArrayList<TLRPC.Chat> arrayList7 = new ArrayList<>();
                MessagesStorage.getInstance(i).getChatsInternal(TextUtils.join(",", arrayList2), arrayList7);
                for (int i4 = 0; i4 < arrayList7.size(); i4++) {
                    TLRPC.Chat chat = arrayList7.get(i4);
                    long j2 = -chat.id;
                    if (chat.migrated_to != null) {
                        RecentSearchObject recentSearchObject4 = (RecentSearchObject) longSparseArray.get(j2);
                        longSparseArray.remove(j2);
                        if (recentSearchObject4 != null) {
                            arrayList4.remove(recentSearchObject4);
                        }
                    } else {
                        RecentSearchObject recentSearchObject5 = (RecentSearchObject) longSparseArray.get(j2);
                        if (recentSearchObject5 != null) {
                            recentSearchObject5.object = chat;
                        }
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                MessagesStorage.getInstance(i).getUsersInternal(arrayList, arrayList5);
                for (int i5 = 0; i5 < arrayList5.size(); i5++) {
                    TLRPC.User user = arrayList5.get(i5);
                    RecentSearchObject recentSearchObject6 = (RecentSearchObject) longSparseArray.get(user.id);
                    if (recentSearchObject6 != null) {
                        recentSearchObject6.object = user;
                    }
                }
            }
            Collections.sort(arrayList4, new Comparator() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return DialogsSearchAdapter.$r8$lambda$lqxExGyE7S05spp6PXDQg3CKK0w((DialogsSearchAdapter.RecentSearchObject) obj, (DialogsSearchAdapter.RecentSearchObject) obj2);
                }
            });
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    onRecentSearchLoaded.setRecentSearch(arrayList4, longSparseArray);
                }
            });
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public static /* synthetic */ int $r8$lambda$lqxExGyE7S05spp6PXDQg3CKK0w(RecentSearchObject recentSearchObject, RecentSearchObject recentSearchObject2) {
        int i = recentSearchObject.date;
        int i2 = recentSearchObject2.date;
        if (i < i2) {
            return 1;
        }
        return i > i2 ? -1 : 0;
    }

    public void putRecentSearch(long j, TLObject tLObject) {
        RecentSearchObject recentSearchObject = this.recentSearchObjectsById.get(j);
        if (recentSearchObject == null) {
            recentSearchObject = new RecentSearchObject();
            this.recentSearchObjectsById.put(j, recentSearchObject);
        } else {
            this.recentSearchObjects.remove(recentSearchObject);
        }
        this.recentSearchObjects.add(0, recentSearchObject);
        recentSearchObject.did = j;
        recentSearchObject.object = tLObject;
        recentSearchObject.date = (int) (System.currentTimeMillis() / 1000);
        String str = this.lastSearchText;
        filterRecent(str != null ? str.trim() : null);
        notifyDataSetChanged();
        putRecentSearch(this.currentAccount, j);
    }

    public static void putRecentSearch(final int i, final long j) {
        MessagesStorage.getInstance(i).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                DialogsSearchAdapter.$r8$lambda$JPIm8URcDzHDfoVMeoVBWhVCqrM(i, j);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$JPIm8URcDzHDfoVMeoVBWhVCqrM(int i, long j) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = MessagesStorage.getInstance(i).getDatabase().executeFast("REPLACE INTO search_recent VALUES(?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            sQLitePreparedStatementExecuteFast.bindLong(1, j);
            sQLitePreparedStatementExecuteFast.bindInteger(2, (int) (System.currentTimeMillis() / 1000));
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public static void clearRecentSearch(final int i) {
        MessagesStorage.getInstance(i).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                DialogsSearchAdapter.$r8$lambda$0nuamyauY97bzmvXmGuWBVwQQBw(i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$0nuamyauY97bzmvXmGuWBVwQQBw(int i) {
        try {
            MessagesStorage.getInstance(i).getDatabase().executeFast("DELETE FROM search_recent WHERE 1").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public void clearRecentSearch() {
        final StringBuilder sb;
        if (this.searchWas) {
            sb = null;
            while (this.filtered2RecentSearchObjects.size() > 0) {
                RecentSearchObject recentSearchObjectRemove = this.filtered2RecentSearchObjects.remove(0);
                this.recentSearchObjects.remove(recentSearchObjectRemove);
                this.filteredRecentSearchObjects.remove(recentSearchObjectRemove);
                this.recentSearchObjectsById.remove(recentSearchObjectRemove.did);
                if (sb == null) {
                    sb = new StringBuilder("did IN (");
                    sb.append(recentSearchObjectRemove.did);
                } else {
                    sb.append(", ");
                    sb.append(recentSearchObjectRemove.did);
                }
            }
            if (sb == null) {
                sb = new StringBuilder("1");
            } else {
                sb.append(")");
            }
        } else {
            this.filtered2RecentSearchObjects.clear();
            this.filteredRecentSearchObjects.clear();
            this.recentSearchObjects.clear();
            this.recentSearchObjectsById.clear();
            sb = new StringBuilder("1");
        }
        String str = this.lastSearchText;
        filterRecent(str != null ? str.trim() : null);
        notifyDataSetChanged();
        boolean z = this.searchWas;
        int i = this.currentAccount;
        if (!z) {
            clearRecentSearch(i);
        } else {
            MessagesStorage.getInstance(i).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$clearRecentSearch$11(sb);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentSearch$11(StringBuilder sb) {
        try {
            sb.insert(0, "DELETE FROM search_recent WHERE ");
            MessagesStorage.getInstance(this.currentAccount).getDatabase().executeFast(sb.toString()).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public void removeRecentSearch(final long j) {
        RecentSearchObject recentSearchObject = this.recentSearchObjectsById.get(j);
        if (recentSearchObject == null) {
            return;
        }
        this.recentSearchObjectsById.remove(j);
        this.recentSearchObjects.remove(recentSearchObject);
        this.filtered2RecentSearchObjects.remove(recentSearchObject);
        this.filteredRecentSearchObjects.remove(recentSearchObject);
        notifyDataSetChanged();
        MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeRecentSearch$12(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeRecentSearch$12(long j) {
        try {
            MessagesStorage.getInstance(this.currentAccount).getDatabase().executeFast("DELETE FROM search_recent WHERE did = " + j).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    public void addHashtagsFromMessage(CharSequence charSequence) {
        this.searchAdapterHelper.addHashtagsFromMessage(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setRecentSearch, reason: merged with bridge method [inline-methods] */
    public void lambda$loadRecentSearch$5(ArrayList<RecentSearchObject> arrayList, LongSparseArray<RecentSearchObject> longSparseArray) {
        this.recentSearchObjects = arrayList;
        this.recentSearchObjectsById = longSparseArray;
        for (int i = 0; i < this.recentSearchObjects.size(); i++) {
            RecentSearchObject recentSearchObject = this.recentSearchObjects.get(i);
            TLObject tLObject = recentSearchObject.object;
            if (tLObject instanceof TLRPC.User) {
                MessagesController.getInstance(this.currentAccount).putUser((TLRPC.User) recentSearchObject.object, true);
            } else if (tLObject instanceof TLRPC.Chat) {
                MessagesController.getInstance(this.currentAccount).putChat((TLRPC.Chat) recentSearchObject.object, true);
            } else if (tLObject instanceof TLRPC.EncryptedChat) {
                MessagesController.getInstance(this.currentAccount).putEncryptedChat((TLRPC.EncryptedChat) recentSearchObject.object, true);
            }
        }
        filterRecent(null);
        notifyDataSetChanged();
    }

    private void searchDialogsInternal(final String str, final int i) {
        if (this.needMessagesSearch == 2) {
            return;
        }
        final String lowerCase = str.trim().toLowerCase();
        if (lowerCase.length() == 0) {
            this.lastSearchId = 0;
            updateSearchResults(new ArrayList<>(), new ArrayList<>(), new ArrayList<>(), new ArrayList<>(), this.lastSearchId);
        } else {
            MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$searchDialogsInternal$14(lowerCase, i, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a3, code lost:
    
        r2.add(0, r0);
        r3.add(0, r0.title);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$searchDialogsInternal$14(String str, int i, String str2) throws Throwable {
        ArrayList<Object> arrayList = new ArrayList<>();
        ArrayList<CharSequence> arrayList2 = new ArrayList<>();
        ArrayList<TLRPC.User> arrayList3 = new ArrayList<>();
        ArrayList<ContactsController.Contact> arrayList4 = new ArrayList<>();
        MessagesStorage.getInstance(this.currentAccount).localSearch(this.dialogsType, str, arrayList, arrayList2, arrayList3, this.filterDialogIds, -1);
        if (!TextUtils.isEmpty(str) && TextUtils.isDigitsOnly(str)) {
            try {
                long j = Long.parseLong(str);
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
                if (user != null) {
                    int size = arrayList.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            if ((obj instanceof TLRPC.User) && ((TLRPC.User) obj).id == user.id) {
                                break;
                            }
                        } else {
                            arrayList.add(0, user);
                            arrayList2.add(0, UserObject.getUserName(user));
                            break;
                        }
                    }
                }
                TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
                if (chat != null) {
                    int size2 = arrayList.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= size2) {
                            break;
                        }
                        Object obj2 = arrayList.get(i3);
                        i3++;
                        if ((obj2 instanceof TLRPC.Chat) && ((TLRPC.Chat) obj2).id == chat.id) {
                            break;
                        }
                    }
                }
            } catch (NumberFormatException e) {
                FileLog.m1040e(e);
            }
        }
        updateSearchResults(arrayList, arrayList2, arrayList3, arrayList4, i);
        FiltersView.fillTipDates(str, this.localTipDates);
        this.localTipArchive = false;
        if (str.length() >= 3 && (LocaleController.getString(C2807R.string.ArchiveSearchFilter).toLowerCase().startsWith(str) || "archive".startsWith(str2))) {
            this.localTipArchive = true;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogsInternal$13();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogsInternal$13() {
        FilteredSearchView.Delegate delegate = this.filtersDelegate;
        if (delegate != null) {
            delegate.updateFiltersView(false, null, this.localTipDates, this.localTipArchive);
        }
    }

    private void updateSearchResults(final ArrayList<Object> arrayList, final ArrayList<CharSequence> arrayList2, final ArrayList<TLRPC.User> arrayList3, ArrayList<ContactsController.Contact> arrayList4, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateSearchResults$16(i, arrayList, arrayList2, arrayList3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSearchResults$16(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        final long j;
        this.waitingResponseCount--;
        if (i != this.lastSearchId) {
            return;
        }
        this.lastLocalSearchId = i;
        if (this.lastGlobalSearchId != i) {
            this.searchAdapterHelper.clear();
        }
        if (this.lastMessagesSearchId != i) {
            this.searchResultMessages.clear();
        }
        this.searchWas = true;
        int i2 = 0;
        while (i2 < arrayList.size()) {
            if (!filter(arrayList.get(i2))) {
                arrayList.remove(i2);
                i2--;
            }
            i2++;
        }
        int size = this.filtered2RecentSearchObjects.size();
        int i3 = 0;
        while (i3 < arrayList.size()) {
            final Object obj = arrayList.get(i3);
            if (obj instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) obj;
                MessagesController.getInstance(this.currentAccount).putUser(user, true);
                j = user.id;
            } else if (obj instanceof TLRPC.Chat) {
                TLRPC.Chat chat = (TLRPC.Chat) obj;
                MessagesController.getInstance(this.currentAccount).putChat(chat, true);
                j = -chat.id;
            } else {
                if (obj instanceof TLRPC.EncryptedChat) {
                    MessagesController.getInstance(this.currentAccount).putEncryptedChat((TLRPC.EncryptedChat) obj, true);
                }
                j = 0;
            }
            if (j != 0 && MessagesController.getInstance(this.currentAccount).dialogs_dict.get(j) == null) {
                MessagesStorage.getInstance(this.currentAccount).getDialogFolderId(j, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda39
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i4) {
                        this.f$0.lambda$updateSearchResults$15(j, obj, i4);
                    }
                });
            }
            if (recentSearchAvailable() && !(obj instanceof TLRPC.EncryptedChat)) {
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
                boolean z = dialogsSearchAdapterDelegate != null && dialogsSearchAdapterDelegate.getSearchForumDialogId() == j;
                for (int i4 = 0; !z && i4 < size; i4++) {
                    RecentSearchObject recentSearchObject = this.filtered2RecentSearchObjects.get(i4);
                    if (recentSearchObject != null && recentSearchObject.did == j) {
                        z = true;
                    }
                }
                if (z) {
                    arrayList.remove(i3);
                    arrayList2.remove(i3);
                    i3--;
                }
            }
            i3++;
        }
        MessagesController.getInstance(this.currentAccount).putUsers(arrayList3, true);
        this.searchResult = arrayList;
        this.searchResultNames = arrayList2;
        this.searchAdapterHelper.mergeResults(arrayList, this.filtered2RecentSearchObjects);
        notifyDataSetChanged();
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate2 = this.delegate;
        if (dialogsSearchAdapterDelegate2 != null) {
            dialogsSearchAdapterDelegate2.searchStateChanged(this.waitingResponseCount > 0, true);
            this.delegate.runResultsEnterAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSearchResults$15(long j, Object obj, int i) {
        if (i != -1) {
            TLRPC.TL_dialog tL_dialog = new TLRPC.TL_dialog();
            tL_dialog.id = j;
            if (i != 0) {
                tL_dialog.folder_id = i;
            }
            if (obj instanceof TLRPC.Chat) {
                tL_dialog.flags = ChatObject.isChannel((TLRPC.Chat) obj) ? 1 : 0;
            }
            MessagesController.getInstance(this.currentAccount).dialogs_dict.put(j, tL_dialog);
            MessagesController.getInstance(this.currentAccount).getAllDialogs().add(tL_dialog);
            MessagesController.getInstance(this.currentAccount).sortDialogs(null);
        }
    }

    public boolean isHashtagSearch() {
        return !this.searchResultHashtags.isEmpty();
    }

    public void clearRecentHashtags() {
        this.searchAdapterHelper.clearRecentHashtags();
        this.searchResultHashtags.clear();
        notifyDataSetChanged();
    }

    public void searchDialogs(final String str, int i, boolean z) {
        if (str != null && str.equals(this.lastSearchText) && (i == this.folderId || TextUtils.isEmpty(str))) {
            return;
        }
        this.lastSearchText = str;
        this.folderId = i;
        final String str2 = null;
        if (this.searchRunnable != null) {
            Utilities.searchQueue.cancelRunnable(this.searchRunnable);
            this.searchRunnable = null;
        }
        Runnable runnable = this.searchRunnable2;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.searchRunnable2 = null;
        }
        Runnable runnable2 = this.searchHashtagRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.searchHashtagRunnable = null;
        }
        if (this.searchHashtagRequest >= 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.searchHashtagRequest, true);
            this.searchHashtagRequest = -1;
        }
        final String strTrim = str != null ? str.trim() : null;
        filterRecent(strTrim);
        if (!TextUtils.equals(this.sponsoredQuery, strTrim)) {
            this.sponsoredQuery = strTrim;
            this.sponsoredPeers.clear();
            if (this.sponsoredReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.sponsoredReqId, true);
                this.sponsoredReqId = 0;
            }
            if (strTrim == null || strTrim.length() < 4 || (UserConfig.getInstance(this.currentAccount).isPremium() && MessagesController.getInstance(this.currentAccount).isSponsoredDisabled())) {
                this.sponsoredQuery = null;
            } else {
                TLRPC.TL_contacts_getSponsoredPeers tL_contacts_getSponsoredPeers = new TLRPC.TL_contacts_getSponsoredPeers();
                this.sponsoredQuery = strTrim;
                tL_contacts_getSponsoredPeers.f1021q = strTrim;
                this.sponsoredReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_getSponsoredPeers, new RequestDelegate() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda8
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$searchDialogs$18(tLObject, tL_error);
                    }
                });
            }
        }
        if (TextUtils.isEmpty(strTrim)) {
            this.filteredRecentQuery = null;
            this.searchAdapterHelper.unloadRecentHashtags();
            this.searchResult.clear();
            this.searchResultNames.clear();
            this.searchResultHashtags.clear();
            this.publicPostsTotalCount = 0;
            this.publicPostsLastRate = 0;
            this.publicPostsHashtag = null;
            this.publicPosts.clear();
            this.searchAdapterHelper.mergeResults(null, null);
            int i2 = this.dialogsType;
            if (i2 != 15) {
                SearchAdapterHelper searchAdapterHelper = this.searchAdapterHelper;
                boolean z2 = i2 != 11;
                boolean z3 = i2 != 11;
                boolean z4 = i2 == 2 || i2 == 11;
                boolean z5 = i2 == 0;
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
                searchAdapterHelper.queryServerSearch(null, true, true, z2, z3, z4, 0L, z5, 0, 0, dialogsSearchAdapterDelegate != null ? dialogsSearchAdapterDelegate.getSearchForumDialogId() : 0L);
            }
            this.searchWas = false;
            this.lastSearchId = 0;
            this.waitingResponseCount = 0;
            this.globalSearchCollapsed = true;
            this.phoneCollapsed = true;
            DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate2 = this.delegate;
            if (dialogsSearchAdapterDelegate2 != null) {
                dialogsSearchAdapterDelegate2.searchStateChanged(false, true);
            }
            if (this.dialogsType != 15) {
                searchTopics(null);
                searchMessagesInternal(null, 0);
                searchForumMessagesInternal(null, 0);
            }
            notifyDataSetChanged();
            this.localTipDates.clear();
            this.localTipArchive = false;
            FilteredSearchView.Delegate delegate = this.filtersDelegate;
            if (delegate != null) {
                delegate.updateFiltersView(false, null, this.localTipDates, false);
                return;
            }
            return;
        }
        this.searchAdapterHelper.mergeResults(this.searchResult, this.filtered2RecentSearchObjects);
        this.publicPostsTotalCount = 0;
        this.publicPostsLastRate = 0;
        this.publicPostsHashtag = null;
        this.publicPosts.clear();
        if (this.needMessagesSearch != 2 && strTrim.startsWith("#") && strTrim.length() == 1) {
            this.messagesSearchEndReached = true;
            if (this.searchAdapterHelper.loadRecentHashtags()) {
                this.searchResultMessages.clear();
                this.searchResultHashtags.clear();
                ArrayList<SearchAdapterHelper.HashtagObject> hashtags = this.searchAdapterHelper.getHashtags();
                for (int i3 = 0; i3 < hashtags.size(); i3++) {
                    this.searchResultHashtags.add(hashtags.get(i3).hashtag);
                }
                this.globalSearchCollapsed = true;
                this.phoneCollapsed = true;
                this.waitingResponseCount = 0;
                notifyDataSetChanged();
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate3 = this.delegate;
                if (dialogsSearchAdapterDelegate3 != null) {
                    dialogsSearchAdapterDelegate3.searchStateChanged(false, false);
                }
            }
        } else {
            this.searchResultHashtags.clear();
        }
        final int i4 = this.lastSearchId + 1;
        this.lastSearchId = i4;
        this.waitingResponseCount = 3;
        this.globalSearchCollapsed = true;
        this.phoneCollapsed = true;
        notifyDataSetChanged();
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate4 = this.delegate;
        if (dialogsSearchAdapterDelegate4 != null) {
            dialogsSearchAdapterDelegate4.searchStateChanged(true, false);
        }
        if (z && strTrim != null) {
            String strTrim2 = strTrim.trim();
            if (strTrim2.length() > 1 && (strTrim2.charAt(0) == '#' || strTrim2.charAt(0) == '$')) {
                int iIndexOf = strTrim2.indexOf(64);
                String strSubstring = strTrim2.substring(1);
                if (iIndexOf >= 0) {
                    strTrim2.substring(iIndexOf + 1);
                }
                str2 = strSubstring;
            }
        }
        DispatchQueue dispatchQueue = Utilities.searchQueue;
        Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogs$20(strTrim, i4, str);
            }
        };
        this.searchRunnable = runnable3;
        dispatchQueue.postRunnable(runnable3, 300L);
        if (str2 != null) {
            this.waitingResponseCount++;
            Runnable runnable4 = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$23(i4, str2);
                }
            };
            this.searchHashtagRunnable = runnable4;
            AndroidUtilities.runOnUIThread(runnable4, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$18(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogs$17(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$17(TLObject tLObject) {
        int i = 0;
        this.sponsoredReqId = 0;
        if (tLObject instanceof TLRPC.TL_contacts_sponsoredPeersEmpty) {
            if (this.sponsoredPeers.isEmpty()) {
                return;
            }
            this.sponsoredPeers.clear();
            notifyDataSetChanged();
            return;
        }
        if (tLObject instanceof TLRPC.TL_contacts_sponsoredPeers) {
            TLRPC.TL_contacts_sponsoredPeers tL_contacts_sponsoredPeers = (TLRPC.TL_contacts_sponsoredPeers) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_sponsoredPeers.users, true);
            MessagesController.getInstance(this.currentAccount).putChats(tL_contacts_sponsoredPeers.chats, true);
            if (RemoteUtils.getBooleanConfigValue("hide_ads", false).booleanValue()) {
                ArrayList<TLRPC.TL_sponsoredPeer> arrayList = tL_contacts_sponsoredPeers.peers;
                int size = arrayList.size();
                while (i < size) {
                    TLRPC.TL_sponsoredPeer tL_sponsoredPeer = arrayList.get(i);
                    i++;
                    seenSponsoredPeer(tL_sponsoredPeer);
                }
                tL_contacts_sponsoredPeers.peers.clear();
            }
            this.sponsoredPeers.addAll(tL_contacts_sponsoredPeers.peers);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$20(final String str, final int i, final String str2) {
        this.searchRunnable = null;
        searchDialogsInternal(str, i);
        if (this.dialogsType == 15) {
            this.waitingResponseCount -= 2;
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogs$19(i, str, str2);
            }
        };
        this.searchRunnable2 = runnable;
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$19(int i, String str, String str2) {
        int i2;
        long j;
        boolean z;
        this.searchRunnable2 = null;
        if (i != this.lastSearchId) {
            return;
        }
        if (this.needMessagesSearch != 2 && (i2 = this.dialogsType) != 6 && ((i2 != 5 || searchesGlobalChannels()) && this.delegate.getSearchForumDialogId() == 0)) {
            SearchAdapterHelper searchAdapterHelper = this.searchAdapterHelper;
            int i3 = this.dialogsType;
            boolean z2 = i3 != 4;
            if (i3 == 4 || i3 == 11) {
                j = 0;
                z = false;
            } else {
                j = 0;
                z = true;
            }
            boolean z3 = i3 == 2 || i3 == 1;
            boolean z4 = i3 == 0;
            DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
            searchAdapterHelper.queryServerSearch(str, true, z2, true, z, z3, 0L, z4, 0, i, dialogsSearchAdapterDelegate != null ? dialogsSearchAdapterDelegate.getSearchForumDialogId() : j);
        } else {
            this.waitingResponseCount -= 2;
        }
        if (this.needMessagesSearch == 0 || this.dialogsType == 15) {
            this.waitingResponseCount--;
            return;
        }
        searchTopics(str2);
        searchMessagesInternal(str2, i);
        searchForumMessagesInternal(str2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$23(final int i, final String str) {
        this.searchHashtagRunnable = null;
        if (i != this.lastSearchId) {
            return;
        }
        if (this.searchHashtagRequest >= 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.searchHashtagRequest, true);
        }
        TLRPC.TL_channels_searchPosts tL_channels_searchPosts = new TLRPC.TL_channels_searchPosts();
        tL_channels_searchPosts.flags = 1 | tL_channels_searchPosts.flags;
        tL_channels_searchPosts.hashtag = str;
        tL_channels_searchPosts.limit = 3;
        tL_channels_searchPosts.offset_peer = new TLRPC.TL_inputPeerEmpty();
        this.searchHashtagRequest = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_searchPosts, new RequestDelegate() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda27
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$searchDialogs$22(i, str, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$22(final int i, final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogs$21(i, tLObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$21(int i, TLObject tLObject, String str) {
        int size;
        if (i == this.lastSearchId && (tLObject instanceof TLRPC.messages_Messages)) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            if (messages_messages instanceof TLRPC.TL_messages_messages) {
                size = ((TLRPC.TL_messages_messages) messages_messages).messages.size();
            } else {
                size = messages_messages instanceof TLRPC.TL_messages_messagesSlice ? ((TLRPC.TL_messages_messagesSlice) messages_messages).count : 0;
            }
            this.publicPostsTotalCount = size;
            this.publicPostsLastRate = messages_messages.next_rate;
            this.publicPostsHashtag = str;
            MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
            for (int i2 = 0; i2 < messages_messages.messages.size(); i2++) {
                this.publicPosts.add(new MessageObject(this.currentAccount, messages_messages.messages.get(i2), false, true));
            }
            DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
            if (dialogsSearchAdapterDelegate != null) {
                dialogsSearchAdapterDelegate.searchStateChanged(this.waitingResponseCount > 0, true);
            }
            notifyDataSetChanged();
        }
    }

    public int getRecentItemsCount() {
        ArrayList<RecentSearchObject> arrayList = this.searchWas ? this.filtered2RecentSearchObjects : this.filteredRecentSearchObjects;
        return (!arrayList.isEmpty() ? arrayList.size() + 1 : 0) + (hasHints() ? 1 : 0);
    }

    public int getRecentResultsCount() {
        ArrayList<RecentSearchObject> arrayList = this.searchWas ? this.filtered2RecentSearchObjects : this.filteredRecentSearchObjects;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.waitingResponseCount == 3) {
            return 0;
        }
        int size = !this.publicPosts.isEmpty() ? this.publicPosts.size() + 1 : 0;
        if (!this.searchResultHashtags.isEmpty()) {
            return size + this.searchResultHashtags.size() + 1;
        }
        if (isRecentSearchDisplayed()) {
            size += getRecentItemsCount();
            if (!this.searchWas) {
                return size;
            }
        }
        if (!this.searchTopics.isEmpty()) {
            size = size + 1 + this.searchTopics.size();
        }
        if (!this.searchContacts.isEmpty()) {
            size += this.searchContacts.size() + 1;
        }
        int size2 = this.searchResult.size();
        int size3 = this.searchAdapterHelper.getLocalServerSearch().size();
        int i = size + size2 + size3;
        int size4 = this.searchAdapterHelper.getGlobalSearch().size();
        if (size4 > 3 && this.globalSearchCollapsed) {
            size4 = 3;
        }
        int size5 = size4 + this.sponsoredPeers.size();
        int size6 = this.searchAdapterHelper.getPhoneSearch().size();
        if (size6 > 3 && this.phoneCollapsed) {
            size6 = 3;
        }
        if (size2 + size3 > 0 && (getRecentItemsCount() > 0 || !this.searchTopics.isEmpty() || !this.publicPosts.isEmpty())) {
            i++;
        }
        if (size5 != 0) {
            i += size5 + 1;
        }
        if (size6 != 0) {
            i += size6;
        }
        int size7 = this.searchForumResultMessages.size();
        if (size7 != 0) {
            i += size7 + 1 + (!this.localMessagesSearchEndReached ? 1 : 0);
        }
        if (!this.localMessagesSearchEndReached) {
            this.localMessagesLoadingRow = i;
        }
        int size8 = this.searchResultMessages.size();
        if ((this.currentMessagesFilter != Filter.All || this.forceLoadingMessages) && this.searchResultMessages.isEmpty()) {
            size8 = this.forceLoadingMessages ? 3 : 1;
        }
        int i2 = (this.searchForumResultMessages.isEmpty() || this.localMessagesSearchEndReached) ? size8 : 0;
        if (i2 != 0) {
            i += i2 + 1 + (!this.messagesSearchEndReached ? 1 : 0);
        }
        if (this.localMessagesSearchEndReached) {
            this.localMessagesLoadingRow = i;
        }
        this.currentItemCount = i;
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [boolean] */
    public Object getItem(int i) {
        int size;
        int i2;
        TLRPC.Chat chat;
        int i3;
        if (!this.publicPosts.isEmpty()) {
            if (i > 0 && i - 1 < this.publicPosts.size()) {
                return this.publicPosts.get(i3);
            }
            i -= this.publicPosts.size() + 1;
        }
        if (!this.searchResultHashtags.isEmpty()) {
            if (i > 0) {
                return this.searchResultHashtags.get(i - 1);
            }
            return null;
        }
        if (isRecentSearchDisplayed()) {
            ?? HasHints = hasHints();
            ArrayList<RecentSearchObject> arrayList = this.searchWas ? this.filtered2RecentSearchObjects : this.filteredRecentSearchObjects;
            if (i > HasHints && (i2 = (i - 1) - (HasHints == true ? 1 : 0)) < arrayList.size()) {
                TLObject tLObject = arrayList.get(i2).object;
                if (!(tLObject instanceof TLRPC.User)) {
                    return (!(tLObject instanceof TLRPC.Chat) || (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(((TLRPC.Chat) tLObject).id))) == null) ? tLObject : chat;
                }
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(((TLRPC.User) tLObject).id));
                return user != null ? user : tLObject;
            }
            i -= getRecentItemsCount();
        }
        if (!this.searchTopics.isEmpty()) {
            if (i > 0 && i <= this.searchTopics.size()) {
                return this.searchTopics.get(i - 1);
            }
            i -= this.searchTopics.size() + 1;
        }
        if (!this.searchContacts.isEmpty()) {
            if (i > 0 && i <= this.searchContacts.size()) {
                return this.searchContacts.get(i - 1);
            }
            i -= this.searchContacts.size() + 1;
        }
        ArrayList<TLObject> globalSearch = this.searchAdapterHelper.getGlobalSearch();
        ArrayList<TLObject> localServerSearch = this.searchAdapterHelper.getLocalServerSearch();
        ArrayList<Object> phoneSearch = this.searchAdapterHelper.getPhoneSearch();
        int size2 = this.searchResult.size();
        int size3 = localServerSearch.size();
        if (size2 + size3 > 0 && (getRecentItemsCount() > 0 || !this.searchTopics.isEmpty() || !this.publicPosts.isEmpty())) {
            if (i == 0) {
                return null;
            }
            i--;
        }
        int size4 = phoneSearch.size();
        if (size4 > 3 && this.phoneCollapsed) {
            size4 = 3;
        }
        int size5 = globalSearch.size();
        int i4 = 0;
        int size6 = (globalSearch.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : ((size5 <= 3 || !this.globalSearchCollapsed) ? size5 : 3) + this.sponsoredPeers.size() + 1;
        if (i >= 0 && i < size2) {
            return this.searchResult.get(i);
        }
        int i5 = i - size2;
        if (i5 >= 0 && i5 < size3) {
            return localServerSearch.get(i5);
        }
        int i6 = i5 - size3;
        if (i6 >= 0 && i6 < size4) {
            return phoneSearch.get(i6);
        }
        int i7 = i6 - size4;
        if (i7 <= 0 || i7 >= size6) {
            size = i7 - size6;
        } else {
            int i8 = i7 - 1;
            if (i8 >= 0 && i8 < this.sponsoredPeers.size()) {
                return this.sponsoredPeers.get(i8);
            }
            size = i8 - this.sponsoredPeers.size();
            if (size >= 0 && size < globalSearch.size()) {
                return globalSearch.get(size);
            }
        }
        int size7 = this.searchForumResultMessages.isEmpty() ? 0 : this.searchForumResultMessages.size() + 1;
        if (size > 0 && size <= this.searchForumResultMessages.size()) {
            return this.searchForumResultMessages.get(size - 1);
        }
        if (!this.localMessagesSearchEndReached && !this.searchForumResultMessages.isEmpty()) {
            i4 = 1;
        }
        int i9 = size - (size7 + i4);
        if (!this.searchResultMessages.isEmpty()) {
            this.searchResultMessages.size();
        }
        if (i9 <= 0 || i9 > this.searchResultMessages.size()) {
            return null;
        }
        return this.searchResultMessages.get(i9 - 1);
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [boolean] */
    public boolean isGlobalSearch(int i) {
        if (!this.searchWas || !this.searchResultHashtags.isEmpty()) {
            return false;
        }
        if (!this.publicPosts.isEmpty()) {
            i -= this.publicPosts.size() + 1;
        }
        if (isRecentSearchDisplayed()) {
            ?? HasHints = hasHints();
            ArrayList<RecentSearchObject> arrayList = this.searchWas ? this.filtered2RecentSearchObjects : this.filteredRecentSearchObjects;
            if (i > HasHints && (i - 1) - (HasHints == true ? 1 : 0) < arrayList.size()) {
                return false;
            }
            i -= getRecentItemsCount();
        }
        ArrayList<TLObject> globalSearch = this.searchAdapterHelper.getGlobalSearch();
        ArrayList<TLObject> localServerSearch = this.searchAdapterHelper.getLocalServerSearch();
        int size = this.searchResult.size();
        int size2 = localServerSearch.size();
        int size3 = this.searchAdapterHelper.getPhoneSearch().size();
        if (size3 > 3 && this.phoneCollapsed) {
            size3 = 3;
        }
        int size4 = globalSearch.size();
        int size5 = (globalSearch.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : ((size4 <= 3 || !this.globalSearchCollapsed) ? size4 : 3) + this.sponsoredPeers.size() + 1;
        int size6 = this.searchContacts.size();
        if (size6 > 0) {
            if (i >= 0 && i < size6) {
                return false;
            }
            i -= size6 + 1;
        }
        if (size + size2 > 0 && (getRecentItemsCount() > 0 || !this.searchTopics.isEmpty() || !this.publicPosts.isEmpty())) {
            if (i == 0) {
                return false;
            }
            i--;
        }
        if (i >= 0 && i < size) {
            return false;
        }
        int i2 = i - size;
        if (i2 >= 0 && i2 < size2) {
            return false;
        }
        int i3 = i2 - size2;
        if (i3 > 0 && i3 < size3) {
            return false;
        }
        int i4 = i3 - size3;
        if (i4 > 0 && i4 < size5) {
            return true;
        }
        int i5 = i4 - size5;
        int size7 = this.searchForumResultMessages.isEmpty() ? 0 : this.searchForumResultMessages.size() + 1;
        if (i5 > 0 && i5 < size7) {
            return false;
        }
        if (!this.searchResultMessages.isEmpty()) {
            this.searchResultMessages.size();
        }
        if (this.currentMessagesFilter != Filter.All || this.forceLoadingMessages) {
            this.searchResultMessages.isEmpty();
        }
        return false;
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        return (itemViewType == 1 || itemViewType == 4 || itemViewType == 10) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateViewHolder$24(View view, int i) {
        if (view instanceof HintDialogCell) {
            HintDialogCell hintDialogCell = (HintDialogCell) view;
            if (hintDialogCell.isBlocked()) {
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
                if (dialogsSearchAdapterDelegate != null) {
                    dialogsSearchAdapterDelegate.didPressedBlockedDialog(view, hintDialogCell.getDialogId());
                    return;
                }
                return;
            }
        }
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate2 = this.delegate;
        if (dialogsSearchAdapterDelegate2 != null) {
            dialogsSearchAdapterDelegate2.didPressedOnSubDialog(((Long) view.getTag()).longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onCreateViewHolder$25(View view, int i) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate == null) {
            return true;
        }
        dialogsSearchAdapterDelegate.needRemoveHint(((Long) view.getTag()).longValue());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateViewHolder$26() {
        this.currentMessagesFilter = Filter.All;
        this.searchResultMessages.clear();
        int i = this.messagesSectionPosition;
        if (i >= 0 && i < getItemCount()) {
            notifyItemChanged(this.messagesSectionPosition);
        }
        loadMoreSearchMessages();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View viewShowPremiumBlock;
        switch (i) {
            case 0:
                viewShowPremiumBlock = new ProfileSearchCell(this.mContext).showPremiumBlock(this.dialogsType == 3);
                break;
            case 1:
                viewShowPremiumBlock = new GraySectionCell(this.mContext);
                break;
            case 2:
            case 9:
                viewShowPremiumBlock = new DialogCell(null, this.mContext, false, true) { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter.3
                    @Override // org.telegram.ui.Cells.DialogCell
                    public boolean isForumCell() {
                        return false;
                    }
                };
                break;
            case 3:
                viewShowPremiumBlock = new TopicSearchCell(this.mContext);
                break;
            case 4:
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext);
                flickerLoadingView.setViewType(1);
                flickerLoadingView.setIsSingleCell(true);
                viewShowPremiumBlock = flickerLoadingView;
                break;
            case 5:
                viewShowPremiumBlock = new HashtagSearchCell(this.mContext);
                break;
            case 6:
                RecyclerListView recyclerListView = new RecyclerListView(this.mContext) { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter.4
                    @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
                    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                        if (getParent() != null && getParent().getParent() != null) {
                            ViewParent parent = getParent().getParent();
                            boolean z = true;
                            if (!canScrollHorizontally(-1) && !canScrollHorizontally(1)) {
                                z = false;
                            }
                            parent.requestDisallowInterceptTouchEvent(z);
                        }
                        return super.onInterceptTouchEvent(motionEvent);
                    }
                };
                recyclerListView.setSelectorDrawableColor(Theme.getColor(Theme.key_listSelector));
                recyclerListView.setTag(9);
                recyclerListView.setItemAnimator(null);
                recyclerListView.setLayoutAnimation(null);
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.mContext) { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter.5
                    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                    public boolean supportsPredictiveItemAnimations() {
                        return false;
                    }
                };
                linearLayoutManager.setOrientation(0);
                recyclerListView.setLayoutManager(linearLayoutManager);
                recyclerListView.setAdapter(new CategoryAdapterRecycler(this.mContext, this.currentAccount, false, this.dialogsType == 3, this.resourcesProvider));
                recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda5
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                    public final void onItemClick(View view, int i2) {
                        this.f$0.lambda$onCreateViewHolder$24(view, i2);
                    }
                });
                recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda6
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
                    public final boolean onItemClick(View view, int i2) {
                        return this.f$0.lambda$onCreateViewHolder$25(view, i2);
                    }
                });
                this.innerListView = recyclerListView;
                viewShowPremiumBlock = recyclerListView;
                break;
            case 7:
            default:
                viewShowPremiumBlock = new TextCell(this.mContext, 16, false);
                break;
            case 8:
                viewShowPremiumBlock = new ProfileSearchCell(this.mContext);
                break;
            case 10:
                EmptyLayout emptyLayout = new EmptyLayout(this.mContext, this.resourcesProvider, new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCreateViewHolder$26();
                    }
                });
                this.messagesEmptyLayout = emptyLayout;
                emptyLayout.setQuery(this.lastMessagesSearchString);
                viewShowPremiumBlock = emptyLayout;
                break;
        }
        if (i == 5) {
            viewShowPremiumBlock.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.dp(86.0f)));
        } else {
            viewShowPremiumBlock.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        }
        return new RecyclerListView.Holder(viewShowPremiumBlock);
    }

    private boolean hasHints() {
        if (this.searchWas || MediaDataController.getInstance(this.currentAccount).hints.isEmpty()) {
            return false;
        }
        return this.dialogsType != 14 || this.dialogsActivity.allowUsers;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02df A[PHI: r9
  0x02df: PHI (r9v12 java.lang.String) = (r9v11 java.lang.String), (r9v17 java.lang.String), (r9v18 java.lang.String), (r9v20 java.lang.String) binds: [B:115:0x02b8, B:141:0x033a, B:127:0x02f9, B:120:0x02d0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0523  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x052e  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x056a  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0662  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0668 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:327:0x06ad  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x06ba  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x06e0  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x072b  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0777  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x077c  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0782  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0785  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x07a6  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x07a8  */
    /* JADX WARN: Type inference failed for: r6v20, types: [boolean] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        char c2;
        int i2;
        Object obj;
        TLRPC.User user;
        ArrayList<TLRPC.TL_username> arrayList;
        TLRPC.Chat chat;
        String publicUsername;
        TLRPC.EncryptedChat encryptedChat;
        boolean z;
        int size;
        int size2;
        int size3;
        int size4;
        CharSequence charSequence;
        CharSequence charSequence2;
        CharSequence charSequence3;
        CharSequence charSequence4;
        CharSequence charSequence5;
        CharSequence string;
        boolean z2;
        CharSequence charSequenceConcat;
        int i3;
        boolean z3;
        boolean z4;
        CharSequence charSequenceConcat2;
        CharSequence pluralStringSpaced;
        String monoForumTitle;
        boolean z5;
        CharSequence charSequence6;
        CharSequence charSequence7;
        CharSequence charSequence8;
        String str;
        CharSequence charSequence9;
        String str2;
        int i4;
        ArrayList<TLRPC.TL_username> arrayList2;
        int recentItemsCount;
        String string2;
        String string3;
        CharSequence charSequence10;
        final Runnable runnable;
        final int size5 = i;
        switch (viewHolder.getItemViewType()) {
            case 0:
                ProfileSearchCell profileSearchCell = (ProfileSearchCell) viewHolder.itemView;
                profileSearchCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                long dialogId = profileSearchCell.getDialogId();
                boolean zIsGlobalSearch = isGlobalSearch(size5);
                Object item = getItem(size5);
                boolean z6 = item instanceof TLRPC.TL_sponsoredPeer;
                if (z6) {
                    TLRPC.TL_sponsoredPeer tL_sponsoredPeer = (TLRPC.TL_sponsoredPeer) item;
                    seenSponsoredPeer(tL_sponsoredPeer);
                    long peerDialogId = DialogObject.getPeerDialogId(tL_sponsoredPeer.peer);
                    c2 = 2;
                    int i5 = this.currentAccount;
                    if (peerDialogId >= 0) {
                        user = MessagesController.getInstance(i5).getUser(Long.valueOf(peerDialogId));
                        if (user != null) {
                            ArrayList<TLRPC.TL_username> arrayList3 = user.usernames;
                            publicUsername = DialogObject.getPublicUsername(user, this.currentMessagesQuery);
                            arrayList2 = arrayList3;
                            chat = null;
                            obj = item;
                            arrayList = arrayList2;
                        } else {
                            chat = null;
                            arrayList2 = null;
                            publicUsername = null;
                            obj = item;
                            arrayList = arrayList2;
                        }
                    } else {
                        TLRPC.Chat chat2 = MessagesController.getInstance(i5).getChat(Long.valueOf(-peerDialogId));
                        if (chat2 != null) {
                            ArrayList<TLRPC.TL_username> arrayList4 = chat2.usernames;
                            publicUsername = DialogObject.getPublicUsername(chat2, this.currentMessagesQuery);
                            arrayList2 = arrayList4;
                            chat = chat2;
                            user = null;
                            obj = item;
                            arrayList = arrayList2;
                        } else {
                            chat = chat2;
                            user = null;
                            arrayList2 = null;
                            publicUsername = null;
                            obj = item;
                            arrayList = arrayList2;
                        }
                    }
                    if (!this.publicPosts.isEmpty()) {
                        size5 -= this.publicPosts.size() + i2;
                    }
                    if (isRecentSearchDisplayed()) {
                        z = 0;
                    } else {
                        if (size5 < getRecentItemsCount()) {
                            profileSearchCell.useSeparator = size5 != getRecentItemsCount() - i2 ? i2 : 0;
                            i4 = i2;
                        } else {
                            i4 = 0;
                        }
                        size5 -= getRecentItemsCount();
                        z = i4;
                    }
                    if (!this.searchTopics.isEmpty()) {
                        size5 -= this.searchTopics.size() + i2;
                    }
                    ArrayList<TLObject> globalSearch = this.searchAdapterHelper.getGlobalSearch();
                    ArrayList<Object> phoneSearch = this.searchAdapterHelper.getPhoneSearch();
                    int i6 = i2;
                    size = this.searchResult.size();
                    size2 = this.searchAdapterHelper.getLocalServerSearch().size();
                    if (size + size2 > 0 && (getRecentItemsCount() > 0 || !this.searchTopics.isEmpty() || !this.publicPosts.isEmpty())) {
                        size5--;
                    }
                    size3 = phoneSearch.size();
                    if (size3 > 3 && this.phoneCollapsed) {
                        size3 = 3;
                    }
                    int i7 = (size3 > 0 || !(phoneSearch.get(size3 + (-1)) instanceof String)) ? size3 : size3 - 2;
                    size4 = globalSearch.size();
                    int i8 = i7;
                    if (size4 > 3 && this.globalSearchCollapsed) {
                        size4 = 3;
                    }
                    int size6 = (globalSearch.isEmpty() || !this.sponsoredPeers.isEmpty()) ? size4 + this.sponsoredPeers.size() + 1 : 0;
                    if (z == 0) {
                        profileSearchCell.useSeparator = (size5 == (getItemCount() - getRecentItemsCount()) + (-1) || size5 == ((size + i8) + size2) + (-1) || size5 == (((size + size6) + size3) + size2) + (-1)) ? 0 : i6;
                    }
                    if (size5 < 0 && size5 < this.searchResult.size() && user == null) {
                        charSequence = this.searchResultNames.get(size5);
                        String publicUsername2 = UserObject.getPublicUsername(user);
                        if (charSequence == null || user == null || publicUsername2 == null || !charSequence.toString().startsWith("@".concat(publicUsername2))) {
                            charSequence2 = charSequence;
                            charSequence = null;
                        }
                        if (charSequence != null) {
                            charSequence3 = charSequence;
                            charSequence4 = charSequence2;
                        } else {
                            String lastFoundUsername = z != 0 ? this.filteredRecentQuery : this.searchAdapterHelper.getLastFoundUsername();
                            if (!TextUtils.isEmpty(lastFoundUsername)) {
                                if (user != null) {
                                    monoForumTitle = ContactsController.formatName(user.first_name, user.last_name);
                                } else if (chat == null) {
                                    monoForumTitle = null;
                                } else if (chat.monoforum) {
                                    monoForumTitle = ForumUtilities.getMonoForumTitle(this.currentAccount, chat);
                                } else {
                                    monoForumTitle = chat.title;
                                }
                                if (monoForumTitle != null) {
                                    int iIndexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(monoForumTitle, lastFoundUsername);
                                    z5 = zIsGlobalSearch;
                                    if (iIndexOfIgnoreCase != -1) {
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(monoForumTitle);
                                        charSequence6 = charSequence;
                                        spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4), iIndexOfIgnoreCase, lastFoundUsername.length() + iIndexOfIgnoreCase, 33);
                                        charSequence7 = spannableStringBuilder;
                                    }
                                    if (arrayList != null || arrayList.size() <= i6) {
                                        charSequence8 = charSequence7;
                                    } else {
                                        String strSubstring = lastFoundUsername.startsWith("@") ? lastFoundUsername.substring(i6) : lastFoundUsername;
                                        int size7 = arrayList.size();
                                        int i9 = 0;
                                        CharSequence charSequence11 = charSequence7;
                                        while (true) {
                                            if (i9 < size7) {
                                                TLRPC.TL_username tL_username = arrayList.get(i9);
                                                i9++;
                                                TLRPC.TL_username tL_username2 = tL_username;
                                                CharSequence charSequence12 = charSequence11;
                                                if (tL_username2.active && tL_username2.username.startsWith(strSubstring)) {
                                                    str2 = tL_username2.username;
                                                    charSequence8 = charSequence12;
                                                } else {
                                                    charSequence11 = charSequence12;
                                                }
                                            } else {
                                                charSequence8 = charSequence11;
                                                str2 = null;
                                            }
                                        }
                                        if (str2 == null) {
                                            int size8 = arrayList.size();
                                            int i10 = 0;
                                            while (i10 < size8) {
                                                TLRPC.TL_username tL_username3 = arrayList.get(i10);
                                                i10++;
                                                TLRPC.TL_username tL_username4 = tL_username3;
                                                String str3 = str2;
                                                if (tL_username4.active && tL_username4.username.contains(strSubstring)) {
                                                    str = tL_username4.username;
                                                    if (str == null) {
                                                    }
                                                    if (str == null || !(user == null || z5)) {
                                                        charSequence9 = charSequence6;
                                                    } else {
                                                        if (lastFoundUsername.startsWith("@")) {
                                                            lastFoundUsername = lastFoundUsername.substring(1);
                                                        }
                                                        try {
                                                            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                                                            spannableStringBuilder2.append((CharSequence) "@");
                                                            spannableStringBuilder2.append((CharSequence) str);
                                                            int iIndexOfIgnoreCase2 = AndroidUtilities.indexOfIgnoreCase(str, lastFoundUsername);
                                                            if (iIndexOfIgnoreCase2 != -1) {
                                                                int length = lastFoundUsername.length();
                                                                if (iIndexOfIgnoreCase2 == 0) {
                                                                    length++;
                                                                } else {
                                                                    iIndexOfIgnoreCase2++;
                                                                }
                                                                spannableStringBuilder2.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4), iIndexOfIgnoreCase2, length + iIndexOfIgnoreCase2, 33);
                                                            }
                                                            charSequence9 = spannableStringBuilder2;
                                                        } catch (Exception e) {
                                                            FileLog.m1040e(e);
                                                            charSequence9 = str;
                                                        }
                                                    }
                                                    charSequence4 = charSequence8;
                                                    charSequence3 = charSequence9;
                                                } else {
                                                    str2 = str3;
                                                }
                                                break;
                                            }
                                            str = str2;
                                            if (str == null) {
                                            }
                                            if (str == null) {
                                                charSequence9 = charSequence6;
                                                charSequence4 = charSequence8;
                                                charSequence3 = charSequence9;
                                            }
                                        } else {
                                            str = str2;
                                            if (str == null) {
                                            }
                                            if (str == null) {
                                            }
                                        }
                                    }
                                    str = publicUsername;
                                    if (str == null) {
                                    }
                                } else {
                                    z5 = zIsGlobalSearch;
                                }
                                charSequence6 = charSequence;
                                charSequence7 = charSequence2;
                                if (arrayList != null) {
                                    charSequence8 = charSequence7;
                                    str = publicUsername;
                                    if (str == null) {
                                    }
                                }
                            }
                        }
                        profileSearchCell.setChecked(false, false);
                        if (user != null) {
                            CharSequence charSequence13 = charSequence4;
                            charSequence5 = charSequence13;
                            if (user.id == this.selfUserId) {
                                charSequence5 = charSequence13;
                                if (this.dialogsType != 16) {
                                    string = LocaleController.getString(C2807R.string.SavedMessages);
                                    charSequenceConcat = null;
                                    z2 = true;
                                }
                            }
                            if (chat == null && chat.participants_count != 0) {
                                if (ChatObject.isChannel(chat) && !chat.megagroup) {
                                    pluralStringSpaced = LocaleController.formatPluralStringSpaced("Subscribers", chat.participants_count);
                                } else {
                                    pluralStringSpaced = LocaleController.formatPluralStringSpaced("Members", chat.participants_count);
                                }
                                if (charSequenceConcat instanceof SpannableStringBuilder) {
                                    ((SpannableStringBuilder) charSequenceConcat).append((CharSequence) ", ").append(pluralStringSpaced);
                                } else if (TextUtils.isEmpty(charSequenceConcat)) {
                                    charSequenceConcat = pluralStringSpaced;
                                } else {
                                    CharSequence[] charSequenceArr = new CharSequence[3];
                                    charSequenceArr[0] = charSequenceConcat;
                                    charSequenceArr[1] = ", ";
                                    charSequenceArr[c2] = pluralStringSpaced;
                                    charSequenceConcat = TextUtils.concat(charSequenceArr);
                                }
                            } else {
                                if (user == null && user.bot && (i3 = user.bot_active_users) != 0) {
                                    CharSequence pluralStringSpaced2 = LocaleController.formatPluralStringSpaced("BotUsersShort", i3);
                                    if (charSequenceConcat instanceof SpannableStringBuilder) {
                                        ((SpannableStringBuilder) charSequenceConcat).append((CharSequence) ", ").append(pluralStringSpaced2);
                                    } else if (TextUtils.isEmpty(charSequenceConcat)) {
                                        z3 = true;
                                        z4 = false;
                                        charSequenceConcat2 = pluralStringSpaced2;
                                    } else {
                                        CharSequence[] charSequenceArr2 = new CharSequence[3];
                                        z4 = false;
                                        charSequenceArr2[0] = charSequenceConcat;
                                        z3 = true;
                                        charSequenceArr2[1] = ", ";
                                        charSequenceArr2[c2] = pluralStringSpaced2;
                                        charSequenceConcat2 = TextUtils.concat(charSequenceArr2);
                                    }
                                }
                                profileSearchCell.allowBotOpenButton(z, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                                    @Override // org.telegram.messenger.Utilities.Callback
                                    public final void run(Object obj2) {
                                        this.f$0.openBotApp((TLRPC.User) obj2);
                                    }
                                });
                                profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                                    @Override // org.telegram.messenger.Utilities.Callback2
                                    public final void run(Object obj2, Object obj3) {
                                        this.f$0.openSponsoredOptions((ProfileSearchCell) obj2, (TLRPC.TL_sponsoredPeer) obj3);
                                    }
                                });
                                profileSearchCell.setAd(z6 ? (TLRPC.TL_sponsoredPeer) obj : null);
                                profileSearchCell.setData(user != null ? user : chat, encryptedChat, string, charSequenceConcat2, true, z2);
                                profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z3 : z4);
                                break;
                            }
                            z3 = true;
                            z4 = false;
                            charSequenceConcat2 = charSequenceConcat;
                            profileSearchCell.allowBotOpenButton(z, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj2) {
                                    this.f$0.openBotApp((TLRPC.User) obj2);
                                }
                            });
                            profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                                @Override // org.telegram.messenger.Utilities.Callback2
                                public final void run(Object obj2, Object obj3) {
                                    this.f$0.openSponsoredOptions((ProfileSearchCell) obj2, (TLRPC.TL_sponsoredPeer) obj3);
                                }
                            });
                            profileSearchCell.setAd(z6 ? (TLRPC.TL_sponsoredPeer) obj : null);
                            profileSearchCell.setData(user != null ? user : chat, encryptedChat, string, charSequenceConcat2, true, z2);
                            profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z3 : z4);
                        } else {
                            charSequence5 = charSequence4;
                        }
                        string = charSequence5;
                        z2 = false;
                        charSequenceConcat = charSequence3;
                        if (chat == null) {
                            if (user == null) {
                                z3 = true;
                                z4 = false;
                                charSequenceConcat2 = charSequenceConcat;
                            } else {
                                z3 = true;
                                z4 = false;
                                charSequenceConcat2 = charSequenceConcat;
                            }
                        }
                        profileSearchCell.allowBotOpenButton(z, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj2) {
                                this.f$0.openBotApp((TLRPC.User) obj2);
                            }
                        });
                        profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                            @Override // org.telegram.messenger.Utilities.Callback2
                            public final void run(Object obj2, Object obj3) {
                                this.f$0.openSponsoredOptions((ProfileSearchCell) obj2, (TLRPC.TL_sponsoredPeer) obj3);
                            }
                        });
                        profileSearchCell.setAd(z6 ? (TLRPC.TL_sponsoredPeer) obj : null);
                        profileSearchCell.setData(user != null ? user : chat, encryptedChat, string, charSequenceConcat2, true, z2);
                        profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z3 : z4);
                    } else {
                        charSequence = null;
                    }
                    charSequence2 = null;
                    if (charSequence != null) {
                    }
                    profileSearchCell.setChecked(false, false);
                    if (user != null) {
                    }
                    string = charSequence5;
                    z2 = false;
                    charSequenceConcat = charSequence3;
                    if (chat == null) {
                    }
                    profileSearchCell.allowBotOpenButton(z, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj2) {
                            this.f$0.openBotApp((TLRPC.User) obj2);
                        }
                    });
                    profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj2, Object obj3) {
                            this.f$0.openSponsoredOptions((ProfileSearchCell) obj2, (TLRPC.TL_sponsoredPeer) obj3);
                        }
                    });
                    profileSearchCell.setAd(z6 ? (TLRPC.TL_sponsoredPeer) obj : null);
                    profileSearchCell.setData(user != null ? user : chat, encryptedChat, string, charSequenceConcat2, true, z2);
                    profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z3 : z4);
                } else {
                    c2 = 2;
                    if (item instanceof TLRPC.User) {
                        user = (TLRPC.User) item;
                        ArrayList<TLRPC.TL_username> arrayList5 = user.usernames;
                        publicUsername = DialogObject.getPublicUsername(user, this.currentMessagesQuery);
                        obj = item;
                        arrayList = arrayList5;
                        chat = null;
                    } else {
                        if (item instanceof TLRPC.Chat) {
                            chat = (TLRPC.Chat) item;
                            i2 = 1;
                            TLRPC.Chat chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(chat.id));
                            if (chat3 != null) {
                                chat = chat3;
                            }
                            ArrayList<TLRPC.TL_username> arrayList6 = chat.usernames;
                            publicUsername = DialogObject.getPublicUsername(chat, this.currentMessagesQuery);
                            arrayList = arrayList6;
                            obj = item;
                            user = null;
                        } else {
                            i2 = 1;
                            if (item instanceof TLRPC.EncryptedChat) {
                                TLRPC.EncryptedChat encryptedChat2 = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(((TLRPC.EncryptedChat) item).id));
                                obj = item;
                                encryptedChat = encryptedChat2;
                                user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat2.user_id));
                                arrayList = null;
                                chat = null;
                                publicUsername = null;
                                if (!this.publicPosts.isEmpty()) {
                                }
                                if (isRecentSearchDisplayed()) {
                                }
                                if (!this.searchTopics.isEmpty()) {
                                }
                                ArrayList<TLObject> globalSearch2 = this.searchAdapterHelper.getGlobalSearch();
                                ArrayList<Object> phoneSearch2 = this.searchAdapterHelper.getPhoneSearch();
                                int i62 = i2;
                                size = this.searchResult.size();
                                size2 = this.searchAdapterHelper.getLocalServerSearch().size();
                                if (size + size2 > 0) {
                                    size5--;
                                }
                                size3 = phoneSearch2.size();
                                if (size3 > 3) {
                                    size3 = 3;
                                }
                                if (size3 > 0) {
                                }
                                size4 = globalSearch2.size();
                                int i82 = i7;
                                if (size4 > 3) {
                                    size4 = 3;
                                }
                                if (globalSearch2.isEmpty()) {
                                }
                                if (z == 0) {
                                }
                                if (size5 < 0) {
                                    charSequence = null;
                                    charSequence2 = null;
                                }
                                if (charSequence != null) {
                                }
                                profileSearchCell.setChecked(false, false);
                                if (user != null) {
                                }
                                string = charSequence5;
                                z2 = false;
                                charSequenceConcat = charSequence3;
                                if (chat == null) {
                                }
                                profileSearchCell.allowBotOpenButton(z, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                                    @Override // org.telegram.messenger.Utilities.Callback
                                    public final void run(Object obj2) {
                                        this.f$0.openBotApp((TLRPC.User) obj2);
                                    }
                                });
                                profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                                    @Override // org.telegram.messenger.Utilities.Callback2
                                    public final void run(Object obj2, Object obj3) {
                                        this.f$0.openSponsoredOptions((ProfileSearchCell) obj2, (TLRPC.TL_sponsoredPeer) obj3);
                                    }
                                });
                                profileSearchCell.setAd(z6 ? (TLRPC.TL_sponsoredPeer) obj : null);
                                profileSearchCell.setData(user != null ? user : chat, encryptedChat, string, charSequenceConcat2, true, z2);
                                profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z3 : z4);
                            } else {
                                obj = item;
                                user = null;
                                arrayList = null;
                                chat = null;
                                publicUsername = null;
                            }
                        }
                        encryptedChat = null;
                        if (!this.publicPosts.isEmpty()) {
                        }
                        if (isRecentSearchDisplayed()) {
                        }
                        if (!this.searchTopics.isEmpty()) {
                        }
                        ArrayList<TLObject> globalSearch22 = this.searchAdapterHelper.getGlobalSearch();
                        ArrayList<Object> phoneSearch22 = this.searchAdapterHelper.getPhoneSearch();
                        int i622 = i2;
                        size = this.searchResult.size();
                        size2 = this.searchAdapterHelper.getLocalServerSearch().size();
                        if (size + size2 > 0) {
                        }
                        size3 = phoneSearch22.size();
                        if (size3 > 3) {
                        }
                        if (size3 > 0) {
                        }
                        size4 = globalSearch22.size();
                        int i822 = i7;
                        if (size4 > 3) {
                        }
                        if (globalSearch22.isEmpty()) {
                        }
                        if (z == 0) {
                        }
                        if (size5 < 0) {
                        }
                        if (charSequence != null) {
                        }
                        profileSearchCell.setChecked(false, false);
                        if (user != null) {
                        }
                        string = charSequence5;
                        z2 = false;
                        charSequenceConcat = charSequence3;
                        if (chat == null) {
                        }
                        profileSearchCell.allowBotOpenButton(z, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj2) {
                                this.f$0.openBotApp((TLRPC.User) obj2);
                            }
                        });
                        profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                            @Override // org.telegram.messenger.Utilities.Callback2
                            public final void run(Object obj2, Object obj3) {
                                this.f$0.openSponsoredOptions((ProfileSearchCell) obj2, (TLRPC.TL_sponsoredPeer) obj3);
                            }
                        });
                        profileSearchCell.setAd(z6 ? (TLRPC.TL_sponsoredPeer) obj : null);
                        profileSearchCell.setData(user != null ? user : chat, encryptedChat, string, charSequenceConcat2, true, z2);
                        profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z3 : z4);
                    }
                }
                encryptedChat = null;
                i2 = 1;
                if (!this.publicPosts.isEmpty()) {
                }
                if (isRecentSearchDisplayed()) {
                }
                if (!this.searchTopics.isEmpty()) {
                }
                ArrayList<TLObject> globalSearch222 = this.searchAdapterHelper.getGlobalSearch();
                ArrayList<Object> phoneSearch222 = this.searchAdapterHelper.getPhoneSearch();
                int i6222 = i2;
                size = this.searchResult.size();
                size2 = this.searchAdapterHelper.getLocalServerSearch().size();
                if (size + size2 > 0) {
                }
                size3 = phoneSearch222.size();
                if (size3 > 3) {
                }
                if (size3 > 0) {
                }
                size4 = globalSearch222.size();
                int i8222 = i7;
                if (size4 > 3) {
                }
                if (globalSearch222.isEmpty()) {
                }
                if (z == 0) {
                }
                if (size5 < 0) {
                }
                if (charSequence != null) {
                }
                profileSearchCell.setChecked(false, false);
                if (user != null) {
                }
                string = charSequence5;
                z2 = false;
                charSequenceConcat = charSequence3;
                if (chat == null) {
                }
                profileSearchCell.allowBotOpenButton(z, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj2) {
                        this.f$0.openBotApp((TLRPC.User) obj2);
                    }
                });
                profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj2, Object obj3) {
                        this.f$0.openSponsoredOptions((ProfileSearchCell) obj2, (TLRPC.TL_sponsoredPeer) obj3);
                    }
                });
                profileSearchCell.setAd(z6 ? (TLRPC.TL_sponsoredPeer) obj : null);
                profileSearchCell.setData(user != null ? user : chat, encryptedChat, string, charSequenceConcat2, true, z2);
                profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z3 : z4);
                break;
            case 1:
                final GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                if (!this.searchResultHashtags.isEmpty()) {
                    graySectionCell.setText(LocaleController.getString(C2807R.string.Hashtags), LocaleController.getString(C2807R.string.ClearButton), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda14
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onBindViewHolder$27(view);
                        }
                    });
                } else {
                    if (this.publicPosts.isEmpty()) {
                        recentItemsCount = size5;
                    } else if (size5 == 0) {
                        graySectionCell.setText(LocaleController.getString(C2807R.string.PublicPostsTabs), AndroidUtilities.replaceArrows(LocaleController.getString(C2807R.string.PublicPostsMore), false, AndroidUtilities.dp(-2.0f), AndroidUtilities.dp(1.0f)), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda15
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$onBindViewHolder$28(view);
                            }
                        });
                    } else {
                        recentItemsCount = size5 - (this.publicPosts.size() + 1);
                    }
                    final ArrayList<TLObject> globalSearch3 = this.searchAdapterHelper.getGlobalSearch();
                    if (isRecentSearchDisplayed() || !this.searchTopics.isEmpty() || !this.searchContacts.isEmpty() || !this.publicPosts.isEmpty()) {
                        ?? HasHints = hasHints();
                        if (recentItemsCount < HasHints) {
                            graySectionCell.setText(LocaleController.getString(C2807R.string.ChatHints));
                        } else if (recentItemsCount == HasHints && isRecentSearchDisplayed()) {
                            if (!this.searchWas) {
                                graySectionCell.setText(LocaleController.getString(C2807R.string.Recent), LocaleController.getString(C2807R.string.ClearButton), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda16
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        this.f$0.lambda$onBindViewHolder$29(view);
                                    }
                                });
                            } else {
                                graySectionCell.setText(LocaleController.getString(C2807R.string.Recent), LocaleController.getString(C2807R.string.Clear), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda17
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        this.f$0.lambda$onBindViewHolder$30(view);
                                    }
                                });
                            }
                        } else if (recentItemsCount == getRecentItemsCount() + (this.searchTopics.isEmpty() ? 0 : this.searchTopics.size() + 1) + (this.searchContacts.isEmpty() ? 0 : this.searchContacts.size() + 1) && !this.searchResult.isEmpty()) {
                            graySectionCell.setText(LocaleController.getString(C2807R.string.SearchAllChatsShort));
                        } else {
                            recentItemsCount -= getRecentItemsCount();
                        }
                    }
                    int size9 = this.searchResult.size();
                    int size10 = this.searchAdapterHelper.getLocalServerSearch().size();
                    int size11 = this.searchAdapterHelper.getPhoneSearch().size();
                    if (size11 > 3 && this.phoneCollapsed) {
                        size11 = 3;
                    }
                    int size12 = globalSearch3.size();
                    if (size12 > 3 && this.globalSearchCollapsed) {
                        size12 = 3;
                    }
                    int size13 = (globalSearch3.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : size12 + this.sponsoredPeers.size() + 1;
                    int size14 = this.searchForumResultMessages.isEmpty() ? 0 : this.searchForumResultMessages.size() + 1;
                    if (!this.searchResultMessages.isEmpty()) {
                        this.searchResultMessages.size();
                    }
                    if (this.currentMessagesFilter != Filter.All || this.forceLoadingMessages) {
                        this.searchResultMessages.isEmpty();
                    }
                    if (this.searchTopics.isEmpty()) {
                        string2 = null;
                    } else {
                        string2 = recentItemsCount == 0 ? LocaleController.getString(C2807R.string.Topics) : null;
                        recentItemsCount -= this.searchTopics.size() + 1;
                    }
                    if (!this.searchContacts.isEmpty()) {
                        if (recentItemsCount == 0) {
                            string2 = LocaleController.getString(C2807R.string.InviteToTelegramShort);
                        }
                        recentItemsCount -= this.searchContacts.size() + 1;
                    }
                    if (string2 != null) {
                        string3 = string2;
                        charSequence10 = null;
                        runnable = null;
                    } else {
                        int i11 = recentItemsCount - (size9 + size10);
                        if (i11 < 0 || i11 >= size11) {
                            int i12 = i11 - size11;
                            if (i12 >= 0 && i12 < size13) {
                                string2 = LocaleController.getString(C2807R.string.GlobalSearch);
                                if (this.searchAdapterHelper.getGlobalSearch().size() > 3) {
                                    z = this.globalSearchCollapsed;
                                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda19
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$onBindViewHolder$34(globalSearch3, size5, graySectionCell);
                                        }
                                    };
                                    string3 = string2;
                                    charSequence10 = null;
                                    runnable = runnable2;
                                }
                            } else if (this.delegate != null && size14 > 0 && i12 - size13 <= 1) {
                                TLRPC.Chat chat4 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.delegate.getSearchForumDialogId()));
                                string2 = LocaleController.formatString(C2807R.string.SearchMessagesIn, chat4 == null ? "null" : chat4.monoforum ? ForumUtilities.getMonoForumTitle(this.currentAccount, chat4) : chat4.title);
                                string3 = string2;
                                charSequence10 = null;
                                runnable = null;
                            } else {
                                this.messagesSectionPosition = i12;
                                CharSequence filterFromString = getFilterFromString(this.currentMessagesFilter);
                                Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda20
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onBindViewHolder$36(graySectionCell);
                                    }
                                };
                                string3 = LocaleController.getString(C2807R.string.SearchMessages);
                                charSequence10 = filterFromString;
                                runnable = runnable3;
                            }
                        } else {
                            string2 = LocaleController.getString(C2807R.string.PhoneNumberSearch);
                            if (this.searchAdapterHelper.getPhoneSearch().size() > 3) {
                                z = this.phoneCollapsed;
                                runnable = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda18
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onBindViewHolder$31(graySectionCell);
                                    }
                                };
                                string3 = string2;
                                charSequence10 = null;
                            }
                        }
                    }
                    if (runnable == null) {
                        graySectionCell.setText(string3);
                    } else if (charSequence10 != null) {
                        graySectionCell.setText(string3, charSequence10, new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda21
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                runnable.run();
                            }
                        });
                        graySectionCell.setRightTextMargin(6);
                    } else {
                        graySectionCell.setText(string3, LocaleController.getString(z ? C2807R.string.ShowMore : C2807R.string.ShowLess), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda12
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                runnable.run();
                            }
                        });
                        graySectionCell.setRightTextMargin(16);
                    }
                }
                break;
            case 2:
            case 9:
                DialogCell dialogCell = (DialogCell) viewHolder.itemView;
                dialogCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                dialogCell.useSeparator = size5 != getItemCount() - 1;
                MessageObject messageObject = (MessageObject) getItem(size5);
                dialogCell.useFromUserAsAvatar = this.searchForumResultMessages.contains(messageObject);
                if (messageObject == null) {
                    dialogCell.setDialog(0L, null, 0, false, false);
                } else {
                    dialogCell.setDialog(messageObject.getDialogId(), messageObject, messageObject.messageOwner.date, false, false);
                }
                break;
            case 3:
                ((TopicSearchCell) viewHolder.itemView).setTopic((TLRPC.TL_forumTopic) getItem(size5));
                break;
            case 5:
                HashtagSearchCell hashtagSearchCell = (HashtagSearchCell) viewHolder.itemView;
                hashtagSearchCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                hashtagSearchCell.setText(this.searchResultHashtags.get(size5 - 1));
                hashtagSearchCell.setNeedDivider(size5 != this.searchResultHashtags.size());
                break;
            case 6:
                ((CategoryAdapterRecycler) ((RecyclerListView) viewHolder.itemView).getAdapter()).setIndex(size5 / 2);
                break;
            case 7:
                String str4 = (String) getItem(size5);
                TextCell textCell = (TextCell) viewHolder.itemView;
                textCell.setColors(-1, Theme.key_windowBackgroundWhiteBlueText2);
                textCell.setText(LocaleController.formatString("AddContactByPhone", C2807R.string.AddContactByPhone, PhoneFormat.getInstance().format("+" + str4)), false);
                break;
            case 8:
                ProfileSearchCell profileSearchCell2 = (ProfileSearchCell) viewHolder.itemView;
                ContactsController.Contact contact = (ContactsController.Contact) getItem(size5);
                profileSearchCell2.setData(contact, null, ContactsController.formatName(contact.first_name, contact.last_name), PhoneFormat.getInstance().format("+" + contact.shortPhones.get(0)), false, false);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$27(View view) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate != null) {
            dialogsSearchAdapterDelegate.needClearList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$28(View view) {
        openPublicPosts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$29(View view) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate != null) {
            dialogsSearchAdapterDelegate.needClearList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$30(View view) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate != null) {
            dialogsSearchAdapterDelegate.needClearList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$31(GraySectionCell graySectionCell) {
        boolean z = this.phoneCollapsed;
        this.phoneCollapsed = !z;
        graySectionCell.setRightText(LocaleController.getString(!z ? C2807R.string.ShowMore : C2807R.string.ShowLess));
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$34(ArrayList arrayList, int i, GraySectionCell graySectionCell) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.lastShowMoreUpdate < 300) {
            return;
        }
        this.lastShowMoreUpdate = jElapsedRealtime;
        int size = this.sponsoredPeers.size();
        int size2 = arrayList.size();
        int i2 = (arrayList.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : size2 + size;
        int iMin = size + Math.min(3, size2);
        boolean z = getItemCount() > ((this.globalSearchCollapsed ? iMin : i2) + i) + 1;
        DefaultItemAnimator defaultItemAnimator = this.itemAnimator;
        if (defaultItemAnimator != null) {
            defaultItemAnimator.setAddDuration(z ? 45L : 200L);
            this.itemAnimator.setRemoveDuration(z ? 80L : 200L);
            this.itemAnimator.setRemoveDelay(z ? 270L : 0L);
        }
        this.globalSearchCollapsed = !this.globalSearchCollapsed;
        graySectionCell.setRightTextMargin(16);
        graySectionCell.setRightText(LocaleController.getString(this.globalSearchCollapsed ? C2807R.string.ShowMore : C2807R.string.ShowLess), this.globalSearchCollapsed);
        this.showMoreHeader = null;
        final View view = (View) graySectionCell.getParent();
        if (view instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) view;
            int i3 = (!this.globalSearchCollapsed ? i + iMin : i2 + i) + 1;
            int i4 = 0;
            while (true) {
                if (i4 >= recyclerView.getChildCount()) {
                    break;
                }
                View childAt = recyclerView.getChildAt(i4);
                if (recyclerView.getChildAdapterPosition(childAt) == i3) {
                    this.showMoreHeader = childAt;
                    break;
                }
                i4++;
            }
        }
        final int i5 = i + iMin;
        int i6 = i5 + 1;
        int iMax = Math.max(0, size2 - 3);
        if (!this.globalSearchCollapsed) {
            notifyItemChanged(i5);
            notifyItemRangeInserted(i6, iMax);
        } else {
            notifyItemRangeRemoved(i6, iMax);
            if (z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda25
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onBindViewHolder$32(i5);
                    }
                }, 350L);
            } else {
                notifyItemChanged(i5);
            }
        }
        Runnable runnable = this.cancelShowMoreAnimation;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        if (z) {
            this.showMoreAnimation = true;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onBindViewHolder$33(view);
                }
            };
            this.cancelShowMoreAnimation = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 400L);
            return;
        }
        this.showMoreAnimation = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$32(int i) {
        notifyItemChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$33(View view) {
        this.showMoreAnimation = false;
        this.showMoreHeader = null;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$36(final GraySectionCell graySectionCell) {
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.dialogsActivity, graySectionCell);
        for (final Filter filter : Filter.values()) {
            final boolean z = filter.flags == this.currentMessagesFilter.flags;
            itemOptionsMakeOptions.addChecked(z, LocaleController.getString(filter.strResId), new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onBindViewHolder$35(z, graySectionCell, filter);
                }
            });
        }
        itemOptionsMakeOptions.setGravity(5).setOnTopOfScrim().setDrawScrim(false).setDimAlpha(0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$35(boolean z, GraySectionCell graySectionCell, Filter filter) {
        if (z) {
            return;
        }
        this.currentMessagesFilter = filter;
        graySectionCell.setRightText(getFilterFromString(filter));
        graySectionCell.setRightTextMargin(6);
        this.searchResultMessages.clear();
        this.forceLoadingMessages = true;
        notifyDataSetChanged();
        loadMoreSearchMessages();
    }

    private CharSequence getFilterFromString(Filter filter) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(filter.strFromResId));
        spannableStringBuilder.append((CharSequence) RegisterSpec.PREFIX);
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.arrows_select);
        this.filterArrowsIcon = coloredImageSpan;
        spannableStringBuilder.setSpan(coloredImageSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x0178, code lost:
    
        if (r12 != 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x017a, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x017b, code lost:
    
        if (r12 != r7) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x017d, code lost:
    
        return 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x017e, code lost:
    
        return 2;
     */
    /* JADX WARN: Type inference failed for: r0v37, types: [boolean] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getItemViewType(int i) {
        if (!this.searchResultHashtags.isEmpty()) {
            return i == 0 ? 1 : 5;
        }
        if (!this.publicPosts.isEmpty()) {
            if (i == 0) {
                return 1;
            }
            int i2 = i - 1;
            if (i2 < this.publicPosts.size()) {
                return 9;
            }
            i = i2 - this.publicPosts.size();
        }
        if (isRecentSearchDisplayed()) {
            ?? HasHints = hasHints();
            if (i < HasHints) {
                return 6;
            }
            if (i == HasHints) {
                return 1;
            }
            if (i < getRecentItemsCount()) {
                return 0;
            }
            i -= getRecentItemsCount();
        }
        if (!this.searchTopics.isEmpty()) {
            if (i == 0) {
                return 1;
            }
            if (i <= this.searchTopics.size()) {
                return 3;
            }
            i -= this.searchTopics.size() + 1;
        }
        if (!this.searchContacts.isEmpty()) {
            if (i == 0) {
                return 1;
            }
            if (i <= this.searchContacts.size()) {
                return 8;
            }
            i -= this.searchContacts.size() + 1;
        }
        ArrayList<TLObject> globalSearch = this.searchAdapterHelper.getGlobalSearch();
        int size = this.searchResult.size();
        int size2 = this.searchAdapterHelper.getLocalServerSearch().size();
        if (size + size2 > 0 && (getRecentItemsCount() > 0 || !this.searchTopics.isEmpty() || !this.publicPosts.isEmpty())) {
            if (i == 0) {
                return 1;
            }
            i--;
        }
        int size3 = this.searchAdapterHelper.getPhoneSearch().size();
        if (size3 > 3 && this.phoneCollapsed) {
            size3 = 3;
        }
        int size4 = globalSearch.size();
        int size5 = (this.sponsoredPeers.isEmpty() && globalSearch.isEmpty()) ? 0 : ((size4 <= 3 || !this.globalSearchCollapsed) ? size4 : 3) + this.sponsoredPeers.size() + 1;
        int size6 = this.searchResultMessages.isEmpty() ? 0 : this.searchResultMessages.size() + 1;
        Filter filter = this.currentMessagesFilter;
        Filter filter2 = Filter.All;
        if ((filter != filter2 || this.forceLoadingMessages) && this.searchResultMessages.isEmpty()) {
            size6 = this.forceLoadingMessages ? 4 : 2;
        }
        if (!this.searchForumResultMessages.isEmpty() && !this.localMessagesSearchEndReached) {
            size6 = 0;
        }
        int size7 = this.searchForumResultMessages.isEmpty() ? 0 : this.searchForumResultMessages.size() + 1;
        if (i >= 0 && i < size) {
            return 0;
        }
        int i3 = i - size;
        if (i3 >= 0 && i3 < size2) {
            return 0;
        }
        int i4 = i3 - size2;
        if (i4 >= 0 && i4 < size3) {
            Object item = getItem(i4);
            if (item instanceof String) {
                return "section".equals((String) item) ? 1 : 7;
            }
            return 0;
        }
        int i5 = i4 - size3;
        if (i5 >= 0 && i5 < size5) {
            return i5 == 0 ? 1 : 0;
        }
        int i6 = i5 - size5;
        if (size7 > 0) {
            if (i6 >= 0) {
                if (this.localMessagesSearchEndReached) {
                }
            }
            i6 -= size7 + (!this.localMessagesSearchEndReached ? 1 : 0);
        }
        if (i6 < 0 || i6 >= size6) {
            return 4;
        }
        if (i6 == 0) {
            return 1;
        }
        if (this.forceLoadingMessages && this.searchResultMessages.isEmpty()) {
            return 4;
        }
        return (this.currentMessagesFilter == filter2 || !this.searchResultMessages.isEmpty()) ? 2 : 10;
    }

    public void setFiltersDelegate(FilteredSearchView.Delegate delegate, boolean z) {
        this.filtersDelegate = delegate;
        if (delegate == null || !z) {
            return;
        }
        delegate.updateFiltersView(false, null, this.localTipDates, this.localTipArchive);
    }

    public int getCurrentItemCount() {
        return this.currentItemCount;
    }

    public void filterRecent(String str) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate;
        String userName;
        String str2;
        this.filteredRecentQuery = str;
        this.filtered2RecentSearchObjects.clear();
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            this.filteredRecentSearchObjects.clear();
            int size = this.recentSearchObjects.size();
            while (i < size) {
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate2 = this.delegate;
                if ((dialogsSearchAdapterDelegate2 == null || dialogsSearchAdapterDelegate2.getSearchForumDialogId() != this.recentSearchObjects.get(i).did) && filter(this.recentSearchObjects.get(i).object)) {
                    this.filteredRecentSearchObjects.add(this.recentSearchObjects.get(i));
                }
                i++;
            }
            return;
        }
        String lowerCase = str.toLowerCase();
        int size2 = this.recentSearchObjects.size();
        while (i < size2) {
            RecentSearchObject recentSearchObject = this.recentSearchObjects.get(i);
            if (recentSearchObject != null && recentSearchObject.object != null && (((dialogsSearchAdapterDelegate = this.delegate) == null || dialogsSearchAdapterDelegate.getSearchForumDialogId() != recentSearchObject.did) && filter(this.recentSearchObjects.get(i).object))) {
                TLObject tLObject = recentSearchObject.object;
                if (tLObject instanceof TLRPC.Chat) {
                    TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                    userName = chat.monoforum ? ForumUtilities.getMonoForumTitle(this.currentAccount, chat) : chat.title;
                    str2 = ((TLRPC.Chat) recentSearchObject.object).username;
                } else if (tLObject instanceof TLRPC.User) {
                    userName = UserObject.getUserName((TLRPC.User) tLObject);
                    str2 = ((TLRPC.User) recentSearchObject.object).username;
                } else if (tLObject instanceof TLRPC.ChatInvite) {
                    userName = ((TLRPC.ChatInvite) tLObject).title;
                    str2 = null;
                } else {
                    userName = null;
                    str2 = null;
                }
                if ((userName != null && wordStartsWith(userName.toLowerCase(), lowerCase)) || (str2 != null && wordStartsWith(str2.toLowerCase(), lowerCase))) {
                    this.filtered2RecentSearchObjects.add(recentSearchObject);
                }
                if (this.filtered2RecentSearchObjects.size() >= 5) {
                    return;
                }
            }
            i++;
        }
    }

    private boolean wordStartsWith(String str, String str2) {
        if (str2 != null && str != null) {
            String[] strArrSplit = str.toLowerCase().split(" ");
            for (int i = 0; i < strArrSplit.length; i++) {
                String str3 = strArrSplit[i];
                if (str3 != null && (str3.startsWith(str2) || str2.startsWith(strArrSplit[i]))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class EmptyLayout extends LinearLayout {
        private TextView textView;

        public EmptyLayout(Context context, Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
            super(context);
            setOrientation(1);
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageView.setImageDrawable(new RLottieDrawable(C2807R.raw.utyan_empty, AndroidUtilities.dp(120.0f), AndroidUtilities.dp(120.0f)));
            addView(backupImageView, LayoutHelper.createLinear(120, 120, 1, 0, 27, 0, 0));
            TextView textView = new TextView(context);
            textView.setTextSize(1, 17.0f);
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i, resourcesProvider));
            textView.setTypeface(AndroidUtilities.bold());
            textView.setText(LocaleController.getString(C2807R.string.SearchMessagesFilterEmptyTitle));
            textView.setGravity(17);
            addView(textView, LayoutHelper.createLinear(-1, -2, 1, 0, 8, 0, 9));
            TextView textView2 = new TextView(context);
            this.textView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.textView.setTextColor(Theme.getColor(i, resourcesProvider));
            this.textView.setText(LocaleController.formatString(C2807R.string.SearchMessagesFilterEmptyText, _UrlKt.FRAGMENT_ENCODE_SET));
            this.textView.setGravity(17);
            addView(this.textView, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 14));
            TextView textView3 = new TextView(context);
            textView3.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(4.0f));
            textView3.setTextSize(1, 14.0f);
            textView3.setText(LocaleController.getString(C2807R.string.SearchMessagesFilterEmptySearchAll));
            int i2 = Theme.key_featuredStickers_addButton;
            textView3.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView3.setBackground(Theme.createSimpleSelectorRoundRectDrawable(6, 0, Theme.multAlpha(Theme.getColor(i2, resourcesProvider), 0.15f)));
            textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$EmptyLayout$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
            addView(textView3, LayoutHelper.createLinear(-2, -2, 1, 0, 0, 0, 38));
        }

        public void setQuery(String str) {
            this.textView.setText(LocaleController.formatString(C2807R.string.SearchMessagesFilterEmptyText, str));
        }
    }

    private int globalSearchPosition() {
        if (this.waitingResponseCount == 3) {
            return 0;
        }
        int size = this.publicPosts.isEmpty() ? 0 : this.publicPosts.size() + 1;
        if (!this.searchResultHashtags.isEmpty()) {
            return size + this.searchResultHashtags.size() + 1;
        }
        if (isRecentSearchDisplayed()) {
            size += getRecentItemsCount();
            if (!this.searchWas) {
                return size;
            }
        }
        if (!this.searchTopics.isEmpty()) {
            size = size + 1 + this.searchTopics.size();
        }
        if (!this.searchContacts.isEmpty()) {
            size += this.searchContacts.size() + 1;
        }
        int size2 = this.searchResult.size();
        int size3 = this.searchAdapterHelper.getLocalServerSearch().size();
        int i = size + size2 + size3;
        return size2 + size3 > 0 ? (getRecentItemsCount() <= 0 && this.searchTopics.isEmpty() && this.publicPosts.isEmpty()) ? i : i + 1 : i;
    }

    public void removeAd(TLRPC.TL_sponsoredPeer tL_sponsoredPeer) {
        int iIndexOf;
        int iGlobalSearchPosition;
        if (!this.sponsoredPeers.isEmpty() && (iIndexOf = this.sponsoredPeers.indexOf(tL_sponsoredPeer)) >= 0 && (iGlobalSearchPosition = globalSearchPosition()) < getItemCount()) {
            this.sponsoredPeers.remove(iIndexOf);
            notifyItemRemoved(iGlobalSearchPosition + 1 + iIndexOf);
            int size = this.searchAdapterHelper.getGlobalSearch().size();
            int size2 = this.sponsoredPeers.size();
            if (this.globalSearchCollapsed) {
                size = Math.min(3, size);
            }
            if (size2 + size <= 0) {
                notifyItemRemoved(iGlobalSearchPosition);
            }
        }
    }

    public void removeAllAds() {
        int iGlobalSearchPosition;
        if (!this.sponsoredPeers.isEmpty() && (iGlobalSearchPosition = globalSearchPosition()) < getItemCount()) {
            int size = this.sponsoredPeers.size();
            this.sponsoredPeers.clear();
            notifyItemRangeRemoved(iGlobalSearchPosition + 1, size);
            int size2 = this.searchAdapterHelper.getGlobalSearch().size();
            if (this.globalSearchCollapsed) {
                size2 = Math.min(3, size2);
            }
            if (size2 <= 0) {
                notifyItemRemoved(iGlobalSearchPosition);
            }
        }
    }

    public void seenSponsoredPeer(TLRPC.TL_sponsoredPeer tL_sponsoredPeer) {
        if (tL_sponsoredPeer == null) {
            return;
        }
        Iterator<byte[]> it = this.seenSponsoredPeers.iterator();
        while (it.hasNext()) {
            if (Arrays.equals(it.next(), tL_sponsoredPeer.random_id)) {
                return;
            }
        }
        this.seenSponsoredPeers.add(tL_sponsoredPeer.random_id);
        TLRPC.TL_messages_viewSponsoredMessage tL_messages_viewSponsoredMessage = new TLRPC.TL_messages_viewSponsoredMessage();
        tL_messages_viewSponsoredMessage.random_id = tL_sponsoredPeer.random_id;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_viewSponsoredMessage, null);
    }

    public void clickedSponsoredPeer(TLRPC.TL_sponsoredPeer tL_sponsoredPeer) {
        if (tL_sponsoredPeer == null) {
            return;
        }
        TLRPC.TL_messages_clickSponsoredMessage tL_messages_clickSponsoredMessage = new TLRPC.TL_messages_clickSponsoredMessage();
        tL_messages_clickSponsoredMessage.random_id = tL_sponsoredPeer.random_id;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_clickSponsoredMessage, null);
    }
}
