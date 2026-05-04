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
import org.telegram.messenger.C2484R;
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
    private ArrayList filterDialogIds;
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
    private ArrayList searchResult = new ArrayList();
    public ArrayList publicPosts = new ArrayList();
    private final ArrayList searchContacts = new ArrayList();
    private final ArrayList searchTopics = new ArrayList();
    private ArrayList searchResultNames = new ArrayList();
    private final ArrayList searchForumResultMessages = new ArrayList();
    private final ArrayList searchResultMessages = new ArrayList();
    private final ArrayList searchResultHashtags = new ArrayList();
    public final ArrayList sponsoredPeers = new ArrayList();
    private final HashSet seenSponsoredPeers = new HashSet();
    private int reqId = 0;
    private int reqForumId = 0;
    public int localMessagesLoadingRow = -1;
    public boolean showMoreAnimation = false;
    private int currentAccount = UserConfig.selectedAccount;
    private ArrayList recentSearchObjects = new ArrayList();
    private final ArrayList filteredRecentSearchObjects = new ArrayList();
    private final ArrayList filtered2RecentSearchObjects = new ArrayList();
    private String filteredRecentQuery = null;
    private LongSparseArray recentSearchObjectsById = new LongSparseArray();
    private ArrayList localTipDates = new ArrayList();
    private int messagesSectionPosition = -1;
    boolean globalSearchCollapsed = true;
    boolean phoneCollapsed = true;

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
        void setRecentSearch(ArrayList arrayList, LongSparseArray longSparseArray);
    }

    public static class RecentSearchObject {
        public int date;
        public long did;
        public TLObject object;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    protected abstract void openBotApp(TLRPC.User user);

    protected abstract void openPublicPosts();

    protected abstract void openSponsoredOptions(ProfileSearchCell profileSearchCell, TLRPC.TL_sponsoredPeer tL_sponsoredPeer);

    public enum Filter {
        All(0, C2484R.string.SearchMessagesFilterAll, C2484R.string.SearchMessagesFilterAllFrom),
        Private(8, C2484R.string.SearchMessagesFilterPrivate, C2484R.string.SearchMessagesFilterPrivateFrom),
        Groups(4, C2484R.string.SearchMessagesFilterGroup, C2484R.string.SearchMessagesFilterGroupFrom),
        Channels(2, C2484R.string.SearchMessagesFilterChannels, C2484R.string.SearchMessagesFilterChannelsFrom);

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

    public void setFilterDialogIds(ArrayList arrayList) {
        this.filterDialogIds = arrayList;
    }

    public boolean isSearching() {
        return this.waitingResponseCount > 0;
    }

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
        if (this.dialogsType != 14) {
            return true;
        }
        if (obj instanceof TLRPC.User) {
            if (((TLRPC.User) obj).bot) {
                return this.dialogsActivity.allowBots;
            }
            return this.dialogsActivity.allowUsers;
        }
        if (!(obj instanceof TLRPC.Chat)) {
            return false;
        }
        TLRPC.Chat chat = (TLRPC.Chat) obj;
        if (ChatObject.isChannel(chat)) {
            return this.dialogsActivity.allowChannels;
        }
        if (ChatObject.isMegagroup(chat)) {
            DialogsActivity dialogsActivity = this.dialogsActivity;
            return dialogsActivity.allowGroups || dialogsActivity.allowMegagroups;
        }
        DialogsActivity dialogsActivity2 = this.dialogsActivity;
        return dialogsActivity2.allowGroups || dialogsActivity2.allowLegacyGroups;
    }

    public DialogsSearchAdapter(Context context, DialogsActivity dialogsActivity, int i, int i2, DefaultItemAnimator defaultItemAnimator, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this.itemAnimator = defaultItemAnimator;
        this.dialogsActivity = dialogsActivity;
        this.resourcesProvider = resourcesProvider;
        SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(false) { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter.1
            @Override // org.telegram.ui.Adapters.SearchAdapterHelper
            protected boolean filter(TLObject tLObject) {
                return DialogsSearchAdapter.this.filter(tLObject);
            }
        };
        this.searchAdapterHelper = searchAdapterHelper;
        searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter.2
            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public /* synthetic */ LongSparseArray getExcludeCallParticipants() {
                return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeCallParticipants(this);
            }

            @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
            public /* synthetic */ LongSparseArray getExcludeUsers() {
                return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeUsers(this);
            }

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
            public void onSetHashtags(ArrayList arrayList, HashMap map) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    DialogsSearchAdapter.this.searchResultHashtags.add(((SearchAdapterHelper.HashtagObject) arrayList.get(i3)).hashtag);
                }
                DialogsSearchAdapter dialogsSearchAdapter = DialogsSearchAdapter.this;
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
        if (dialogsSearchAdapterDelegate != null && dialogsSearchAdapterDelegate.getSearchForumDialogId() != 0 && this.needMessagesSearch != 0 && (!TextUtils.isEmpty(this.lastMessagesSearchString) || !TextUtils.isEmpty(str))) {
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
            if (this.dialogsType != 15) {
                long searchForumDialogId = this.delegate.getSearchForumDialogId();
                final TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
                tL_messages_search.limit = 20;
                tL_messages_search.f1354q = str;
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
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchForumMessagesInternal$1(final String str, final int i, final int i2, final TLRPC.TL_messages_search tL_messages_search, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        final ArrayList arrayList = new ArrayList();
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
            LongSparseArray longSparseArray = new LongSparseArray();
            LongSparseArray longSparseArray2 = new LongSparseArray();
            for (int i3 = 0; i3 < messages_messages.chats.size(); i3++) {
                TLRPC.Chat chat = (TLRPC.Chat) messages_messages.chats.get(i3);
                longSparseArray.put(chat.id, chat);
            }
            for (int i4 = 0; i4 < messages_messages.users.size(); i4++) {
                TLRPC.User user = (TLRPC.User) messages_messages.users.get(i4);
                longSparseArray2.put(user.id, user);
            }
            for (int i5 = 0; i5 < messages_messages.messages.size(); i5++) {
                MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC.Message) messages_messages.messages.get(i5), longSparseArray2, longSparseArray, false, true);
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
                    TLRPC.Message message = (TLRPC.Message) messages_messages.messages.get(i3);
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
        if (this.needMessagesSearch != 0 && (!TextUtils.isEmpty(this.lastMessagesSearchString) || !TextUtils.isEmpty(str))) {
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
                }
            } else {
                final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal = new TLRPC.TL_messages_searchGlobal();
                int i3 = this.currentMessagesFilter.flags;
                tL_messages_searchGlobal.broadcasts_only = (i3 & 2) != 0;
                tL_messages_searchGlobal.groups_only = (i3 & 4) != 0;
                tL_messages_searchGlobal.users_only = (i3 & 8) != 0;
                tL_messages_searchGlobal.limit = 20;
                tL_messages_searchGlobal.f1356q = str;
                tL_messages_searchGlobal.filter = new TLRPC.TL_inputMessagesFilterEmpty();
                tL_messages_searchGlobal.flags |= 1;
                tL_messages_searchGlobal.folder_id = this.folderId;
                if (!str.equals(this.lastMessagesSearchString)) {
                    this.forceLoadingMessages = false;
                }
                if (str.equals(this.lastMessagesSearchString) && this.lastMessagesSearchFilterFlags == this.currentMessagesFilter.flags && !this.searchResultMessages.isEmpty() && this.lastMessagesSearchId == this.lastSearchId) {
                    ArrayList arrayList = this.searchResultMessages;
                    MessageObject messageObject = (MessageObject) arrayList.get(arrayList.size() - 1);
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
                final int i4 = this.lastReqId + 1;
                this.lastReqId = i4;
                this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_searchGlobal, new RequestDelegate() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda30
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$searchMessagesInternal$4(str, i4, i, tL_messages_searchGlobal, tLObject, tL_error);
                    }
                }, 2);
            }
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
                TLRPC.Chat chat = (TLRPC.Chat) messages_messages.chats.get(i3);
                longSparseArray.put(chat.id, chat);
            }
            for (int i4 = 0; i4 < messages_messages.users.size(); i4++) {
                TLRPC.User user = (TLRPC.User) messages_messages.users.get(i4);
                longSparseArray2.put(user.id, user);
            }
            for (int i5 = 0; i5 < messages_messages.messages.size(); i5++) {
                MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC.Message) messages_messages.messages.get(i5), longSparseArray2, longSparseArray, false, true);
                arrayList.add(messageObject);
                messageObject.setQuery(str);
            }
        }
        final HashSet hashSet = new HashSet();
        if (tL_error == null) {
            TLRPC.messages_Messages messages_messages2 = (TLRPC.messages_Messages) tLObject;
            for (int i6 = 0; i6 < messages_messages2.messages.size(); i6++) {
                TLRPC.Message message = (TLRPC.Message) messages_messages2.messages.get(i6);
                long dialogId = MessageObject.getDialogId(message);
                if ((message.out ? MessagesController.getInstance(this.currentAccount).dialogs_read_outbox_max : MessagesController.getInstance(this.currentAccount).dialogs_read_inbox_max).get(Long.valueOf(dialogId)) == null) {
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
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e4 A[SYNTHETIC] */
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
                    TLRPC.Message message = (TLRPC.Message) messages_messages.messages.get(i4);
                    int i5 = MessagesController.getInstance(this.currentAccount).deletedHistory.get(MessageObject.getDialogId(message));
                    if (i5 == 0 || message.id > i5) {
                        MessageObject messageObject = (MessageObject) arrayList.get(i4);
                        if (!this.searchForumResultMessages.isEmpty()) {
                            for (0; i3 < this.searchForumResultMessages.size(); i3 + 1) {
                                MessageObject messageObject2 = (MessageObject) this.searchForumResultMessages.get(i3);
                                i3 = (messageObject2 == null || messageObject == null || messageObject.getId() != messageObject2.getId() || messageObject.getDialogId() != messageObject2.getDialogId()) ? i3 + 1 : 0;
                            }
                            this.searchResultMessages.add(messageObject);
                            num = (!message.out ? MessagesController.getInstance(this.currentAccount).dialogs_read_outbox_max : MessagesController.getInstance(this.currentAccount).dialogs_read_inbox_max).get(Long.valueOf(MessageObject.getDialogId(message)));
                            if (num != null) {
                                message.unread = num.intValue() < message.id;
                            }
                        } else {
                            this.searchResultMessages.add(messageObject);
                            num = (!message.out ? MessagesController.getInstance(this.currentAccount).dialogs_read_outbox_max : MessagesController.getInstance(this.currentAccount).dialogs_read_inbox_max).get(Long.valueOf(MessageObject.getDialogId(message)));
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
            FileLog.m955e(e);
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

    public void putRecentSearch(final long j, TLObject tLObject) {
        RecentSearchObject recentSearchObject = (RecentSearchObject) this.recentSearchObjectsById.get(j);
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
        MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putRecentSearch$9(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putRecentSearch$9(long j) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = MessagesStorage.getInstance(this.currentAccount).getDatabase().executeFast("REPLACE INTO search_recent VALUES(?, ?)");
            sQLitePreparedStatementExecuteFast.requery();
            sQLitePreparedStatementExecuteFast.bindLong(1, j);
            sQLitePreparedStatementExecuteFast.bindInteger(2, (int) (System.currentTimeMillis() / 1000));
            sQLitePreparedStatementExecuteFast.step();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m955e(e);
        }
    }

    public void clearRecentSearch() {
        final StringBuilder sb;
        if (this.searchWas) {
            sb = null;
            while (this.filtered2RecentSearchObjects.size() > 0) {
                RecentSearchObject recentSearchObject = (RecentSearchObject) this.filtered2RecentSearchObjects.remove(0);
                this.recentSearchObjects.remove(recentSearchObject);
                this.filteredRecentSearchObjects.remove(recentSearchObject);
                this.recentSearchObjectsById.remove(recentSearchObject.did);
                if (sb == null) {
                    sb = new StringBuilder("did IN (");
                    sb.append(recentSearchObject.did);
                } else {
                    sb.append(", ");
                    sb.append(recentSearchObject.did);
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
        MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clearRecentSearch$10(sb);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearRecentSearch$10(StringBuilder sb) {
        try {
            sb.insert(0, "DELETE FROM search_recent WHERE ");
            MessagesStorage.getInstance(this.currentAccount).getDatabase().executeFast(sb.toString()).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m955e(e);
        }
    }

    public void removeRecentSearch(final long j) {
        RecentSearchObject recentSearchObject = (RecentSearchObject) this.recentSearchObjectsById.get(j);
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
                this.f$0.lambda$removeRecentSearch$11(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeRecentSearch$11(long j) {
        try {
            MessagesStorage.getInstance(this.currentAccount).getDatabase().executeFast("DELETE FROM search_recent WHERE did = " + j).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m955e(e);
        }
    }

    public void addHashtagsFromMessage(CharSequence charSequence) {
        this.searchAdapterHelper.addHashtagsFromMessage(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setRecentSearch, reason: merged with bridge method [inline-methods] */
    public void lambda$loadRecentSearch$5(ArrayList arrayList, LongSparseArray longSparseArray) {
        this.recentSearchObjects = arrayList;
        this.recentSearchObjectsById = longSparseArray;
        for (int i = 0; i < this.recentSearchObjects.size(); i++) {
            RecentSearchObject recentSearchObject = (RecentSearchObject) this.recentSearchObjects.get(i);
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
            updateSearchResults(new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList(), this.lastSearchId);
        } else {
            MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogsInternal$13(lowerCase, i, str);
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
    public /* synthetic */ void lambda$searchDialogsInternal$13(String str, int i, String str2) {
        ArrayList<Object> arrayList = new ArrayList<>();
        ArrayList<CharSequence> arrayList2 = new ArrayList<>();
        ArrayList<TLRPC.User> arrayList3 = new ArrayList<>();
        ArrayList arrayList4 = new ArrayList();
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
                FileLog.m955e(e);
            }
        }
        updateSearchResults(arrayList, arrayList2, arrayList3, arrayList4, i);
        FiltersView.fillTipDates(str, this.localTipDates);
        this.localTipArchive = false;
        if (str.length() >= 3 && (LocaleController.getString(C2484R.string.ArchiveSearchFilter).toLowerCase().startsWith(str) || "archive".startsWith(str2))) {
            this.localTipArchive = true;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogsInternal$12();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogsInternal$12() {
        FilteredSearchView.Delegate delegate = this.filtersDelegate;
        if (delegate != null) {
            delegate.updateFiltersView(false, null, this.localTipDates, this.localTipArchive);
        }
    }

    private void updateSearchResults(final ArrayList arrayList, final ArrayList arrayList2, final ArrayList arrayList3, ArrayList arrayList4, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateSearchResults$15(i, arrayList, arrayList2, arrayList3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSearchResults$15(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
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
            if (j != 0 && ((TLRPC.Dialog) MessagesController.getInstance(this.currentAccount).dialogs_dict.get(j)) == null) {
                MessagesStorage.getInstance(this.currentAccount).getDialogFolderId(j, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda39
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i4) {
                        this.f$0.lambda$updateSearchResults$14(j, obj, i4);
                    }
                });
            }
            if (recentSearchAvailable() && !(obj instanceof TLRPC.EncryptedChat)) {
                DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
                boolean z = dialogsSearchAdapterDelegate != null && dialogsSearchAdapterDelegate.getSearchForumDialogId() == j;
                for (int i4 = 0; !z && i4 < size; i4++) {
                    RecentSearchObject recentSearchObject = (RecentSearchObject) this.filtered2RecentSearchObjects.get(i4);
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
    public /* synthetic */ void lambda$updateSearchResults$14(long j, Object obj, int i) {
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
            if (strTrim == null || strTrim.length() < 4 || RemoteUtils.getBooleanConfigValue("hide_ads", false).booleanValue() || (UserConfig.getInstance(this.currentAccount).isPremium() && MessagesController.getInstance(this.currentAccount).isSponsoredDisabled())) {
                this.sponsoredQuery = null;
            } else {
                TLRPC.TL_contacts_getSponsoredPeers tL_contacts_getSponsoredPeers = new TLRPC.TL_contacts_getSponsoredPeers();
                this.sponsoredQuery = strTrim;
                tL_contacts_getSponsoredPeers.f1343q = strTrim;
                this.sponsoredReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_getSponsoredPeers, new RequestDelegate() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda8
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$searchDialogs$17(tLObject, tL_error);
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
                ArrayList hashtags = this.searchAdapterHelper.getHashtags();
                for (int i3 = 0; i3 < hashtags.size(); i3++) {
                    this.searchResultHashtags.add(((SearchAdapterHelper.HashtagObject) hashtags.get(i3)).hashtag);
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
                this.f$0.lambda$searchDialogs$19(strTrim, i4, str);
            }
        };
        this.searchRunnable = runnable3;
        dispatchQueue.postRunnable(runnable3, 300L);
        if (str2 != null) {
            this.waitingResponseCount++;
            Runnable runnable4 = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$22(i4, str2);
                }
            };
            this.searchHashtagRunnable = runnable4;
            AndroidUtilities.runOnUIThread(runnable4, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$17(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogs$16(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$16(TLObject tLObject) {
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
            this.sponsoredPeers.addAll(tL_contacts_sponsoredPeers.peers);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$19(final String str, final int i, final String str2) {
        this.searchRunnable = null;
        searchDialogsInternal(str, i);
        if (this.dialogsType == 15) {
            this.waitingResponseCount -= 2;
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogs$18(i, str, str2);
            }
        };
        this.searchRunnable2 = runnable;
        AndroidUtilities.runOnUIThread(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$18(int i, String str, String str2) {
        int i2;
        long j;
        boolean z;
        this.searchRunnable2 = null;
        if (i != this.lastSearchId) {
            return;
        }
        if (this.needMessagesSearch != 2 && (i2 = this.dialogsType) != 6 && i2 != 5 && this.delegate.getSearchForumDialogId() == 0) {
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
    public /* synthetic */ void lambda$searchDialogs$22(final int i, final String str) {
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
                this.f$0.lambda$searchDialogs$21(i, str, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$21(final int i, final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchDialogs$20(i, tLObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchDialogs$20(int i, TLObject tLObject, String str) {
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
                this.publicPosts.add(new MessageObject(this.currentAccount, (TLRPC.Message) messages_messages.messages.get(i2), false, true));
            }
            DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
            if (dialogsSearchAdapterDelegate != null) {
                dialogsSearchAdapterDelegate.searchStateChanged(this.waitingResponseCount > 0, true);
            }
            notifyDataSetChanged();
        }
    }

    public int getRecentItemsCount() {
        ArrayList arrayList = this.searchWas ? this.filtered2RecentSearchObjects : this.filteredRecentSearchObjects;
        return (!arrayList.isEmpty() ? arrayList.size() + 1 : 0) + (hasHints() ? 1 : 0);
    }

    public int getRecentResultsCount() {
        ArrayList arrayList = this.searchWas ? this.filtered2RecentSearchObjects : this.filteredRecentSearchObjects;
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
        int size4 = this.searchAdapterHelper.getGlobalSearch().size() + this.sponsoredPeers.size();
        if (size4 > 3 && this.globalSearchCollapsed) {
            size4 = 3;
        }
        int size5 = this.searchAdapterHelper.getPhoneSearch().size();
        if (size5 > 3 && this.phoneCollapsed) {
            size5 = 3;
        }
        if (size2 + size3 > 0 && (getRecentItemsCount() > 0 || !this.searchTopics.isEmpty() || !this.publicPosts.isEmpty())) {
            i++;
        }
        if (size4 != 0) {
            i += size4 + 1;
        }
        if (size5 != 0) {
            i += size5;
        }
        int size6 = this.searchForumResultMessages.size();
        if (size6 != 0) {
            i += size6 + 1 + (!this.localMessagesSearchEndReached ? 1 : 0);
        }
        if (!this.localMessagesSearchEndReached) {
            this.localMessagesLoadingRow = i;
        }
        int size7 = this.searchResultMessages.size();
        if ((this.currentMessagesFilter != Filter.All || this.forceLoadingMessages) && this.searchResultMessages.isEmpty()) {
            size7 = this.forceLoadingMessages ? 3 : 1;
        }
        int i2 = (this.searchForumResultMessages.isEmpty() || this.localMessagesSearchEndReached) ? size7 : 0;
        if (i2 != 0) {
            i += i2 + 1 + (!this.messagesSearchEndReached ? 1 : 0);
        }
        if (this.localMessagesSearchEndReached) {
            this.localMessagesLoadingRow = i;
        }
        this.currentItemCount = i;
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [boolean] */
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
            ArrayList arrayList = this.searchWas ? this.filtered2RecentSearchObjects : this.filteredRecentSearchObjects;
            if (i > HasHints && (i2 = (i - 1) - (HasHints == true ? 1 : 0)) < arrayList.size()) {
                TLObject tLObject = ((RecentSearchObject) arrayList.get(i2)).object;
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
        ArrayList globalSearch = this.searchAdapterHelper.getGlobalSearch();
        ArrayList localServerSearch = this.searchAdapterHelper.getLocalServerSearch();
        ArrayList phoneSearch = this.searchAdapterHelper.getPhoneSearch();
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
        int i4 = 0;
        int size5 = (globalSearch.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : globalSearch.size() + this.sponsoredPeers.size() + 1;
        if (size5 > 4 && this.globalSearchCollapsed) {
            size5 = 4;
        }
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
        if (i7 <= 0 || i7 >= size5) {
            size = i7 - size5;
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
        int size6 = this.searchForumResultMessages.isEmpty() ? 0 : this.searchForumResultMessages.size() + 1;
        if (size > 0 && size <= this.searchForumResultMessages.size()) {
            return this.searchForumResultMessages.get(size - 1);
        }
        if (!this.localMessagesSearchEndReached && !this.searchForumResultMessages.isEmpty()) {
            i4 = 1;
        }
        int i9 = size - (size6 + i4);
        if (!this.searchResultMessages.isEmpty()) {
            this.searchResultMessages.size();
        }
        if (i9 <= 0 || i9 > this.searchResultMessages.size()) {
            return null;
        }
        return this.searchResultMessages.get(i9 - 1);
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [boolean] */
    public boolean isGlobalSearch(int i) {
        if (!this.searchWas || !this.searchResultHashtags.isEmpty()) {
            return false;
        }
        if (!this.publicPosts.isEmpty()) {
            i -= this.publicPosts.size() + 1;
        }
        if (isRecentSearchDisplayed()) {
            ?? HasHints = hasHints();
            ArrayList arrayList = this.searchWas ? this.filtered2RecentSearchObjects : this.filteredRecentSearchObjects;
            if (i > HasHints && (i - 1) - (HasHints == true ? 1 : 0) < arrayList.size()) {
                return false;
            }
            i -= getRecentItemsCount();
        }
        ArrayList globalSearch = this.searchAdapterHelper.getGlobalSearch();
        ArrayList localServerSearch = this.searchAdapterHelper.getLocalServerSearch();
        int size = this.searchResult.size();
        int size2 = localServerSearch.size();
        int size3 = this.searchAdapterHelper.getPhoneSearch().size();
        if (size3 > 3 && this.phoneCollapsed) {
            size3 = 3;
        }
        int size4 = (globalSearch.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : globalSearch.size() + this.sponsoredPeers.size() + 1;
        if (size4 > 4 && this.globalSearchCollapsed) {
            size4 = 4;
        }
        int size5 = this.searchContacts.size();
        if (size5 > 0) {
            if (i >= 0 && i < size5) {
                return false;
            }
            i -= size5 + 1;
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
        if (i4 > 0 && i4 < size4) {
            return true;
        }
        int i5 = i4 - size4;
        int size6 = this.searchForumResultMessages.isEmpty() ? 0 : this.searchForumResultMessages.size() + 1;
        if (i5 > 0 && i5 < size6) {
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
    public /* synthetic */ void lambda$onCreateViewHolder$23(View view, int i) {
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
    public /* synthetic */ boolean lambda$onCreateViewHolder$24(View view, int i) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate == null) {
            return true;
        }
        dialogsSearchAdapterDelegate.needRemoveHint(((Long) view.getTag()).longValue());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateViewHolder$25() {
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
        View topicSearchCell;
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
                topicSearchCell = new TopicSearchCell(this.mContext);
                viewShowPremiumBlock = topicSearchCell;
                break;
            case 4:
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext);
                flickerLoadingView.setViewType(1);
                flickerLoadingView.setIsSingleCell(true);
                topicSearchCell = flickerLoadingView;
                viewShowPremiumBlock = topicSearchCell;
                break;
            case 5:
                topicSearchCell = new HashtagSearchCell(this.mContext);
                viewShowPremiumBlock = topicSearchCell;
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
                        this.f$0.lambda$onCreateViewHolder$23(view, i2);
                    }
                });
                recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda6
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
                    public final boolean onItemClick(View view, int i2) {
                        return this.f$0.lambda$onCreateViewHolder$24(view, i2);
                    }
                });
                this.innerListView = recyclerListView;
                topicSearchCell = recyclerListView;
                viewShowPremiumBlock = topicSearchCell;
                break;
            case 7:
            default:
                topicSearchCell = new TextCell(this.mContext, 16, false);
                viewShowPremiumBlock = topicSearchCell;
                break;
            case 8:
                topicSearchCell = new ProfileSearchCell(this.mContext);
                viewShowPremiumBlock = topicSearchCell;
                break;
            case 10:
                EmptyLayout emptyLayout = new EmptyLayout(this.mContext, this.resourcesProvider, new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCreateViewHolder$25();
                    }
                });
                this.messagesEmptyLayout = emptyLayout;
                emptyLayout.setQuery(this.lastMessagesSearchString);
                topicSearchCell = emptyLayout;
                viewShowPremiumBlock = topicSearchCell;
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
    /* JADX WARN: Removed duplicated region for block: B:187:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04a5  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0525  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0539  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0544  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x05bc  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x05c0  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0682  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x06ce  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x06de  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x06f8  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x06ff  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x074b  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0769  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x079d  */
    /* JADX WARN: Removed duplicated region for block: B:373:0x07a2  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x07a8  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x07ab  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x07c8  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x07ca  */
    /* JADX WARN: Type inference failed for: r6v62, types: [boolean] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        char c;
        int i2;
        TLRPC.User user;
        TLRPC.Chat chat;
        ArrayList arrayList;
        String publicUsername;
        TLRPC.EncryptedChat encryptedChat;
        int i3;
        int size;
        int size2;
        int i4;
        int size3;
        int size4;
        CharSequence charSequence;
        CharSequence charSequence2;
        boolean z;
        boolean z2;
        CharSequence charSequence3;
        CharSequence charSequence4;
        boolean z3;
        CharSequence string;
        CharSequence charSequence5;
        boolean z4;
        boolean z5;
        CharSequence charSequenceConcat;
        CharSequence charSequence6;
        int i5;
        CharSequence pluralStringSpaced;
        CharSequence charSequenceConcat2;
        String monoForumTitle;
        CharSequence charSequence7;
        CharSequence charSequence8;
        CharSequence charSequence9;
        int i6;
        CharSequence charSequence10;
        int i7;
        String str;
        String str2;
        String publicUsername2;
        ArrayList arrayList2;
        int recentItemsCount;
        String string2;
        String string3;
        CharSequence charSequence11;
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
                    c = 2;
                    long peerDialogId = DialogObject.getPeerDialogId(tL_sponsoredPeer.peer);
                    if (peerDialogId >= 0) {
                        user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
                        if (user != null) {
                            ArrayList arrayList3 = user.usernames;
                            publicUsername2 = DialogObject.getPublicUsername(user, this.currentMessagesQuery);
                            arrayList2 = arrayList3;
                            chat = null;
                            i2 = 1;
                            arrayList = arrayList2;
                            publicUsername = publicUsername2;
                        } else {
                            chat = null;
                            arrayList2 = null;
                            publicUsername2 = null;
                            i2 = 1;
                            arrayList = arrayList2;
                            publicUsername = publicUsername2;
                        }
                    } else {
                        TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId));
                        if (chat2 != null) {
                            ArrayList arrayList4 = chat2.usernames;
                            publicUsername2 = DialogObject.getPublicUsername(chat2, this.currentMessagesQuery);
                            arrayList2 = arrayList4;
                            chat = chat2;
                            user = null;
                            i2 = 1;
                            arrayList = arrayList2;
                            publicUsername = publicUsername2;
                        } else {
                            chat = chat2;
                            user = null;
                            arrayList2 = null;
                            publicUsername2 = null;
                            i2 = 1;
                            arrayList = arrayList2;
                            publicUsername = publicUsername2;
                        }
                    }
                    if (!this.publicPosts.isEmpty()) {
                        size5 -= this.publicPosts.size() + 1;
                    }
                    if (isRecentSearchDisplayed()) {
                        if (size5 < getRecentItemsCount()) {
                            profileSearchCell.useSeparator = size5 != getRecentItemsCount() + (-1) ? i2 : 0;
                            i3 = i2;
                        } else {
                            i3 = 0;
                        }
                        size5 -= getRecentItemsCount();
                    } else {
                        i3 = 0;
                    }
                    if (!this.searchTopics.isEmpty()) {
                        size5 -= this.searchTopics.size() + 1;
                    }
                    ArrayList globalSearch = this.searchAdapterHelper.getGlobalSearch();
                    ArrayList phoneSearch = this.searchAdapterHelper.getPhoneSearch();
                    size = this.searchResult.size();
                    size2 = this.searchAdapterHelper.getLocalServerSearch().size();
                    if (size + size2 > 0) {
                        i4 = size2;
                        if (getRecentItemsCount() > 0 || !this.searchTopics.isEmpty() || !this.publicPosts.isEmpty()) {
                            size5--;
                        }
                    } else {
                        i4 = size2;
                    }
                    size3 = phoneSearch.size();
                    if (size3 > 3 && this.phoneCollapsed) {
                        size3 = 3;
                    }
                    int i8 = (size3 <= 0 || !(phoneSearch.get(size3 + (-1)) instanceof String)) ? size3 : size3 - 2;
                    size4 = (globalSearch.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : globalSearch.size() + this.sponsoredPeers.size() + 1;
                    if (size4 > 4 && this.globalSearchCollapsed) {
                        size4 = 4;
                    }
                    if (i3 == 0) {
                        profileSearchCell.useSeparator = (size5 == (getItemCount() - getRecentItemsCount()) + (-1) || size5 == ((i8 + size) + i4) + (-1) || size5 == (((size + size4) + size3) + i4) + (-1)) ? 0 : i2;
                    }
                    if (size5 >= 0 && size5 < this.searchResult.size() && user == null) {
                        charSequence = (CharSequence) this.searchResultNames.get(size5);
                        String publicUsername3 = UserObject.getPublicUsername(user);
                        if (charSequence != null && user != null && publicUsername3 != null) {
                            if (charSequence.toString().startsWith("@" + publicUsername3)) {
                            }
                            if (charSequence != null) {
                                z = z6;
                                z2 = i3;
                                charSequence3 = charSequence;
                                charSequence4 = charSequence2;
                            } else {
                                String lastFoundUsername = i3 != 0 ? this.filteredRecentQuery : this.searchAdapterHelper.getLastFoundUsername();
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
                                        charSequence7 = charSequence;
                                        if (iIndexOfIgnoreCase != -1) {
                                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(monoForumTitle);
                                            z = z6;
                                            spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4), iIndexOfIgnoreCase, lastFoundUsername.length() + iIndexOfIgnoreCase, 33);
                                            charSequence8 = spannableStringBuilder;
                                        }
                                        if (arrayList != null || arrayList.size() <= (i7 = i2)) {
                                            charSequence9 = charSequence8;
                                            i6 = i3;
                                        } else {
                                            String strSubstring = lastFoundUsername.startsWith("@") ? lastFoundUsername.substring(i7) : lastFoundUsername;
                                            i6 = i3;
                                            int size6 = arrayList.size();
                                            int i9 = 0;
                                            CharSequence charSequence12 = charSequence8;
                                            while (true) {
                                                if (i9 < size6) {
                                                    Object obj = arrayList.get(i9);
                                                    i9++;
                                                    TLRPC.TL_username tL_username = (TLRPC.TL_username) obj;
                                                    CharSequence charSequence13 = charSequence12;
                                                    if (tL_username.active && tL_username.username.startsWith(strSubstring)) {
                                                        str = tL_username.username;
                                                        charSequence9 = charSequence13;
                                                    } else {
                                                        charSequence12 = charSequence13;
                                                    }
                                                } else {
                                                    charSequence9 = charSequence12;
                                                    str = null;
                                                }
                                            }
                                            if (str == null) {
                                                int size7 = arrayList.size();
                                                int i10 = 0;
                                                while (i10 < size7) {
                                                    Object obj2 = arrayList.get(i10);
                                                    i10++;
                                                    TLRPC.TL_username tL_username2 = (TLRPC.TL_username) obj2;
                                                    String str3 = str;
                                                    if (tL_username2.active && tL_username2.username.contains(strSubstring)) {
                                                        str2 = tL_username2.username;
                                                        if (str2 != null) {
                                                            publicUsername = str2;
                                                        }
                                                    } else {
                                                        str = str3;
                                                    }
                                                }
                                                str2 = str;
                                                if (str2 != null) {
                                                }
                                            } else {
                                                str2 = str;
                                                if (str2 != null) {
                                                }
                                            }
                                        }
                                        if (publicUsername == null && (user == null || zIsGlobalSearch)) {
                                            if (lastFoundUsername.startsWith("@")) {
                                                lastFoundUsername = lastFoundUsername.substring(1);
                                            }
                                            try {
                                                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                                                spannableStringBuilder2.append((CharSequence) "@");
                                                spannableStringBuilder2.append((CharSequence) publicUsername);
                                                int iIndexOfIgnoreCase2 = AndroidUtilities.indexOfIgnoreCase(publicUsername, lastFoundUsername);
                                                charSequence10 = spannableStringBuilder2;
                                                if (iIndexOfIgnoreCase2 != -1) {
                                                    int length = lastFoundUsername.length();
                                                    if (iIndexOfIgnoreCase2 == 0) {
                                                        length++;
                                                    } else {
                                                        iIndexOfIgnoreCase2++;
                                                    }
                                                    spannableStringBuilder2.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4), iIndexOfIgnoreCase2, length + iIndexOfIgnoreCase2, 33);
                                                    charSequence10 = spannableStringBuilder2;
                                                }
                                            } catch (Exception e) {
                                                FileLog.m955e(e);
                                                charSequence10 = publicUsername;
                                            }
                                        } else {
                                            charSequence10 = charSequence7;
                                        }
                                        charSequence4 = charSequence9;
                                        charSequence3 = charSequence10;
                                        z2 = i6;
                                    } else {
                                        charSequence7 = charSequence;
                                    }
                                    z = z6;
                                    charSequence8 = charSequence2;
                                    if (arrayList != null) {
                                        charSequence9 = charSequence8;
                                        i6 = i3;
                                        if (publicUsername == null) {
                                            charSequence10 = charSequence7;
                                            charSequence4 = charSequence9;
                                            charSequence3 = charSequence10;
                                            z2 = i6;
                                        }
                                    }
                                    break;
                                }
                            }
                            profileSearchCell.setChecked(false, false);
                            if (user == null || user.id != this.selfUserId || this.dialogsType == 16) {
                                z3 = false;
                                charSequence5 = charSequence3;
                                string = charSequence4;
                            } else {
                                charSequence5 = null;
                                z3 = true;
                                string = LocaleController.getString(C2484R.string.SavedMessages);
                            }
                            CharSequence charSequence14 = string;
                            if (chat != null && chat.participants_count != 0) {
                                if (ChatObject.isChannel(chat) && !chat.megagroup) {
                                    pluralStringSpaced = LocaleController.formatPluralStringSpaced("Subscribers", chat.participants_count);
                                } else {
                                    pluralStringSpaced = LocaleController.formatPluralStringSpaced("Members", chat.participants_count);
                                }
                                if (charSequence5 instanceof SpannableStringBuilder) {
                                    ((SpannableStringBuilder) charSequence5).append((CharSequence) ", ").append(pluralStringSpaced);
                                    charSequenceConcat2 = charSequence5;
                                } else if (TextUtils.isEmpty(charSequence5)) {
                                    charSequenceConcat2 = pluralStringSpaced;
                                } else {
                                    CharSequence[] charSequenceArr = new CharSequence[3];
                                    charSequenceArr[0] = charSequence5;
                                    charSequenceArr[1] = ", ";
                                    charSequenceArr[c] = pluralStringSpaced;
                                    charSequenceConcat2 = TextUtils.concat(charSequenceArr);
                                }
                                charSequence6 = charSequenceConcat2;
                                z4 = true;
                                z5 = false;
                            } else if (user == null && user.bot && (i5 = user.bot_active_users) != 0) {
                                CharSequence pluralStringSpaced2 = LocaleController.formatPluralStringSpaced("BotUsersShort", i5);
                                if (charSequence5 instanceof SpannableStringBuilder) {
                                    ((SpannableStringBuilder) charSequence5).append((CharSequence) ", ").append(pluralStringSpaced2);
                                    z4 = true;
                                    z5 = false;
                                    charSequenceConcat = charSequence5;
                                    charSequence6 = charSequenceConcat;
                                } else if (TextUtils.isEmpty(charSequence5)) {
                                    z4 = true;
                                    z5 = false;
                                    charSequence6 = pluralStringSpaced2;
                                } else {
                                    CharSequence[] charSequenceArr2 = new CharSequence[3];
                                    z5 = false;
                                    charSequenceArr2[0] = charSequence5;
                                    z4 = true;
                                    charSequenceArr2[1] = ", ";
                                    charSequenceArr2[c] = pluralStringSpaced2;
                                    charSequenceConcat = TextUtils.concat(charSequenceArr2);
                                    charSequence6 = charSequenceConcat;
                                }
                            } else {
                                z4 = true;
                                z5 = false;
                                charSequenceConcat = charSequence5;
                                charSequence6 = charSequenceConcat;
                            }
                            profileSearchCell.allowBotOpenButton(z2, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                                @Override // org.telegram.messenger.Utilities.Callback
                                public final void run(Object obj3) {
                                    this.f$0.openBotApp((TLRPC.User) obj3);
                                }
                            });
                            profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                                @Override // org.telegram.messenger.Utilities.Callback2
                                public final void run(Object obj3, Object obj4) {
                                    this.f$0.openSponsoredOptions((ProfileSearchCell) obj3, (TLRPC.TL_sponsoredPeer) obj4);
                                }
                            });
                            profileSearchCell.setAd(z ? (TLRPC.TL_sponsoredPeer) item : null);
                            profileSearchCell.setData(user != null ? user : chat, encryptedChat, charSequence14, charSequence6, true, z3);
                            profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z4 : z5);
                        }
                        charSequence2 = charSequence;
                        charSequence = null;
                        if (charSequence != null) {
                        }
                        profileSearchCell.setChecked(false, false);
                        if (user == null) {
                            z3 = false;
                            charSequence5 = charSequence3;
                            string = charSequence4;
                        }
                        CharSequence charSequence142 = string;
                        if (chat != null) {
                            if (user == null) {
                                z4 = true;
                                z5 = false;
                                charSequenceConcat = charSequence5;
                                charSequence6 = charSequenceConcat;
                            }
                        }
                        profileSearchCell.allowBotOpenButton(z2, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj3) {
                                this.f$0.openBotApp((TLRPC.User) obj3);
                            }
                        });
                        profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                            @Override // org.telegram.messenger.Utilities.Callback2
                            public final void run(Object obj3, Object obj4) {
                                this.f$0.openSponsoredOptions((ProfileSearchCell) obj3, (TLRPC.TL_sponsoredPeer) obj4);
                            }
                        });
                        profileSearchCell.setAd(z ? (TLRPC.TL_sponsoredPeer) item : null);
                        profileSearchCell.setData(user != null ? user : chat, encryptedChat, charSequence142, charSequence6, true, z3);
                        profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z4 : z5);
                    } else {
                        charSequence = null;
                    }
                    charSequence2 = null;
                    if (charSequence != null) {
                    }
                    profileSearchCell.setChecked(false, false);
                    if (user == null) {
                    }
                    CharSequence charSequence1422 = string;
                    if (chat != null) {
                    }
                    profileSearchCell.allowBotOpenButton(z2, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj3) {
                            this.f$0.openBotApp((TLRPC.User) obj3);
                        }
                    });
                    profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj3, Object obj4) {
                            this.f$0.openSponsoredOptions((ProfileSearchCell) obj3, (TLRPC.TL_sponsoredPeer) obj4);
                        }
                    });
                    profileSearchCell.setAd(z ? (TLRPC.TL_sponsoredPeer) item : null);
                    profileSearchCell.setData(user != null ? user : chat, encryptedChat, charSequence1422, charSequence6, true, z3);
                    profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z4 : z5);
                } else {
                    c = 2;
                    if (item instanceof TLRPC.User) {
                        user = (TLRPC.User) item;
                        i2 = 1;
                        arrayList = user.usernames;
                        publicUsername = DialogObject.getPublicUsername(user, this.currentMessagesQuery);
                        chat = null;
                    } else if (item instanceof TLRPC.Chat) {
                        chat = (TLRPC.Chat) item;
                        TLRPC.Chat chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(chat.id));
                        if (chat3 != null) {
                            chat = chat3;
                        }
                        arrayList = chat.usernames;
                        i2 = 1;
                        publicUsername = DialogObject.getPublicUsername(chat, this.currentMessagesQuery);
                        user = null;
                    } else if (item instanceof TLRPC.EncryptedChat) {
                        TLRPC.EncryptedChat encryptedChat2 = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(((TLRPC.EncryptedChat) item).id));
                        encryptedChat = encryptedChat2;
                        user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat2.user_id));
                        i2 = 1;
                        chat = null;
                        arrayList = null;
                        publicUsername = null;
                        if (!this.publicPosts.isEmpty()) {
                        }
                        if (isRecentSearchDisplayed()) {
                        }
                        if (!this.searchTopics.isEmpty()) {
                        }
                        ArrayList globalSearch2 = this.searchAdapterHelper.getGlobalSearch();
                        ArrayList phoneSearch2 = this.searchAdapterHelper.getPhoneSearch();
                        size = this.searchResult.size();
                        size2 = this.searchAdapterHelper.getLocalServerSearch().size();
                        if (size + size2 > 0) {
                        }
                        size3 = phoneSearch2.size();
                        if (size3 > 3) {
                            size3 = 3;
                        }
                        if (size3 <= 0) {
                        }
                        if (globalSearch2.isEmpty()) {
                        }
                        if (size4 > 4) {
                            size4 = 4;
                        }
                        if (i3 == 0) {
                        }
                        if (size5 >= 0) {
                            charSequence = null;
                            charSequence2 = null;
                        }
                        if (charSequence != null) {
                        }
                        profileSearchCell.setChecked(false, false);
                        if (user == null) {
                        }
                        CharSequence charSequence14222 = string;
                        if (chat != null) {
                        }
                        profileSearchCell.allowBotOpenButton(z2, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj3) {
                                this.f$0.openBotApp((TLRPC.User) obj3);
                            }
                        });
                        profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                            @Override // org.telegram.messenger.Utilities.Callback2
                            public final void run(Object obj3, Object obj4) {
                                this.f$0.openSponsoredOptions((ProfileSearchCell) obj3, (TLRPC.TL_sponsoredPeer) obj4);
                            }
                        });
                        profileSearchCell.setAd(z ? (TLRPC.TL_sponsoredPeer) item : null);
                        profileSearchCell.setData(user != null ? user : chat, encryptedChat, charSequence14222, charSequence6, true, z3);
                        profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z4 : z5);
                    } else {
                        i2 = 1;
                        user = null;
                        chat = null;
                        arrayList = null;
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
                ArrayList globalSearch22 = this.searchAdapterHelper.getGlobalSearch();
                ArrayList phoneSearch22 = this.searchAdapterHelper.getPhoneSearch();
                size = this.searchResult.size();
                size2 = this.searchAdapterHelper.getLocalServerSearch().size();
                if (size + size2 > 0) {
                }
                size3 = phoneSearch22.size();
                if (size3 > 3) {
                }
                if (size3 <= 0) {
                }
                if (globalSearch22.isEmpty()) {
                }
                if (size4 > 4) {
                }
                if (i3 == 0) {
                }
                if (size5 >= 0) {
                }
                if (charSequence != null) {
                }
                profileSearchCell.setChecked(false, false);
                if (user == null) {
                }
                CharSequence charSequence142222 = string;
                if (chat != null) {
                }
                profileSearchCell.allowBotOpenButton(z2, new Utilities.Callback() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda11
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj3) {
                        this.f$0.openBotApp((TLRPC.User) obj3);
                    }
                });
                profileSearchCell.setOnSponsoredOptionsClick(new Utilities.Callback2() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda13
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj3, Object obj4) {
                        this.f$0.openSponsoredOptions((ProfileSearchCell) obj3, (TLRPC.TL_sponsoredPeer) obj4);
                    }
                });
                profileSearchCell.setAd(z ? (TLRPC.TL_sponsoredPeer) item : null);
                profileSearchCell.setData(user != null ? user : chat, encryptedChat, charSequence142222, charSequence6, true, z3);
                profileSearchCell.setChecked(this.delegate.isSelected(profileSearchCell.getDialogId()), dialogId == profileSearchCell.getDialogId() ? z4 : z5);
                break;
            case 1:
                final GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                if (!this.searchResultHashtags.isEmpty()) {
                    graySectionCell.setText(LocaleController.getString(C2484R.string.Hashtags), LocaleController.getString(C2484R.string.ClearButton), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda14
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onBindViewHolder$26(view);
                        }
                    });
                } else {
                    if (this.publicPosts.isEmpty()) {
                        recentItemsCount = size5;
                    } else if (size5 == 0) {
                        graySectionCell.setText(LocaleController.getString(C2484R.string.PublicPostsTabs), AndroidUtilities.replaceArrows(LocaleController.getString(C2484R.string.PublicPostsMore), false, AndroidUtilities.dp(-2.0f), AndroidUtilities.dp(1.0f)), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda15
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.lambda$onBindViewHolder$27(view);
                            }
                        });
                    } else {
                        recentItemsCount = size5 - (this.publicPosts.size() + 1);
                    }
                    final ArrayList globalSearch3 = this.searchAdapterHelper.getGlobalSearch();
                    if (isRecentSearchDisplayed() || !this.searchTopics.isEmpty() || !this.searchContacts.isEmpty() || !this.publicPosts.isEmpty()) {
                        ?? HasHints = hasHints();
                        if (recentItemsCount < HasHints) {
                            graySectionCell.setText(LocaleController.getString(C2484R.string.ChatHints));
                        } else if (recentItemsCount == HasHints && isRecentSearchDisplayed()) {
                            if (!this.searchWas) {
                                graySectionCell.setText(LocaleController.getString(C2484R.string.Recent), LocaleController.getString(C2484R.string.ClearButton), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda16
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        this.f$0.lambda$onBindViewHolder$28(view);
                                    }
                                });
                            } else {
                                graySectionCell.setText(LocaleController.getString(C2484R.string.Recent), LocaleController.getString(C2484R.string.Clear), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda17
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        this.f$0.lambda$onBindViewHolder$29(view);
                                    }
                                });
                            }
                        } else if (recentItemsCount == getRecentItemsCount() + (this.searchTopics.isEmpty() ? 0 : this.searchTopics.size() + 1) + (this.searchContacts.isEmpty() ? 0 : this.searchContacts.size() + 1) && !this.searchResult.isEmpty()) {
                            graySectionCell.setText(LocaleController.getString(C2484R.string.SearchAllChatsShort));
                        } else {
                            recentItemsCount -= getRecentItemsCount();
                        }
                    }
                    int size8 = this.searchResult.size();
                    int size9 = this.searchAdapterHelper.getLocalServerSearch().size();
                    int size10 = this.searchAdapterHelper.getPhoneSearch().size();
                    if (size10 > 3 && this.phoneCollapsed) {
                        size10 = 3;
                    }
                    int size11 = (globalSearch3.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : globalSearch3.size() + this.sponsoredPeers.size() + 1;
                    int i11 = (size11 <= 4 || !this.globalSearchCollapsed) ? size11 : 4;
                    int size12 = this.searchForumResultMessages.isEmpty() ? 0 : this.searchForumResultMessages.size() + 1;
                    if (!this.searchResultMessages.isEmpty()) {
                        this.searchResultMessages.size();
                    }
                    if (this.currentMessagesFilter != Filter.All || this.forceLoadingMessages) {
                        this.searchResultMessages.isEmpty();
                    }
                    if (this.searchTopics.isEmpty()) {
                        string2 = null;
                    } else {
                        string2 = recentItemsCount == 0 ? LocaleController.getString(C2484R.string.Topics) : null;
                        recentItemsCount -= this.searchTopics.size() + 1;
                    }
                    if (!this.searchContacts.isEmpty()) {
                        if (recentItemsCount == 0) {
                            string2 = LocaleController.getString(C2484R.string.InviteToTelegramShort);
                        }
                        recentItemsCount -= this.searchContacts.size() + 1;
                    }
                    if (string2 != null) {
                        string3 = string2;
                        charSequence11 = null;
                        runnable = null;
                    } else {
                        int i12 = recentItemsCount - (size8 + size9);
                        if (i12 < 0 || i12 >= size10) {
                            int i13 = i12 - size10;
                            if (i13 >= 0 && i13 < i11) {
                                string2 = LocaleController.getString(C2484R.string.GlobalSearch);
                                if (this.searchAdapterHelper.getGlobalSearch().size() + this.sponsoredPeers.size() > 3) {
                                    z = this.globalSearchCollapsed;
                                    runnable = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda19
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$onBindViewHolder$33(globalSearch3, size5, graySectionCell);
                                        }
                                    };
                                    string3 = string2;
                                    charSequence11 = null;
                                }
                            } else if (this.delegate != null && size12 > 0 && i13 - i11 <= 1) {
                                TLRPC.Chat chat4 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.delegate.getSearchForumDialogId()));
                                string2 = LocaleController.formatString(C2484R.string.SearchMessagesIn, chat4 == null ? "null" : chat4.monoforum ? ForumUtilities.getMonoForumTitle(this.currentAccount, chat4) : chat4.title);
                            } else {
                                this.messagesSectionPosition = i13;
                                CharSequence filterFromString = getFilterFromString(this.currentMessagesFilter);
                                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda20
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onBindViewHolder$35(graySectionCell);
                                    }
                                };
                                string3 = LocaleController.getString(C2484R.string.SearchMessages);
                                runnable = runnable2;
                                charSequence11 = filterFromString;
                            }
                            string3 = string2;
                            charSequence11 = null;
                            runnable = null;
                        } else {
                            string2 = LocaleController.getString(C2484R.string.PhoneNumberSearch);
                            if (this.searchAdapterHelper.getPhoneSearch().size() > 3) {
                                z = this.phoneCollapsed;
                                string3 = string2;
                                runnable = new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda18
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$onBindViewHolder$30(graySectionCell);
                                    }
                                };
                                charSequence11 = null;
                            }
                            string3 = string2;
                            charSequence11 = null;
                            runnable = null;
                        }
                    }
                    if (runnable == null) {
                        graySectionCell.setText(string3);
                    } else if (charSequence11 != null) {
                        graySectionCell.setText(string3, charSequence11, new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda21
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                runnable.run();
                            }
                        });
                        graySectionCell.setRightTextMargin(6);
                    } else {
                        graySectionCell.setText(string3, LocaleController.getString(z ? C2484R.string.ShowMore : C2484R.string.ShowLess), new View.OnClickListener() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda12
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
                hashtagSearchCell.setText((CharSequence) this.searchResultHashtags.get(size5 - 1));
                hashtagSearchCell.setNeedDivider(size5 != this.searchResultHashtags.size());
                break;
            case 6:
                ((CategoryAdapterRecycler) ((RecyclerListView) viewHolder.itemView).getAdapter()).setIndex(size5 / 2);
                break;
            case 7:
                String str4 = (String) getItem(size5);
                TextCell textCell = (TextCell) viewHolder.itemView;
                textCell.setColors(-1, Theme.key_windowBackgroundWhiteBlueText2);
                textCell.setText(LocaleController.formatString("AddContactByPhone", C2484R.string.AddContactByPhone, PhoneFormat.getInstance().format("+" + str4)), false);
                break;
            case 8:
                ProfileSearchCell profileSearchCell2 = (ProfileSearchCell) viewHolder.itemView;
                ContactsController.Contact contact = (ContactsController.Contact) getItem(size5);
                profileSearchCell2.setData(contact, null, ContactsController.formatName(contact.first_name, contact.last_name), PhoneFormat.getInstance().format("+" + contact.shortPhones.get(0)), false, false);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$26(View view) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate != null) {
            dialogsSearchAdapterDelegate.needClearList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$27(View view) {
        openPublicPosts();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$28(View view) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate != null) {
            dialogsSearchAdapterDelegate.needClearList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$29(View view) {
        DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.delegate;
        if (dialogsSearchAdapterDelegate != null) {
            dialogsSearchAdapterDelegate.needClearList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$30(GraySectionCell graySectionCell) {
        boolean z = this.phoneCollapsed;
        this.phoneCollapsed = !z;
        graySectionCell.setRightText(LocaleController.getString(!z ? C2484R.string.ShowMore : C2484R.string.ShowLess));
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$33(ArrayList arrayList, final int i, GraySectionCell graySectionCell) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.lastShowMoreUpdate < 300) {
            return;
        }
        this.lastShowMoreUpdate = jElapsedRealtime;
        int size = (arrayList.isEmpty() && this.sponsoredPeers.isEmpty()) ? 0 : arrayList.size() + this.sponsoredPeers.size();
        boolean z = getItemCount() > (Math.min(size, this.globalSearchCollapsed ? 4 : Integer.MAX_VALUE) + i) + 1;
        DefaultItemAnimator defaultItemAnimator = this.itemAnimator;
        if (defaultItemAnimator != null) {
            defaultItemAnimator.setAddDuration(z ? 45L : 200L);
            this.itemAnimator.setRemoveDuration(z ? 80L : 200L);
            this.itemAnimator.setRemoveDelay(z ? 270L : 0L);
        }
        this.globalSearchCollapsed = !this.globalSearchCollapsed;
        graySectionCell.setRightTextMargin(16);
        graySectionCell.setRightText(LocaleController.getString(this.globalSearchCollapsed ? C2484R.string.ShowMore : C2484R.string.ShowLess), this.globalSearchCollapsed);
        this.showMoreHeader = null;
        final View view = (View) graySectionCell.getParent();
        if (view instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) view;
            int i2 = !this.globalSearchCollapsed ? i + 4 : i + size + 1;
            int i3 = 0;
            while (true) {
                if (i3 >= recyclerView.getChildCount()) {
                    break;
                }
                View childAt = recyclerView.getChildAt(i3);
                if (recyclerView.getChildAdapterPosition(childAt) == i2) {
                    this.showMoreHeader = childAt;
                    break;
                }
                i3++;
            }
        }
        if (!this.globalSearchCollapsed) {
            notifyItemChanged(i + 3);
            notifyItemRangeInserted(i + 4, size - 3);
        } else {
            notifyItemRangeRemoved(i + 4, size - 3);
            if (z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda25
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onBindViewHolder$31(i);
                    }
                }, 350L);
            } else {
                notifyItemChanged(i + 3);
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
                    this.f$0.lambda$onBindViewHolder$32(view);
                }
            };
            this.cancelShowMoreAnimation = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 400L);
            return;
        }
        this.showMoreAnimation = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$31(int i) {
        notifyItemChanged(i + 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$32(View view) {
        this.showMoreAnimation = false;
        this.showMoreHeader = null;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$35(final GraySectionCell graySectionCell) {
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.dialogsActivity, graySectionCell);
        for (final Filter filter : Filter.values()) {
            final boolean z = filter.flags == this.currentMessagesFilter.flags;
            itemOptionsMakeOptions.addChecked(z, LocaleController.getString(filter.strResId), new Runnable() { // from class: org.telegram.ui.Adapters.DialogsSearchAdapter$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onBindViewHolder$34(z, graySectionCell, filter);
                }
            });
        }
        itemOptionsMakeOptions.setGravity(5).setOnTopOfScrim().setDrawScrim(false).setDimAlpha(0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$34(boolean z, GraySectionCell graySectionCell, Filter filter) {
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
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2484R.drawable.arrows_select);
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
    
        if (r12 != r8) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x017d, code lost:
    
        return 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x017e, code lost:
    
        return 2;
     */
    /* JADX WARN: Type inference failed for: r0v33, types: [boolean] */
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
        ArrayList globalSearch = this.searchAdapterHelper.getGlobalSearch();
        int size = this.searchResult.size();
        int size2 = this.searchAdapterHelper.getLocalServerSearch().size();
        if (size + size2 > 0 && (getRecentItemsCount() > 0 || !this.searchTopics.isEmpty() || !this.publicPosts.isEmpty())) {
            if (i == 0) {
                return 1;
            }
            i--;
        }
        int size3 = this.searchAdapterHelper.getPhoneSearch().size();
        int i3 = (size3 <= 3 || !this.phoneCollapsed) ? size3 : 3;
        int size4 = (this.sponsoredPeers.isEmpty() && globalSearch.isEmpty()) ? 0 : globalSearch.size() + this.sponsoredPeers.size() + 1;
        if (size4 > 4 && this.globalSearchCollapsed) {
            size4 = 4;
        }
        int size5 = this.searchResultMessages.isEmpty() ? 0 : this.searchResultMessages.size() + 1;
        Filter filter = this.currentMessagesFilter;
        Filter filter2 = Filter.All;
        if ((filter != filter2 || this.forceLoadingMessages) && this.searchResultMessages.isEmpty()) {
            size5 = this.forceLoadingMessages ? 4 : 2;
        }
        if (!this.searchForumResultMessages.isEmpty() && !this.localMessagesSearchEndReached) {
            size5 = 0;
        }
        int size6 = this.searchForumResultMessages.isEmpty() ? 0 : this.searchForumResultMessages.size() + 1;
        if (i >= 0 && i < size) {
            return 0;
        }
        int i4 = i - size;
        if (i4 >= 0 && i4 < size2) {
            return 0;
        }
        int i5 = i4 - size2;
        if (i5 >= 0 && i5 < i3) {
            Object item = getItem(i5);
            if (item instanceof String) {
                return "section".equals((String) item) ? 1 : 7;
            }
            return 0;
        }
        int i6 = i5 - i3;
        if (i6 >= 0 && i6 < size4) {
            return i6 == 0 ? 1 : 0;
        }
        int i7 = i6 - size4;
        if (size6 > 0) {
            if (i7 >= 0) {
                if (this.localMessagesSearchEndReached) {
                }
            }
            i7 -= size6 + (!this.localMessagesSearchEndReached ? 1 : 0);
        }
        if (i7 < 0 || i7 >= size5) {
            return 4;
        }
        if (i7 == 0) {
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
                if ((dialogsSearchAdapterDelegate2 == null || dialogsSearchAdapterDelegate2.getSearchForumDialogId() != ((RecentSearchObject) this.recentSearchObjects.get(i)).did) && filter(((RecentSearchObject) this.recentSearchObjects.get(i)).object)) {
                    this.filteredRecentSearchObjects.add((RecentSearchObject) this.recentSearchObjects.get(i));
                }
                i++;
            }
            return;
        }
        String lowerCase = str.toLowerCase();
        int size2 = this.recentSearchObjects.size();
        while (i < size2) {
            RecentSearchObject recentSearchObject = (RecentSearchObject) this.recentSearchObjects.get(i);
            if (recentSearchObject != null && recentSearchObject.object != null && (((dialogsSearchAdapterDelegate = this.delegate) == null || dialogsSearchAdapterDelegate.getSearchForumDialogId() != recentSearchObject.did) && filter(((RecentSearchObject) this.recentSearchObjects.get(i)).object))) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes6.dex */
    static class EmptyLayout extends LinearLayout {
        private TextView textView;

        public EmptyLayout(Context context, Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
            super(context);
            setOrientation(1);
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageView.setImageDrawable(new RLottieDrawable(C2484R.raw.utyan_empty, "utyan_empty", AndroidUtilities.dp(120.0f), AndroidUtilities.dp(120.0f)));
            addView(backupImageView, LayoutHelper.createLinear(120, 120, 1, 0, 27, 0, 0));
            TextView textView = new TextView(context);
            textView.setTextSize(1, 17.0f);
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView.setTextColor(Theme.getColor(i, resourcesProvider));
            textView.setTypeface(AndroidUtilities.bold());
            textView.setText(LocaleController.getString(C2484R.string.SearchMessagesFilterEmptyTitle));
            textView.setGravity(17);
            addView(textView, LayoutHelper.createLinear(-1, -2, 1, 0, 8, 0, 9));
            TextView textView2 = new TextView(context);
            this.textView = textView2;
            textView2.setTextSize(1, 14.0f);
            this.textView.setTextColor(Theme.getColor(i, resourcesProvider));
            this.textView.setText(LocaleController.formatString(C2484R.string.SearchMessagesFilterEmptyText, _UrlKt.FRAGMENT_ENCODE_SET));
            this.textView.setGravity(17);
            addView(this.textView, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 14));
            TextView textView3 = new TextView(context);
            textView3.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(4.0f));
            textView3.setTextSize(1, 14.0f);
            textView3.setText(LocaleController.getString(C2484R.string.SearchMessagesFilterEmptySearchAll));
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
            this.textView.setText(LocaleController.formatString(C2484R.string.SearchMessagesFilterEmptyText, str));
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
            int size = this.searchAdapterHelper.getGlobalSearch().size() + this.sponsoredPeers.size();
            this.sponsoredPeers.remove(iIndexOf);
            notifyItemRemoved(iGlobalSearchPosition + 1 + iIndexOf);
            int size2 = this.searchAdapterHelper.getGlobalSearch().size() + this.sponsoredPeers.size();
            int i = (size2 <= 3 || !this.globalSearchCollapsed) ? size2 : 3;
            if (i > 0) {
                if ((size > 3) != (size2 > 3)) {
                    notifyItemChanged(iGlobalSearchPosition);
                }
            }
            if (i <= 0) {
                notifyItemRemoved(iGlobalSearchPosition);
            } else if (this.globalSearchCollapsed) {
                notifyItemChanged(iGlobalSearchPosition + 2);
                notifyItemRangeInserted(iGlobalSearchPosition + 3, Math.min(Math.max(0, size - 3), 1));
            }
        }
    }

    public void removeAllAds() {
        int iGlobalSearchPosition;
        if (!this.sponsoredPeers.isEmpty() && (iGlobalSearchPosition = globalSearchPosition()) < getItemCount()) {
            int size = this.searchAdapterHelper.getGlobalSearch().size() + this.sponsoredPeers.size();
            int size2 = this.sponsoredPeers.size();
            if (this.globalSearchCollapsed) {
                size2 = Math.min(3, size2);
            }
            this.sponsoredPeers.clear();
            int i = iGlobalSearchPosition + 1;
            notifyItemRangeRemoved(i, size2);
            int size3 = this.searchAdapterHelper.getGlobalSearch().size() + this.sponsoredPeers.size();
            int i2 = (size3 <= 3 || !this.globalSearchCollapsed) ? size3 : 3;
            if (i2 > 0) {
                if ((size > 3) != (size3 > 3)) {
                    notifyItemChanged(iGlobalSearchPosition);
                }
            }
            if (i2 <= 0) {
                notifyItemRemoved(iGlobalSearchPosition);
            } else if (this.globalSearchCollapsed) {
                int i3 = 3 - size2;
                notifyItemChanged(iGlobalSearchPosition + i3);
                notifyItemRangeInserted(i + i3, Math.min(Math.max(0, size - 3), size2));
            }
        }
    }

    public void seenSponsoredPeer(TLRPC.TL_sponsoredPeer tL_sponsoredPeer) {
        if (tL_sponsoredPeer == null) {
            return;
        }
        Iterator it = this.seenSponsoredPeers.iterator();
        while (it.hasNext()) {
            if (Arrays.equals((byte[]) it.next(), tL_sponsoredPeer.random_id)) {
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
