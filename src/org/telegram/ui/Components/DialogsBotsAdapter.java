package org.telegram.ui.Components;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class DialogsBotsAdapter extends UniversalAdapter {
    private int allCount;
    private final Context context;
    private final int currentAccount;
    public boolean expandedMyBots;
    public boolean expandedSearchBots;
    private boolean first;
    private final int folderId;
    private boolean hasMore;
    private final CharSequence infoText;
    public boolean loadingBots;
    public boolean loadingMessages;
    private int nextRate;
    private final Utilities.Callback<TLRPC.User> openBotCallback;
    private final PopularBots popular;
    public String query;
    private final Theme.ResourcesProvider resourcesProvider;
    private int searchBotsId;
    public final ArrayList<TLRPC.User> searchGlobal;
    public final ArrayList<MessageObject> searchMessages;
    private Runnable searchMessagesRunnable;
    public final ArrayList<TLRPC.User> searchMine;
    private final boolean showOnlyPopular;
    private int topPeersEnd;
    private int topPeersStart;

    public DialogsBotsAdapter(RecyclerListView recyclerListView, final Context context, int i, int i2, boolean z, final Theme.ResourcesProvider resourcesProvider) {
        super(recyclerListView, context, i, 0, true, null, resourcesProvider);
        this.searchMine = new ArrayList<>();
        this.searchGlobal = new ArrayList<>();
        this.searchMessages = new ArrayList<>();
        this.searchMessagesRunnable = new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$7();
            }
        };
        this.first = true;
        this.openBotCallback = new Utilities.Callback() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.openBot((TLRPC.User) obj);
            }
        };
        this.fillItems = new Utilities.Callback2() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        };
        this.context = context;
        this.currentAccount = i;
        this.folderId = i2;
        this.resourcesProvider = resourcesProvider;
        this.showOnlyPopular = z;
        this.popular = new PopularBots(i, new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        this.infoText = AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.AppsTabInfo), new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2(resourcesProvider, context);
            }
        }), true);
        update(false);
        MediaDataController.getInstance(i).loadHints(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Theme.ResourcesProvider resourcesProvider, final Context context) {
        final AlertDialog[] alertDialogArr = new AlertDialog[1];
        SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(AndroidUtilities.replaceLinks(LocaleController.getString(C2573R.string.AppsTabInfoText), resourcesProvider, new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                DialogsBotsAdapter.$r8$lambda$EOGIk9CaGT_CDhBN5lcgeWcIuVc(alertDialogArr);
            }
        }));
        Matcher matcher = Pattern.compile("@([a-zA-Z0-9_-]+)").matcher(spannableStringBuilderReplaceTags);
        while (matcher.find()) {
            final String strGroup = matcher.group(1);
            spannableStringBuilderReplaceTags.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.DialogsBotsAdapter.1
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    AlertDialog alertDialog = alertDialogArr[0];
                    if (alertDialog != null) {
                        alertDialog.dismiss();
                    }
                    Browser.openUrl(context, "https://t.me/" + strGroup);
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                }
            }, matcher.start(), matcher.end(), 33);
        }
        alertDialogArr[0] = new AlertDialog.Builder(context, resourcesProvider).setTitle(LocaleController.getString(C2573R.string.AppsTabInfoTitle)).setMessage(spannableStringBuilderReplaceTags).setPositiveButton(LocaleController.getString(C2573R.string.AppsTabInfoButton), null).show();
    }

    public static /* synthetic */ void $r8$lambda$EOGIk9CaGT_CDhBN5lcgeWcIuVc(AlertDialog[] alertDialogArr) {
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        PopularBots popularBots;
        HashSet hashSet = new HashSet();
        int i = 0;
        if (!TextUtils.isEmpty(this.query)) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(this.searchMine);
            arrayList2.addAll(this.searchGlobal);
            if (!arrayList2.isEmpty()) {
                if (arrayList2.size() <= 5 || this.searchMessages.isEmpty() || this.showOnlyPopular) {
                    arrayList.add(UItem.asGraySection(LocaleController.getString(C2573R.string.SearchApps)));
                } else {
                    arrayList.add(UItem.asGraySection(LocaleController.getString(C2573R.string.SearchApps), LocaleController.getString(this.expandedSearchBots ? C2573R.string.ShowLess : C2573R.string.ShowMore), new View.OnClickListener() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.toggleExpandedSearchBots(view);
                        }
                    }));
                }
                int size = arrayList2.size();
                if (!this.expandedSearchBots && !this.searchMessages.isEmpty() && !this.showOnlyPopular) {
                    size = Math.min(5, size);
                }
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.add(UItem.asProfileCell((TLObject) arrayList2.get(i2)).withOpenButton(this.openBotCallback));
                }
            }
            if (this.searchMessages.isEmpty() || this.showOnlyPopular) {
                return;
            }
            arrayList.add(UItem.asGraySection(LocaleController.getString(C2573R.string.SearchMessages)));
            ArrayList<MessageObject> arrayList3 = this.searchMessages;
            int size2 = arrayList3.size();
            while (i < size2) {
                MessageObject messageObject = arrayList3.get(i);
                i++;
                arrayList.add(UItem.asSearchMessage(messageObject));
            }
            if (this.hasMore) {
                arrayList.add(UItem.asFlicker(1));
                return;
            }
            return;
        }
        ArrayList<TLRPC.TL_topPeer> arrayList4 = MediaDataController.getInstance(this.currentAccount).webapps;
        ArrayList arrayList5 = new ArrayList();
        if (arrayList4 != null) {
            for (int i3 = 0; i3 < arrayList4.size(); i3++) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(DialogObject.getPeerDialogId(arrayList4.get(i3).peer)));
                if (user != null && user.bot) {
                    arrayList5.add(user);
                }
            }
        }
        this.topPeersStart = arrayList.size();
        if (!arrayList5.isEmpty() && !this.showOnlyPopular) {
            if (arrayList5.size() > 5) {
                arrayList.add(UItem.asGraySection(LocaleController.getString(C2573R.string.SearchAppsMine), LocaleController.getString(this.expandedMyBots ? C2573R.string.ShowLess : C2573R.string.ShowMore), new View.OnClickListener() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.toggleExpandedMyBots(view);
                    }
                }));
            } else {
                arrayList.add(UItem.asGraySection(LocaleController.getString(C2573R.string.SearchAppsMine)));
            }
            for (int i4 = 0; i4 < arrayList5.size() && (i4 < 5 || this.expandedMyBots); i4++) {
                TLRPC.User user2 = (TLRPC.User) arrayList5.get(i4);
                if (!hashSet.contains(Long.valueOf(user2.id))) {
                    hashSet.add(Long.valueOf(user2.id));
                    arrayList.add(UItem.asProfileCell(user2).accent().withOpenButton(this.openBotCallback));
                }
            }
        }
        hashSet.clear();
        this.topPeersEnd = arrayList.size();
        if (!this.popular.bots.isEmpty()) {
            if (!this.showOnlyPopular) {
                arrayList.add(UItem.asGraySection(LocaleController.getString(C2573R.string.SearchAppsPopular)));
            }
            int i5 = 0;
            while (true) {
                int size3 = this.popular.bots.size();
                popularBots = this.popular;
                if (i >= size3) {
                    break;
                }
                TLRPC.User user3 = popularBots.bots.get(i);
                if (!hashSet.contains(Long.valueOf(user3.id))) {
                    hashSet.add(Long.valueOf(user3.id));
                    arrayList.add(UItem.asProfileCell(user3).accent().red().withOpenButton(this.openBotCallback));
                    i5 = 1;
                }
                i++;
            }
            if (popularBots.loading || !popularBots.endReached) {
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
            }
            i = i5;
        } else {
            PopularBots popularBots2 = this.popular;
            if (popularBots2.loading || !popularBots2.endReached) {
                if (!this.showOnlyPopular) {
                    arrayList.add(UItem.asFlicker(30));
                }
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
            }
        }
        if (i != 0) {
            arrayList.add(UItem.asShadow(this.infoText));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleExpandedMyBots(View view) {
        this.expandedMyBots = !this.expandedMyBots;
        update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleExpandedSearchBots(View view) {
        this.expandedSearchBots = !this.expandedSearchBots;
        update(true);
    }

    public Object getTopPeerObject(int i) {
        if (i < this.topPeersStart || i >= this.topPeersEnd) {
            return Boolean.FALSE;
        }
        return getObject(i);
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
        final int i = this.searchBotsId + 1;
        this.searchBotsId = i;
        final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal = new TLRPC.TL_messages_searchGlobal();
        tL_messages_searchGlobal.broadcasts_only = false;
        int i2 = this.folderId;
        if (i2 != 0) {
            tL_messages_searchGlobal.flags |= 1;
            tL_messages_searchGlobal.folder_id = i2;
        }
        tL_messages_searchGlobal.f873q = this.query;
        tL_messages_searchGlobal.limit = 25;
        tL_messages_searchGlobal.filter = new TLRPC.TL_inputMessagesFilterEmpty();
        if (z && !this.searchMessages.isEmpty()) {
            ArrayList<MessageObject> arrayList = this.searchMessages;
            MessageObject messageObject = arrayList.get(arrayList.size() - 1);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchMessages$5(i, tL_messages_searchGlobal, z);
            }
        }, z ? 800L : 0L);
        if (z) {
            return;
        }
        this.loadingBots = true;
        final TLRPC.TL_contacts_search tL_contacts_search = new TLRPC.TL_contacts_search();
        tL_contacts_search.limit = 30;
        tL_contacts_search.bots = true;
        tL_contacts_search.f861q = this.query;
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_contacts_search, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda9
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$searchMessages$6(tL_contacts_search, (TLRPC.TL_contacts_found) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$5(final int i, final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal, final boolean z) {
        if (i == this.searchBotsId && TextUtils.equals(tL_messages_searchGlobal.f873q, this.query)) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_searchGlobal, new RequestDelegate() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda10
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$searchMessages$4(i, tL_messages_searchGlobal, z, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$4(final int i, final TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal, final boolean z, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$searchMessages$3(i, tL_messages_searchGlobal, z, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$3(int i, TLRPC.TL_messages_searchGlobal tL_messages_searchGlobal, boolean z, TLObject tLObject) {
        if (i == this.searchBotsId && TextUtils.equals(tL_messages_searchGlobal.f873q, this.query)) {
            this.loadingMessages = false;
            if (!z) {
                this.searchMessages.clear();
            }
            if (tLObject instanceof TLRPC.messages_Messages) {
                TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
                ArrayList<TLRPC.Message> arrayList = messages_messages.messages;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    TLRPC.Message message = arrayList.get(i2);
                    i2++;
                    MessageObject messageObject = new MessageObject(this.currentAccount, message, false, true);
                    messageObject.setQuery(this.query);
                    this.searchMessages.add(messageObject);
                }
                this.hasMore = messages_messages instanceof TLRPC.TL_messages_messagesSlice;
                this.allCount = Math.max(this.searchMessages.size(), messages_messages.count);
                this.nextRate = messages_messages.next_rate;
            }
            update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchMessages$6(TLRPC.TL_contacts_search tL_contacts_search, TLRPC.TL_contacts_found tL_contacts_found, TLRPC.TL_error tL_error) {
        TLRPC.User user;
        TLRPC.User user2;
        if (!TextUtils.equals(tL_contacts_search.f861q, this.query) || TextUtils.isEmpty(this.query)) {
            return;
        }
        this.loadingBots = false;
        if (tL_contacts_found != null) {
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_contacts_found.users, tL_contacts_found.chats, true, true);
            MessagesController.getInstance(this.currentAccount).putUsers(tL_contacts_found.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_contacts_found.chats, false);
        } else {
            tL_contacts_found = null;
        }
        HashSet hashSet = new HashSet();
        this.searchMine.clear();
        if (tL_contacts_found != null) {
            ArrayList<TLRPC.Peer> arrayList = tL_contacts_found.my_results;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TLRPC.Peer peer = arrayList.get(i);
                i++;
                TLRPC.Peer peer2 = peer;
                if ((peer2 instanceof TLRPC.TL_peerUser) && (user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peer2.user_id))) != null && user2.bot && !hashSet.contains(Long.valueOf(user2.id))) {
                    hashSet.add(Long.valueOf(user2.id));
                    this.searchMine.add(user2);
                }
            }
        }
        this.searchGlobal.clear();
        if (tL_contacts_found != null) {
            ArrayList<TLRPC.Peer> arrayList2 = tL_contacts_found.results;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                TLRPC.Peer peer3 = arrayList2.get(i2);
                i2++;
                TLRPC.Peer peer4 = peer3;
                if ((peer4 instanceof TLRPC.TL_peerUser) && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peer4.user_id))) != null && user.bot && !hashSet.contains(Long.valueOf(user.id))) {
                    hashSet.add(Long.valueOf(user.id));
                    this.searchGlobal.add(user);
                }
            }
        }
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            recyclerListView.scrollToPosition(0);
        }
        update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7() {
        searchMessages(false);
    }

    public void search(String str) {
        if (TextUtils.equals(str, this.query)) {
            return;
        }
        this.query = str;
        AndroidUtilities.cancelRunOnUIThread(this.searchMessagesRunnable);
        boolean zIsEmpty = TextUtils.isEmpty(this.query);
        ArrayList<MessageObject> arrayList = this.searchMessages;
        if (zIsEmpty) {
            arrayList.clear();
            update(true);
            this.searchBotsId++;
            this.loadingMessages = false;
            this.loadingBots = false;
            this.hasMore = false;
            this.nextRate = 0;
            RecyclerListView recyclerListView = this.listView;
            if (recyclerListView != null) {
                recyclerListView.scrollToPosition(0);
                return;
            }
            return;
        }
        arrayList.clear();
        AndroidUtilities.runOnUIThread(this.searchMessagesRunnable, 1000L);
        this.loadingMessages = true;
        this.loadingBots = true;
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

    public void checkBottom() {
        if (!TextUtils.isEmpty(this.query)) {
            if (this.hasMore && !this.loadingMessages && seesLoading()) {
                searchMore();
            }
        } else if (this.first || seesLoading()) {
            this.popular.load();
        }
        this.first = false;
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

    public static class PopularBots {
        private boolean cacheLoaded;
        private long cacheTime;
        private final int currentAccount;
        private boolean endReached;
        private String lastOffset;
        public boolean loading;
        private final Runnable whenUpdated;
        public final ArrayList<TLRPC.User> bots = new ArrayList<>();
        private boolean savingCache = false;

        public PopularBots(int i, Runnable runnable) {
            this.currentAccount = i;
            this.whenUpdated = runnable;
        }

        private void loadCache(final Runnable runnable) {
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$loadCache$1(messagesStorage, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00bb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$loadCache$1(MessagesStorage messagesStorage, final Runnable runnable) throws Throwable {
            SQLiteCursor sQLiteCursor;
            String str;
            TLRPC.User user;
            final ArrayList arrayList = new ArrayList();
            ArrayList<Long> arrayList2 = new ArrayList<>();
            final long jMax = 0;
            try {
                SQLiteCursor sQLiteCursorQueryFinalized = messagesStorage.getDatabase().queryFinalized("SELECT uid, time, offset FROM popular_bots ORDER BY pos", new Object[0]);
                String strStringValue = null;
                while (sQLiteCursorQueryFinalized.next()) {
                    try {
                        try {
                            try {
                                arrayList2.add(Long.valueOf(sQLiteCursorQueryFinalized.longValue(0)));
                                jMax = Math.max(jMax, sQLiteCursorQueryFinalized.longValue(1));
                                strStringValue = sQLiteCursorQueryFinalized.stringValue(2);
                            } catch (Exception e) {
                                e = e;
                                sQLiteCursor = sQLiteCursorQueryFinalized;
                                str = strStringValue;
                                try {
                                    FileLog.m898e(e);
                                    if (sQLiteCursor != null) {
                                        sQLiteCursor.dispose();
                                    }
                                    final String str2 = str;
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda5
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$loadCache$0(arrayList, jMax, str2, runnable);
                                        }
                                    });
                                } catch (Throwable th) {
                                    th = th;
                                    if (sQLiteCursor != null) {
                                        sQLiteCursor.dispose();
                                    }
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            sQLiteCursor = sQLiteCursorQueryFinalized;
                            if (sQLiteCursor != null) {
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        str = strStringValue;
                    }
                }
                sQLiteCursorQueryFinalized.dispose();
                ArrayList<TLRPC.User> users = messagesStorage.getUsers(arrayList2);
                if (users != null) {
                    int size = arrayList2.size();
                    int i = 0;
                    while (i < size) {
                        Long l = arrayList2.get(i);
                        i++;
                        long jLongValue = l.longValue();
                        int size2 = users.size();
                        int i2 = 0;
                        while (true) {
                            if (i2 >= size2) {
                                str = strStringValue;
                                user = null;
                                break;
                            }
                            TLRPC.User user2 = users.get(i2);
                            i2++;
                            user = user2;
                            if (user != null) {
                                str = strStringValue;
                                try {
                                    if (user.id == jLongValue) {
                                        break;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    sQLiteCursor = sQLiteCursorQueryFinalized;
                                    FileLog.m898e(e);
                                    if (sQLiteCursor != null) {
                                    }
                                    final String str22 = str;
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda5
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$loadCache$0(arrayList, jMax, str22, runnable);
                                        }
                                    });
                                }
                            } else {
                                str = strStringValue;
                            }
                            strStringValue = str;
                        }
                        if (user != null) {
                            arrayList.add(user);
                        }
                        strStringValue = str;
                    }
                }
                str = strStringValue;
                sQLiteCursorQueryFinalized.dispose();
            } catch (Exception e4) {
                e = e4;
                sQLiteCursor = null;
                str = null;
            } catch (Throwable th3) {
                th = th3;
                sQLiteCursor = null;
            }
            final String str222 = str;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadCache$0(arrayList, jMax, str222, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadCache$0(ArrayList arrayList, long j, String str, Runnable runnable) {
            MessagesController.getInstance(this.currentAccount).putUsers(arrayList, true);
            this.bots.addAll(arrayList);
            this.cacheTime = j;
            this.lastOffset = str;
            this.endReached = TextUtils.isEmpty(str);
            this.cacheLoaded = true;
            runnable.run();
        }

        private void saveCache() {
            if (this.savingCache) {
                return;
            }
            this.savingCache = true;
            final long j = this.cacheTime;
            String str = this.lastOffset;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            final String str2 = str;
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.bots.size(); i++) {
                arrayList.add(Long.valueOf(this.bots.get(i).id));
            }
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveCache$3(messagesStorage, arrayList, j, str2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$saveCache$3(MessagesStorage messagesStorage, ArrayList arrayList, long j, String str) {
            SQLiteDatabase database = messagesStorage.getDatabase();
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = null;
            try {
                try {
                    database.executeFast("DELETE FROM popular_bots").stepThis().dispose();
                    sQLitePreparedStatementExecuteFast = database.executeFast("REPLACE INTO popular_bots VALUES(?, ?, ?, ?)");
                    for (int i = 0; i < arrayList.size(); i++) {
                        sQLitePreparedStatementExecuteFast.requery();
                        sQLitePreparedStatementExecuteFast.bindLong(1, ((Long) arrayList.get(i)).longValue());
                        sQLitePreparedStatementExecuteFast.bindLong(2, j);
                        sQLitePreparedStatementExecuteFast.bindString(3, str);
                        sQLitePreparedStatementExecuteFast.bindInteger(4, i);
                        sQLitePreparedStatementExecuteFast.step();
                    }
                } catch (Exception e) {
                    FileLog.m898e(e);
                    if (sQLitePreparedStatementExecuteFast != null) {
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$saveCache$2();
                    }
                });
            } finally {
                if (sQLitePreparedStatementExecuteFast != null) {
                    sQLitePreparedStatementExecuteFast.dispose();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$saveCache$2() {
            this.savingCache = false;
        }

        public void load() {
            if (this.loading || this.endReached) {
                return;
            }
            this.loading = true;
            if (!this.cacheLoaded) {
                loadCache(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$load$4();
                    }
                });
                return;
            }
            TL_bots.getPopularAppBots getpopularappbots = new TL_bots.getPopularAppBots();
            getpopularappbots.limit = 20;
            String str = this.lastOffset;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            getpopularappbots.offset = str;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(getpopularappbots, new RequestDelegate() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$load$6(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$4() {
            this.loading = false;
            this.whenUpdated.run();
            if (this.bots.isEmpty() || System.currentTimeMillis() - this.cacheTime > DurationKt.MILLIS_IN_HOUR) {
                this.bots.clear();
                this.endReached = false;
                this.lastOffset = null;
                load();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$6(final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$5(tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$5(TLObject tLObject) {
            if (tLObject instanceof TL_bots.popularAppBots) {
                TL_bots.popularAppBots popularappbots = (TL_bots.popularAppBots) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(popularappbots.users, false);
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(popularappbots.users, null, false, true);
                this.bots.addAll(popularappbots.users);
                String str = popularappbots.next_offset;
                this.lastOffset = str;
                this.endReached = str == null;
                this.cacheTime = System.currentTimeMillis();
                saveCache();
                this.loading = false;
                this.whenUpdated.run();
                return;
            }
            this.lastOffset = null;
            this.endReached = true;
            this.loading = false;
            this.whenUpdated.run();
        }
    }

    public void openBot(TLRPC.User user) {
        MessagesController.getInstance(this.currentAccount).openApp(user, 0);
    }
}
