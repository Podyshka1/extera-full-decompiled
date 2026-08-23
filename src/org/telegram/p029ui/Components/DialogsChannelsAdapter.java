package org.telegram.p029ui.Components;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DialogsChannelsAdapter extends UniversalAdapter {
    private int allCount;
    private final Context context;
    private final int currentAccount;
    public boolean expandedMyChannels;
    public boolean expandedSearchChannels;
    private final int folderId;
    private boolean hasMore;
    public boolean loadingChannels;
    public boolean loadingMessages;
    public final ArrayList messages;
    public final ArrayList myChannels;
    private int nextRate;
    public String query;
    private final Theme.ResourcesProvider resourcesProvider;
    public final ArrayList searchChannels;
    private int searchChannelsId;
    private final Runnable searchMessagesRunnable;
    public final ArrayList searchMyChannels;
    public final ArrayList searchRecommendedChannels;

    protected abstract void hideKeyboard();

    public DialogsChannelsAdapter(RecyclerListView recyclerListView, Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        super(recyclerListView, context, i, 0, null, resourcesProvider);
        this.messages = new ArrayList();
        this.searchMyChannels = new ArrayList();
        this.searchRecommendedChannels = new ArrayList();
        this.searchChannels = new ArrayList();
        this.myChannels = new ArrayList();
        this.searchMessagesRunnable = new Runnable() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$5();
            }
        };
        this.fillItems = new Utilities.Callback2() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        };
        this.context = context;
        this.currentAccount = i;
        this.folderId = i2;
        this.resourcesProvider = resourcesProvider;
        update(false);
    }

    public void updateMyChannels() {
        ArrayList arrayList = new ArrayList();
        ArrayList<TLRPC.Dialog> allDialogs = MessagesController.getInstance(this.currentAccount).getAllDialogs();
        int size = allDialogs.size();
        int i = 0;
        while (i < size) {
            TLRPC.Dialog dialog = allDialogs.get(i);
            i++;
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialog.f1666id));
            if (chat != null && ChatObject.isChannelAndNotMegaGroup(chat) && ChatObject.isPublic(chat) && !ChatObject.isNotInChat(chat)) {
                arrayList.add(chat);
                if (arrayList.size() >= 100) {
                    break;
                }
            }
        }
        this.myChannels.clear();
        this.myChannels.addAll(arrayList);
    }

    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        int i = 0;
        if (TextUtils.isEmpty(this.query)) {
            ArrayList arrayList2 = this.myChannels;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                if (this.myChannels.size() > 5) {
                    arrayList.add(UItem.asGraySection(LocaleController.getString(C2888R.string.SearchMyChannels), LocaleController.getString(this.expandedMyChannels ? C2888R.string.ShowLess : C2888R.string.ShowMore), new View.OnClickListener() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.toggleExpandedMyChannels(view);
                        }
                    }));
                } else {
                    arrayList.add(UItem.asGraySection(LocaleController.getString(C2888R.string.SearchMyChannels)));
                }
                int size = this.myChannels.size();
                if (!this.expandedMyChannels) {
                    size = Math.min(5, size);
                }
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.add(UItem.asProfileCell((TLObject) this.myChannels.get(i2)).withUsername(true));
                }
            }
            MessagesController.ChannelRecommendations cachedChannelRecommendations = MessagesController.getInstance(this.currentAccount).getCachedChannelRecommendations(0L);
            if (cachedChannelRecommendations != null) {
                ArrayList arrayList3 = new ArrayList();
                ArrayList<TLObject> arrayList4 = cachedChannelRecommendations.chats;
                int size2 = arrayList4.size();
                int i3 = 0;
                while (i3 < size2) {
                    TLObject tLObject = arrayList4.get(i3);
                    i3++;
                    TLObject tLObject2 = tLObject;
                    if (tLObject2 instanceof TLRPC.Chat) {
                        TLRPC.Chat chat = (TLRPC.Chat) tLObject2;
                        TLRPC.Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(chat.f1660id));
                        if (ChatObject.isNotInChat(chat) && (chat2 == null || ChatObject.isNotInChat(chat2))) {
                            arrayList3.add(chat);
                        }
                    }
                }
                if (!arrayList3.isEmpty()) {
                    arrayList.add(UItem.asGraySection(LocaleController.getString(C2888R.string.SearchRecommendedChannels)));
                }
                int size3 = arrayList3.size();
                while (i < size3) {
                    Object obj = arrayList3.get(i);
                    i++;
                    arrayList.add(UItem.asProfileCell((TLRPC.Chat) obj));
                }
                return;
            }
            arrayList.add(UItem.asFlicker(30));
            arrayList.add(UItem.asFlicker(29));
            arrayList.add(UItem.asFlicker(29));
            arrayList.add(UItem.asFlicker(29));
            arrayList.add(UItem.asFlicker(29));
            return;
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = this.searchMyChannels;
        int size4 = arrayList6.size();
        int i4 = 0;
        while (i4 < size4) {
            Object obj2 = arrayList6.get(i4);
            i4++;
            TLRPC.Chat chat3 = (TLRPC.Chat) obj2;
            TLRPC.Chat chat4 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(chat3.f1660id));
            if (ChatObject.isNotInChat(chat3) && (chat4 == null || ChatObject.isNotInChat(chat4))) {
                arrayList5.add(chat3);
            }
        }
        ArrayList arrayList7 = this.searchRecommendedChannels;
        int size5 = arrayList7.size();
        int i5 = 0;
        while (i5 < size5) {
            Object obj3 = arrayList7.get(i5);
            i5++;
            TLRPC.Chat chat5 = (TLRPC.Chat) obj3;
            TLRPC.Chat chat6 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(chat5.f1660id));
            if (ChatObject.isNotInChat(chat5) && (chat6 == null || ChatObject.isNotInChat(chat6))) {
                arrayList5.add(chat5);
            }
        }
        ArrayList arrayList8 = this.searchChannels;
        int size6 = arrayList8.size();
        int i6 = 0;
        while (i6 < size6) {
            Object obj4 = arrayList8.get(i6);
            i6++;
            TLRPC.Chat chat7 = (TLRPC.Chat) obj4;
            TLRPC.Chat chat8 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(chat7.f1660id));
            if (ChatObject.isNotInChat(chat7) && (chat8 == null || ChatObject.isNotInChat(chat8))) {
                arrayList5.add(chat7);
            }
        }
        if (!arrayList5.isEmpty()) {
            if (arrayList5.size() <= 5 || this.messages.isEmpty()) {
                arrayList.add(UItem.asGraySection(LocaleController.getString(C2888R.string.SearchChannels)));
            } else {
                arrayList.add(UItem.asGraySection(LocaleController.getString(C2888R.string.SearchChannels), LocaleController.getString(this.expandedSearchChannels ? C2888R.string.ShowLess : C2888R.string.ShowMore), new View.OnClickListener() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.toggleExpandedSearchChannels(view);
                    }
                }));
            }
            int size7 = arrayList5.size();
            if (!this.expandedSearchChannels && !this.messages.isEmpty()) {
                size7 = Math.min(5, size7);
            }
            for (int i7 = 0; i7 < size7; i7++) {
                arrayList.add(UItem.asProfileCell((TLObject) arrayList5.get(i7)));
            }
        }
        if (this.messages.isEmpty()) {
            return;
        }
        arrayList.add(UItem.asGraySection(LocaleController.getString(C2888R.string.SearchMessages)));
        ArrayList arrayList9 = this.messages;
        int size8 = arrayList9.size();
        while (i < size8) {
            Object obj5 = arrayList9.get(i);
            i++;
            arrayList.add(UItem.asSearchMessage((MessageObject) obj5));
        }
        if (this.hasMore) {
            arrayList.add(UItem.asFlicker(1));
        }
    }

    public void toggleExpandedSearchChannels(View view) {
        this.expandedSearchChannels = !this.expandedSearchChannels;
        update(true);
        if (this.expandedSearchChannels) {
            hideKeyboard();
        }
    }

    public void toggleExpandedMyChannels(View view) {
        this.expandedMyChannels = !this.expandedMyChannels;
        update(true);
        if (this.expandedMyChannels) {
            hideKeyboard();
        }
    }

    public TLRPC.Chat getChat(int i) {
        UItem item = getItem(i);
        if (item == null) {
            return null;
        }
        Object obj = item.object;
        if (obj instanceof TLRPC.Chat) {
            return (TLRPC.Chat) obj;
        }
        return null;
    }

    public Object getObject(int i) {
        UItem item = getItem(i);
        if (item != null) {
            return item.object;
        }
        return null;
    }

    private void searchMessages(final boolean z) {
        this.loadingMessages = true;
        final int i = this.searchChannelsId + 1;
        this.searchChannelsId = i;
        final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal = new TLRPC.TL_messages_searchGlobal();
        tL_messages_searchGlobal.broadcasts_only = true;
        int i2 = this.folderId;
        if (i2 != 0) {
            tL_messages_searchGlobal.flags |= 1;
            tL_messages_searchGlobal.folder_id = i2;
        }
        tL_messages_searchGlobal.f1778q = this.query;
        tL_messages_searchGlobal.limit = 25;
        tL_messages_searchGlobal.filter = new TLRPC.TL_inputMessagesFilterEmpty();
        if (z && !this.messages.isEmpty()) {
            ArrayList arrayList = this.messages;
            MessageObject messageObject = (MessageObject) arrayList.get(arrayList.size() - 1);
            tL_messages_searchGlobal.offset_rate = this.nextRate;
            tL_messages_searchGlobal.offset_id = messageObject.getId();
            if (messageObject.messageOwner.peer_id == null) {
                tL_messages_searchGlobal.offset_peer = new TLRPC.TL_inputPeerEmpty();
            } else {
                tL_messages_searchGlobal.offset_peer = MessagesController.getInstance(this.currentAccount).getInputPeer(messageObject.messageOwner.peer_id);
            }
        } else {
            tL_messages_searchGlobal.offset_rate = 0;
            tL_messages_searchGlobal.offset_id = 0;
            tL_messages_searchGlobal.offset_peer = new TLRPC.TL_inputPeerEmpty();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchMessages$2(i, tL_messages_searchGlobal, z);
            }
        }, z ? 800L : 0L);
        if (z) {
            return;
        }
        this.loadingChannels = true;
        final TLRPC.TL_contacts_search tL_contacts_search = new TLRPC.TL_contacts_search();
        tL_contacts_search.limit = 20;
        tL_contacts_search.f1714q = this.query;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_contacts_search, new RequestDelegate() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$searchMessages$4(tL_contacts_search, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$2(final int i, final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal, final boolean z) {
        if (i == this.searchChannelsId && TextUtils.equals(tL_messages_searchGlobal.f1778q, this.query)) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_searchGlobal, new RequestDelegate() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda7
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$searchMessages$1(i, tL_messages_searchGlobal, z, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$1(final int i, final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal, final boolean z, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchMessages$0(i, tL_messages_searchGlobal, z, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$0(int i, TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal, boolean z, TLObject tLObject) {
        if (i == this.searchChannelsId && TextUtils.equals(tL_messages_searchGlobal.f1778q, this.query)) {
            this.loadingMessages = false;
            if (!z) {
                this.messages.clear();
            }
            if (tLObject instanceof TLRPC.messages_Messages) {
                TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
                ArrayList arrayList = messages_messages.messages;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC.Message) obj, false, true);
                    messageObject.setQuery(this.query);
                    this.messages.add(messageObject);
                }
                this.hasMore = messages_messages instanceof TLRPC.TL_messages_messagesSlice;
                this.allCount = Math.max(this.messages.size(), messages_messages.count);
                this.nextRate = messages_messages.next_rate;
            }
            update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$4(final TLRPC.TL_contacts_search tL_contacts_search, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsChannelsAdapter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchMessages$3(tL_contacts_search, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$3(TLRPC.TL_contacts_search tL_contacts_search, TLObject tLObject) {
        TLRPC.TL_contacts_found tL_contacts_found;
        TLRPC.Chat chat;
        TLRPC.Chat chat2;
        if (!TextUtils.equals(tL_contacts_search.f1714q, this.query) || TextUtils.isEmpty(this.query)) {
            return;
        }
        int i = 0;
        this.loadingChannels = false;
        if (tLObject instanceof TLRPC.TL_contacts_found) {
            tL_contacts_found = (TLRPC.TL_contacts_found) tLObject;
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_contacts_found.users, tL_contacts_found.chats, true, true);
            MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_found.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_contacts_found.chats, false);
        } else {
            tL_contacts_found = null;
        }
        HashSet hashSet = new HashSet();
        this.searchMyChannels.clear();
        if (tL_contacts_found != null) {
            ArrayList arrayList = tL_contacts_found.my_results;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                TLRPC.Peer peer = (TLRPC.Peer) obj;
                if ((peer instanceof TLRPC.TL_peerChannel) && (chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer.channel_id))) != null && ChatObject.isChannelAndNotMegaGroup(chat2) && !hashSet.contains(Long.valueOf(chat2.f1660id))) {
                    hashSet.add(Long.valueOf(chat2.f1660id));
                    this.searchMyChannels.add(chat2);
                }
            }
        }
        this.searchRecommendedChannels.clear();
        String lowerCase = this.query.toLowerCase();
        String strTranslitSafe = AndroidUtilities.translitSafe(lowerCase);
        MessagesController.ChannelRecommendations cachedChannelRecommendations = MessagesController.getInstance(this.currentAccount).getCachedChannelRecommendations(0L);
        if (cachedChannelRecommendations != null && !cachedChannelRecommendations.chats.isEmpty()) {
            ArrayList<TLObject> arrayList2 = cachedChannelRecommendations.chats;
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                TLObject tLObject2 = arrayList2.get(i3);
                i3++;
                TLObject tLObject3 = tLObject2;
                if (tLObject3 instanceof TLRPC.Chat) {
                    TLRPC.Chat chat3 = (TLRPC.Chat) tLObject3;
                    if (ChatObject.isChannelAndNotMegaGroup(chat3)) {
                        TLRPC.Chat chat4 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(chat3.f1660id));
                        if (ChatObject.isNotInChat(chat3) && (chat4 == null || ChatObject.isNotInChat(chat4))) {
                            String lowerCase2 = chat3.title.toLowerCase();
                            String strTranslitSafe2 = AndroidUtilities.translitSafe(lowerCase2);
                            if (!lowerCase2.startsWith(lowerCase)) {
                                if (!lowerCase2.contains(" " + lowerCase) && !strTranslitSafe2.startsWith(strTranslitSafe)) {
                                    if (strTranslitSafe2.contains(" " + strTranslitSafe)) {
                                    }
                                }
                            }
                            if (!hashSet.contains(Long.valueOf(chat3.f1660id))) {
                                hashSet.add(Long.valueOf(chat3.f1660id));
                                this.searchRecommendedChannels.add(chat3);
                            }
                        }
                    }
                }
            }
        }
        this.searchChannels.clear();
        if (tL_contacts_found != null) {
            ArrayList arrayList3 = tL_contacts_found.results;
            int size3 = arrayList3.size();
            while (i < size3) {
                Object obj2 = arrayList3.get(i);
                i++;
                TLRPC.Peer peer2 = (TLRPC.Peer) obj2;
                if ((peer2 instanceof TLRPC.TL_peerChannel) && (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(peer2.channel_id))) != null && ChatObject.isChannelAndNotMegaGroup(chat) && !hashSet.contains(Long.valueOf(chat.f1660id))) {
                    hashSet.add(Long.valueOf(chat.f1660id));
                    this.searchChannels.add(chat);
                }
            }
        }
        update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5() {
        searchMessages(false);
    }

    public void search(String str) {
        updateMyChannels();
        if (TextUtils.equals(str, this.query)) {
            return;
        }
        this.query = str;
        AndroidUtilities.cancelRunOnUIThread(this.searchMessagesRunnable);
        if (TextUtils.isEmpty(this.query)) {
            this.messages.clear();
            this.searchChannels.clear();
            this.searchRecommendedChannels.clear();
            this.searchMyChannels.clear();
            update(true);
            this.searchChannelsId++;
            this.loadingMessages = false;
            this.loadingChannels = false;
            this.hasMore = false;
            this.nextRate = 0;
            RecyclerListView recyclerListView = this.listView;
            if (recyclerListView != null) {
                recyclerListView.scrollToPosition(0);
                return;
            }
            return;
        }
        this.messages.clear();
        this.searchChannels.clear();
        this.searchRecommendedChannels.clear();
        this.searchMyChannels.clear();
        AndroidUtilities.runOnUIThread(this.searchMessagesRunnable, 1000L);
        this.loadingMessages = true;
        this.loadingChannels = true;
        update(true);
        RecyclerListView recyclerListView2 = this.listView;
        if (recyclerListView2 != null) {
            recyclerListView2.scrollToPosition(0);
        }
    }

    public void searchMore() {
        if (!this.hasMore || this.loadingMessages || TextUtils.isEmpty(this.query)) {
            return;
        }
        searchMessages(true);
    }

    public ArrayList getNextChannels(int i) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            i++;
            if (i >= getItemCount()) {
                return arrayList;
            }
            TLRPC.Chat chat = getChat(i);
            if (chat != null) {
                arrayList.add(chat);
            }
        }
    }

    public void checkBottom() {
        if (!this.hasMore || this.loadingMessages || TextUtils.isEmpty(this.query) || this.listView == null || !seesLoading()) {
            return;
        }
        searchMore();
    }

    public boolean seesLoading() {
        if (this.listView == null) {
            return false;
        }
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            if (this.listView.getChildAt(i) instanceof FlickerLoadingView) {
                return true;
            }
        }
        return false;
    }
}
