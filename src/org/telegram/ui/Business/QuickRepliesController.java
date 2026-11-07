package org.telegram.ui.Business;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesController$$ExternalSyntheticBackport5;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.ui.Business.QuickRepliesController;

/* JADX INFO: loaded from: classes6.dex */
public class QuickRepliesController {
    private static volatile QuickRepliesController[] Instance = new QuickRepliesController[16];
    private static final Object[] lockObjects = new Object[16];
    public final int currentAccount;
    private boolean loaded;
    private boolean loading;
    public final ArrayList<QuickReply> replies = new ArrayList<>();
    public final ArrayList<QuickReply> localReplies = new ArrayList<>();
    private ArrayList<QuickReply> filtered = new ArrayList<>();

    public static /* synthetic */ void $r8$lambda$RydZKfuF2MZQ3yyLCHPNfKOIt0M() {
    }

    public static /* synthetic */ void $r8$lambda$aeGYKWH1LXZ31D_ScI7cVyeoX0s() {
    }

    public static /* synthetic */ void $r8$lambda$z94vlEvUKe90dH8KC7co8cg7_OA() {
    }

    public static boolean isSpecial(String str) {
        return "hello".equalsIgnoreCase(str) || "away".equalsIgnoreCase(str);
    }

    static {
        for (int i = 0; i < 16; i++) {
            lockObjects[i] = new Object();
        }
    }

    public static QuickRepliesController getInstance(int i) {
        QuickRepliesController quickRepliesController;
        QuickRepliesController quickRepliesController2 = Instance[i];
        if (quickRepliesController2 != null) {
            return quickRepliesController2;
        }
        synchronized (lockObjects[i]) {
            try {
                quickRepliesController = Instance[i];
                if (quickRepliesController == null) {
                    QuickRepliesController[] quickRepliesControllerArr = Instance;
                    QuickRepliesController quickRepliesController3 = new QuickRepliesController(i);
                    quickRepliesControllerArr[i] = quickRepliesController3;
                    quickRepliesController = quickRepliesController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return quickRepliesController;
    }

    private QuickRepliesController(int i) {
        this.currentAccount = i;
    }

    /* JADX INFO: loaded from: classes3.dex */
    public class QuickReply {
        public int id;
        public boolean local;
        public HashSet<Integer> localIds = new HashSet<>();
        public int messagesCount;
        public String name;
        public int order;
        public MessageObject topMessage;
        public int topMessageId;

        public QuickReply() {
        }

        public int getTopMessageId() {
            MessageObject messageObject = this.topMessage;
            return messageObject != null ? messageObject.getId() : this.topMessageId;
        }

        public int getMessagesCount() {
            return this.local ? this.localIds.size() : this.messagesCount;
        }

        public boolean isSpecial() {
            return QuickRepliesController.isSpecial(this.name);
        }
    }

    public boolean canAddNew() {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.replies.size(); i3++) {
            i = (i != 0 || "hello".equalsIgnoreCase(this.replies.get(i3).name)) ? 1 : 0;
            i2 = (i2 != 0 || "away".equalsIgnoreCase(this.replies.get(i3).name)) ? 1 : 0;
            if (i != 0 && i2 != 0) {
                break;
            }
        }
        return (this.replies.size() + (i ^ 1)) + (i2 ^ 1) < MessagesController.getInstance(this.currentAccount).quickRepliesLimit;
    }

    public ArrayList<QuickReply> getFilteredReplies() {
        this.filtered.clear();
        for (int i = 0; i < this.replies.size(); i++) {
            if (!this.replies.get(i).isSpecial()) {
                this.filtered.add(this.replies.get(i));
            }
        }
        return this.filtered;
    }

    public void load() {
        load(true, null);
    }

    private void load(boolean z) {
        load(z, null);
    }

    private void load(boolean z, final Runnable runnable) {
        long jM1004m;
        TLRPC.Message message;
        if (this.loading || this.loaded) {
            return;
        }
        this.loading = true;
        if (z) {
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$load$1(messagesStorage, clientUserId, runnable);
                }
            });
            return;
        }
        TLRPC.TL_messages_getQuickReplies tL_messages_getQuickReplies = new TLRPC.TL_messages_getQuickReplies();
        tL_messages_getQuickReplies.hash = 0L;
        for (int i = 0; i < this.replies.size(); i++) {
            QuickReply quickReply = this.replies.get(i);
            long jCalcHash = MediaDataController.calcHash(tL_messages_getQuickReplies.hash, quickReply.id);
            tL_messages_getQuickReplies.hash = jCalcHash;
            String str = quickReply.name;
            if (str == null) {
                jM1004m = 0;
            } else {
                String strSubstring = Utilities.MD5(str).substring(0, 16);
                jM1004m = MessagesController$$ExternalSyntheticBackport5.m1004m(strSubstring, 0, strSubstring.length(), 16);
            }
            long jCalcHash2 = MediaDataController.calcHash(jCalcHash, jM1004m);
            tL_messages_getQuickReplies.hash = jCalcHash2;
            long jCalcHash3 = MediaDataController.calcHash(jCalcHash2, quickReply.topMessage == null ? 0L : r6.getId());
            tL_messages_getQuickReplies.hash = jCalcHash3;
            MessageObject messageObject = quickReply.topMessage;
            if (messageObject != null && (message = messageObject.messageOwner) != null && (message.flags & 32768) != 0) {
                tL_messages_getQuickReplies.hash = MediaDataController.calcHash(jCalcHash3, message.edit_date);
            } else {
                tL_messages_getQuickReplies.hash = MediaDataController.calcHash(jCalcHash3, 0L);
            }
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getQuickReplies, new RequestDelegate() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$load$3(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(4:(6:48|4|(1:6)(1:54)|11|40|41)|46|37|(1:39)) */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0140, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0143, code lost:
    
        r5.dispose();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0143  */
    /* JADX WARN: Type inference failed for: r10v6, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r5v4, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v9, types: [org.telegram.tgnet.InputSerializedData, org.telegram.tgnet.NativeByteBuffer] */
    /* JADX WARN: Type inference failed for: r7v1, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$load$1(MessagesStorage messagesStorage, long j, final Runnable runnable) throws Throwable {
        ?? r5;
        ArrayList arrayList;
        SQLiteDatabase database;
        ?? r8;
        ?? QueryFinalized;
        ?? r7;
        int i;
        int i2;
        ?? r4;
        int i3;
        ArrayList arrayList2;
        ?? ByteBufferValue;
        QuickRepliesController quickRepliesController = this;
        ArrayList arrayList3 = new ArrayList();
        final ArrayList<TLRPC.User> arrayList4 = new ArrayList<>();
        final ArrayList<TLRPC.Chat> arrayList5 = new ArrayList<>();
        try {
            database = messagesStorage.getDatabase();
            r8 = 0;
            QueryFinalized = database.queryFinalized("SELECT topic_id, name, order_value, count FROM business_replies ORDER BY order_value ASC", new Object[0]);
        } catch (Exception e) {
            e = e;
            arrayList = arrayList3;
            r5 = 0;
        } catch (Throwable th) {
            th = th;
            r5 = 0;
        }
        while (true) {
            try {
                try {
                    i = 2;
                    i2 = 1;
                    if (!QueryFinalized.next()) {
                        break;
                    }
                    QuickReply quickReply = quickRepliesController.new QuickReply();
                    quickReply.id = QueryFinalized.intValue(0);
                    quickReply.name = QueryFinalized.stringValue(1);
                    quickReply.order = QueryFinalized.intValue(2);
                    quickReply.messagesCount = QueryFinalized.intValue(3);
                    arrayList3.add(quickReply);
                } catch (Exception e2) {
                    e = e2;
                    arrayList = arrayList3;
                    r7 = QueryFinalized;
                }
                r5 = r7;
                final ArrayList arrayList6 = arrayList;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$load$0(arrayList4, arrayList5, arrayList6, runnable);
                    }
                });
            } catch (Throwable th2) {
                th = th2;
                r5 = QueryFinalized;
                if (r5 != 0) {
                }
                throw th;
            }
            FileLog.m992e(e);
            if (r5 != 0) {
                r5.dispose();
            }
        }
        QueryFinalized.dispose();
        ArrayList<Long> arrayList7 = new ArrayList<>();
        ArrayList arrayList8 = new ArrayList();
        int i4 = 0;
        QueryFinalized = QueryFinalized;
        while (i4 < arrayList3.size()) {
            QuickReply quickReply2 = (QuickReply) arrayList3.get(i4);
            QueryFinalized = database.queryFinalized("SELECT data, send_state, mid, date, topic_id, ttl FROM quick_replies_messages WHERE topic_id = ? ORDER BY mid ASC", Integer.valueOf(quickReply2.id));
            if (!QueryFinalized.next() || (ByteBufferValue = QueryFinalized.byteBufferValue(r8)) == 0) {
                arrayList = arrayList3;
                r4 = r8;
                i3 = i2;
                arrayList2 = arrayList8;
            } else {
                ?? TLdeserialize = TLRPC.Message.TLdeserialize(ByteBufferValue, ByteBufferValue.readInt32(r8), r8);
                TLdeserialize.send_state = QueryFinalized.intValue(i2);
                TLdeserialize.readAttachPath(ByteBufferValue, j);
                ByteBufferValue.reuse();
                TLdeserialize.id = QueryFinalized.intValue(i);
                TLdeserialize.date = QueryFinalized.intValue(3);
                TLdeserialize.flags |= TLObject.FLAG_30;
                TLdeserialize.quick_reply_shortcut_id = QueryFinalized.intValue(4);
                TLdeserialize.ttl = QueryFinalized.intValue(5);
                arrayList2 = arrayList8;
                MessagesStorage.addUsersAndChatsFromMessage(TLdeserialize, arrayList7, arrayList2, null);
                int i5 = quickRepliesController.currentAccount;
                arrayList = arrayList3;
                i3 = 1;
                r4 = 0;
                try {
                    MessageObject messageObject = new MessageObject(i5, TLdeserialize, false, true);
                    quickReply2.topMessage = messageObject;
                    quickReply2.topMessageId = TLdeserialize.id;
                    messageObject.generateThumbs(false);
                    quickReply2.topMessage.applyQuickReply(quickReply2.name, quickReply2.id);
                } catch (Exception e3) {
                    e = e3;
                    r7 = QueryFinalized;
                }
            }
            QueryFinalized.dispose();
            i4++;
            i2 = i3;
            arrayList8 = arrayList2;
            i = 2;
            quickRepliesController = this;
            r8 = r4;
            arrayList3 = arrayList;
            QueryFinalized = QueryFinalized;
        }
        arrayList = arrayList3;
        ArrayList arrayList9 = arrayList8;
        if (!arrayList9.isEmpty()) {
            messagesStorage.getChatsInternal(TextUtils.join(",", arrayList9), arrayList5);
        }
        if (!arrayList7.isEmpty()) {
            messagesStorage.getUsersInternal(arrayList7, arrayList4);
        }
        QueryFinalized.dispose();
        final ArrayList arrayList62 = arrayList;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$0(arrayList4, arrayList5, arrayList62, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Runnable runnable) {
        this.loading = false;
        MessagesController.getInstance(this.currentAccount).putUsers(arrayList, true);
        MessagesController.getInstance(this.currentAccount).putChats(arrayList2, true);
        this.replies.clear();
        this.replies.addAll(arrayList3);
        if (runnable != null) {
            runnable.run();
        } else {
            load(false);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$3(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$2(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$2(TLObject tLObject) {
        TLRPC.Message message;
        ArrayList arrayList = null;
        if (tLObject instanceof TLRPC.TL_messages_quickReplies) {
            TLRPC.TL_messages_quickReplies tL_messages_quickReplies = (TLRPC.TL_messages_quickReplies) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tL_messages_quickReplies.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tL_messages_quickReplies.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(tL_messages_quickReplies.users, tL_messages_quickReplies.chats, true, true);
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < tL_messages_quickReplies.quick_replies.size(); i++) {
                TLRPC.TL_quickReply tL_quickReply = tL_messages_quickReplies.quick_replies.get(i);
                QuickReply quickReply = new QuickReply();
                quickReply.id = tL_quickReply.shortcut_id;
                quickReply.name = tL_quickReply.shortcut;
                quickReply.messagesCount = tL_quickReply.count;
                quickReply.topMessageId = tL_quickReply.top_message;
                quickReply.order = i;
                int i2 = 0;
                while (true) {
                    if (i2 >= tL_messages_quickReplies.messages.size()) {
                        message = null;
                        break;
                    }
                    message = tL_messages_quickReplies.messages.get(i2);
                    if (message.id == tL_quickReply.top_message) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (message != null) {
                    MessageObject messageObject = new MessageObject(this.currentAccount, message, false, true);
                    quickReply.topMessage = messageObject;
                    messageObject.generateThumbs(false);
                    quickReply.topMessage.applyQuickReply(tL_quickReply.shortcut, tL_quickReply.shortcut_id);
                }
                arrayList2.add(quickReply);
            }
            arrayList = arrayList2;
        }
        this.loading = false;
        if (arrayList != null) {
            this.replies.clear();
            this.replies.addAll(arrayList);
        }
        this.loaded = true;
        saveToCache();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    private void ensureLoaded(Runnable runnable) {
        if (this.loaded) {
            runnable.run();
        } else {
            load(true, runnable);
        }
    }

    private void saveToCache() {
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveToCache$4(messagesStorage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToCache$4(MessagesStorage messagesStorage) {
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast = null;
        try {
            try {
                SQLiteDatabase database = messagesStorage.getDatabase();
                database.executeFast("DELETE FROM business_replies").stepThis().dispose();
                sQLitePreparedStatementExecuteFast = database.executeFast("REPLACE INTO business_replies VALUES(?, ?, ?, ?)");
                for (int i = 0; i < this.replies.size(); i++) {
                    QuickReply quickReply = this.replies.get(i);
                    sQLitePreparedStatementExecuteFast.requery();
                    sQLitePreparedStatementExecuteFast.bindInteger(1, quickReply.id);
                    sQLitePreparedStatementExecuteFast.bindString(2, quickReply.name);
                    sQLitePreparedStatementExecuteFast.bindInteger(3, quickReply.order);
                    sQLitePreparedStatementExecuteFast.bindInteger(4, quickReply.messagesCount);
                    sQLitePreparedStatementExecuteFast.step();
                }
                if (sQLitePreparedStatementExecuteFast != null) {
                    sQLitePreparedStatementExecuteFast.dispose();
                }
            } catch (Exception e) {
                FileLog.m992e(e);
                if (sQLitePreparedStatementExecuteFast != null) {
                    sQLitePreparedStatementExecuteFast.dispose();
                }
            }
        } catch (Throwable th) {
            if (sQLitePreparedStatementExecuteFast != null) {
                sQLitePreparedStatementExecuteFast.dispose();
            }
            throw th;
        }
    }

    private void updateOrder() {
        for (int i = 0; i < this.replies.size(); i++) {
            this.replies.get(i).order = i;
        }
    }

    private void addReply(final QuickReply quickReply) {
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                QuickRepliesController.$r8$lambda$AR4UodbEIfNfKeUoECl8nXZTcSI(messagesStorage, quickReply);
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    public static /* synthetic */ void $r8$lambda$AR4UodbEIfNfKeUoECl8nXZTcSI(MessagesStorage messagesStorage, QuickReply quickReply) {
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast = null;
        try {
            try {
                sQLitePreparedStatementExecuteFast = messagesStorage.getDatabase().executeFast("REPLACE INTO business_replies VALUES(?, ?, ?, ?);");
                sQLitePreparedStatementExecuteFast.requery();
                sQLitePreparedStatementExecuteFast.bindInteger(1, quickReply.id);
                sQLitePreparedStatementExecuteFast.bindString(2, quickReply.name);
                sQLitePreparedStatementExecuteFast.bindInteger(3, quickReply.order);
                sQLitePreparedStatementExecuteFast.bindInteger(4, quickReply.messagesCount);
                sQLitePreparedStatementExecuteFast.step();
                sQLitePreparedStatementExecuteFast.dispose();
            } catch (Exception e) {
                FileLog.m992e(e);
                if (sQLitePreparedStatementExecuteFast != null) {
                    sQLitePreparedStatementExecuteFast.dispose();
                }
            }
        } catch (Throwable th) {
            if (sQLitePreparedStatementExecuteFast != null) {
                sQLitePreparedStatementExecuteFast.dispose();
            }
            throw th;
        }
    }

    public QuickReply findReply(long j) {
        ArrayList<QuickReply> arrayList = this.replies;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            QuickReply quickReply = arrayList.get(i);
            i++;
            QuickReply quickReply2 = quickReply;
            if (quickReply2.id == j) {
                return quickReply2;
            }
        }
        return null;
    }

    public QuickReply findReply(String str) {
        ArrayList<QuickReply> arrayList = this.replies;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            QuickReply quickReply = arrayList.get(i);
            i++;
            QuickReply quickReply2 = quickReply;
            if (TextUtils.equals(str, quickReply2.name)) {
                return quickReply2;
            }
        }
        return null;
    }

    public QuickReply findLocalReply(String str) {
        ArrayList<QuickReply> arrayList = this.localReplies;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            QuickReply quickReply = arrayList.get(i);
            i++;
            QuickReply quickReply2 = quickReply;
            if (TextUtils.equals(str, quickReply2.name)) {
                return quickReply2;
            }
        }
        return null;
    }

    public boolean isNameBusy(String str, int i) {
        QuickReply quickReplyFindReply = findReply(str);
        return (quickReplyFindReply == null || quickReplyFindReply.id == i) ? false : true;
    }

    public void reorder() {
        ArrayList<QuickReply> arrayList;
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (true) {
            int size = this.replies.size();
            arrayList = this.replies;
            if (i >= size) {
                break;
            }
            arrayList2.add(Integer.valueOf(arrayList.get(i).id));
            i++;
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda18
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return QuickRepliesController.$r8$lambda$IlYkbDO4pT633PiIRVfxrzhaKzI((QuickRepliesController.QuickReply) obj, (QuickRepliesController.QuickReply) obj2);
            }
        });
        for (int i2 = 0; i2 < this.replies.size(); i2++) {
            if (this.replies.get(i2).id != ((Integer) arrayList2.get(i2)).intValue()) {
                TLRPC.TL_messages_reorderQuickReplies tL_messages_reorderQuickReplies = new TLRPC.TL_messages_reorderQuickReplies();
                for (int i3 = 0; i3 < this.replies.size(); i3++) {
                    tL_messages_reorderQuickReplies.order.add(Integer.valueOf(this.replies.get(i3).id));
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_reorderQuickReplies, new RequestDelegate() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda19
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda20
                            @Override // java.lang.Runnable
                            public final void run() {
                                QuickRepliesController.$r8$lambda$aeGYKWH1LXZ31D_ScI7cVyeoX0s();
                            }
                        });
                    }
                });
                saveToCache();
                return;
            }
        }
    }

    public static /* synthetic */ int $r8$lambda$IlYkbDO4pT633PiIRVfxrzhaKzI(QuickReply quickReply, QuickReply quickReply2) {
        return quickReply.order - quickReply2.order;
    }

    public void renameReply(int i, String str) {
        QuickReply quickReplyFindReply = findReply(i);
        if (quickReplyFindReply == null) {
            return;
        }
        quickReplyFindReply.name = str;
        TLRPC.TL_messages_editQuickReplyShortcut tL_messages_editQuickReplyShortcut = new TLRPC.TL_messages_editQuickReplyShortcut();
        tL_messages_editQuickReplyShortcut.shortcut_id = i;
        tL_messages_editQuickReplyShortcut.shortcut = str;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_editQuickReplyShortcut, new RequestDelegate() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickRepliesController.$r8$lambda$z94vlEvUKe90dH8KC7co8cg7_OA();
                    }
                });
            }
        });
        saveToCache();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    public void deleteReplies(final ArrayList<Integer> arrayList) {
        int i = 0;
        while (i < arrayList.size()) {
            if (findReply(arrayList.get(i).intValue()) == null) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            QuickReply quickReplyFindReply = findReply(arrayList.get(i2).intValue());
            this.replies.remove(quickReplyFindReply);
            deleteLocalReply(quickReplyFindReply.name);
            TLRPC.TL_messages_deleteQuickReplyShortcut tL_messages_deleteQuickReplyShortcut = new TLRPC.TL_messages_deleteQuickReplyShortcut();
            tL_messages_deleteQuickReplyShortcut.shortcut_id = quickReplyFindReply.id;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_deleteQuickReplyShortcut, new RequestDelegate() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda21
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda25
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickRepliesController.$r8$lambda$RydZKfuF2MZQ3yyLCHPNfKOIt0M();
                        }
                    });
                }
            });
            if ("hello".equals(quickReplyFindReply.name)) {
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.updateBusinessGreetingMessage(), null);
                TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(UserConfig.getInstance(this.currentAccount).getClientUserId());
                if (userFull != null) {
                    userFull.flags2 &= -5;
                    userFull.business_greeting_message = null;
                    MessagesStorage.getInstance(this.currentAccount).updateUserInfo(userFull, true);
                }
            } else if ("away".equals(quickReplyFindReply.name)) {
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.updateBusinessAwayMessage(), null);
                TLRPC.UserFull userFull2 = MessagesController.getInstance(this.currentAccount).getUserFull(UserConfig.getInstance(this.currentAccount).getClientUserId());
                if (userFull2 != null) {
                    userFull2.flags2 &= -9;
                    userFull2.business_away_message = null;
                    MessagesStorage.getInstance(this.currentAccount).updateUserInfo(userFull2, true);
                }
            }
        }
        saveToCache();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                QuickRepliesController.$r8$lambda$SeFBaSSvuRxXGI3BgqiugRrI1p8(messagesStorage, arrayList);
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    public static /* synthetic */ void $r8$lambda$SeFBaSSvuRxXGI3BgqiugRrI1p8(MessagesStorage messagesStorage, ArrayList arrayList) {
        try {
            messagesStorage.getDatabase().executeFast(String.format("DELETE FROM quick_replies_messages WHERE topic_id IN (%s)", TextUtils.join(", ", arrayList))).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    private void updateTopMessage(final QuickReply quickReply) {
        if (quickReply == null) {
            return;
        }
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$updateTopMessage$16(messagesStorage, quickReply, clientUserId);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTopMessage$16(MessagesStorage messagesStorage, final QuickReply quickReply, long j) throws Throwable {
        Throwable th;
        Exception exc;
        ArrayList<Long> arrayList;
        ArrayList arrayList2;
        SQLiteCursor sQLiteCursorQueryFinalized;
        NativeByteBuffer nativeByteBufferByteBufferValue;
        SQLiteCursor sQLiteCursor = null;
        messageObject = null;
        MessageObject messageObject = null;
        sQLiteCursor = null;
        try {
            try {
                arrayList = new ArrayList<>();
                arrayList2 = new ArrayList();
                sQLiteCursorQueryFinalized = messagesStorage.getDatabase().queryFinalized("SELECT data, send_state, mid, date, topic_id, ttl FROM quick_replies_messages WHERE topic_id = ? ORDER BY mid ASC", Integer.valueOf(quickReply.id));
            } catch (Exception e) {
                exc = e;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (sQLiteCursorQueryFinalized.next() && (nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0)) != null) {
                TLRPC.Message messageTLdeserialize = TLRPC.Message.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false);
                messageTLdeserialize.send_state = sQLiteCursorQueryFinalized.intValue(1);
                messageTLdeserialize.readAttachPath(nativeByteBufferByteBufferValue, j);
                nativeByteBufferByteBufferValue.reuse();
                messageTLdeserialize.id = sQLiteCursorQueryFinalized.intValue(2);
                messageTLdeserialize.date = sQLiteCursorQueryFinalized.intValue(3);
                messageTLdeserialize.flags |= TLObject.FLAG_30;
                messageTLdeserialize.quick_reply_shortcut_id = sQLiteCursorQueryFinalized.intValue(4);
                messageTLdeserialize.ttl = sQLiteCursorQueryFinalized.intValue(5);
                MessagesStorage.addUsersAndChatsFromMessage(messageTLdeserialize, arrayList, arrayList2, null);
                messageObject = new MessageObject(this.currentAccount, messageTLdeserialize, false, true);
            }
            final MessageObject messageObject2 = messageObject;
            sQLiteCursorQueryFinalized.dispose();
            final ArrayList<TLRPC.User> arrayList3 = new ArrayList<>();
            final ArrayList<TLRPC.Chat> arrayList4 = new ArrayList<>();
            if (!arrayList2.isEmpty()) {
                messagesStorage.getChatsInternal(TextUtils.join(",", arrayList2), arrayList4);
            }
            if (!arrayList.isEmpty()) {
                messagesStorage.getUsersInternal(arrayList, arrayList3);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateTopMessage$15(arrayList3, arrayList4, quickReply, messageObject2);
                }
            });
            sQLiteCursorQueryFinalized.dispose();
        } catch (Exception e2) {
            exc = e2;
            sQLiteCursor = sQLiteCursorQueryFinalized;
            FileLog.m992e(exc);
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
            }
        } catch (Throwable th3) {
            th = th3;
            sQLiteCursor = sQLiteCursorQueryFinalized;
            if (sQLiteCursor != null) {
                sQLiteCursor.dispose();
                throw th;
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTopMessage$15(ArrayList arrayList, ArrayList arrayList2, QuickReply quickReply, MessageObject messageObject) {
        MessagesController.getInstance(this.currentAccount).putUsers(arrayList, true);
        MessagesController.getInstance(this.currentAccount).putChats(arrayList2, true);
        quickReply.topMessage = messageObject;
        if (messageObject != null) {
            messageObject.applyQuickReply(quickReply.name, quickReply.id);
        }
        saveToCache();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    public boolean processUpdate(final TLRPC.Update update, final String str, final int i) {
        if (update instanceof TL_update.TL_updateQuickReplyMessage) {
            final TLRPC.Message message = ((TL_update.TL_updateQuickReplyMessage) update).message;
            ensureLoaded(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processUpdate$17(message, str, i);
                }
            });
            return true;
        }
        if (update instanceof TL_update.TL_updateQuickReplies) {
            ensureLoaded(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processUpdate$18(update);
                }
            });
            return true;
        }
        if (update instanceof TL_update.TL_updateNewQuickReply) {
            ensureLoaded(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processUpdate$19(update);
                }
            });
            return true;
        }
        if (update instanceof TL_update.TL_updateDeleteQuickReply) {
            ensureLoaded(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processUpdate$21(update);
                }
            });
            return true;
        }
        if (!(update instanceof TL_update.TL_updateDeleteQuickReplyMessages)) {
            return false;
        }
        ensureLoaded(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processUpdate$22(update);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdate$17(TLRPC.Message message, String str, int i) {
        if ((message.flags & TLObject.FLAG_30) != 0) {
            QuickReply quickReplyFindReply = findReply(message.quick_reply_shortcut_id);
            if (quickReplyFindReply == null) {
                QuickReply quickReply = new QuickReply();
                quickReply.id = message.quick_reply_shortcut_id;
                quickReply.topMessageId = message.id;
                MessageObject messageObject = new MessageObject(this.currentAccount, message, false, true);
                quickReply.topMessage = messageObject;
                messageObject.generateThumbs(false);
                if (str != null) {
                    quickReply.name = str;
                    deleteLocalReply(str);
                }
                quickReply.topMessage.applyQuickReply(str, i);
                quickReply.messagesCount = 1;
                this.replies.add(quickReply);
                updateOrder();
                addReply(quickReply);
            } else {
                int i2 = quickReplyFindReply.topMessageId;
                int i3 = message.id;
                if (i2 == i3) {
                    quickReplyFindReply.topMessageId = i3;
                    MessageObject messageObject2 = new MessageObject(this.currentAccount, message, false, true);
                    quickReplyFindReply.topMessage = messageObject2;
                    messageObject2.generateThumbs(false);
                    saveToCache();
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
                } else if ((message.flags & 32768) == 0) {
                    quickReplyFindReply.messagesCount++;
                    saveToCache();
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
                }
            }
        }
        if (str == null && i == 0) {
            ArrayList<TLRPC.Message> arrayList = new ArrayList<>();
            arrayList.add(message);
            MessagesStorage.getInstance(this.currentAccount).putMessages(arrayList, true, true, false, DownloadController.getInstance(this.currentAccount).getAutodownloadMask(), 5, message.quick_reply_shortcut_id);
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            ArrayList<MessageObject> arrayList2 = new ArrayList<>();
            arrayList2.add(new MessageObject(this.currentAccount, message, true, true));
            MessagesController.getInstance(this.currentAccount).updateInterfaceWithMessages(clientUserId, arrayList2, 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdate$18(TLRPC.Update update) {
        QuickReply quickReply;
        ArrayList<TLRPC.TL_quickReply> arrayList = ((TL_update.TL_updateQuickReplies) update).quick_replies;
        ArrayList arrayList2 = new ArrayList(this.replies);
        this.replies.clear();
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.TL_quickReply tL_quickReply = arrayList.get(i);
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList2.size()) {
                    quickReply = null;
                    break;
                } else {
                    if (((QuickReply) arrayList2.get(i2)).id == tL_quickReply.shortcut_id) {
                        quickReply = (QuickReply) arrayList2.get(i2);
                        break;
                    }
                    i2++;
                }
            }
            if (quickReply == null) {
                quickReply = new QuickReply();
            }
            quickReply.id = tL_quickReply.shortcut_id;
            quickReply.name = tL_quickReply.shortcut;
            quickReply.messagesCount = tL_quickReply.count;
            quickReply.order = i;
            quickReply.topMessageId = tL_quickReply.top_message;
            MessageObject messageObject = quickReply.topMessage;
            if (messageObject != null && messageObject.getId() != tL_quickReply.top_message) {
                quickReply.topMessage = null;
            }
            this.replies.add(quickReply);
            deleteLocalReply(quickReply.name);
        }
        saveToCache();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdate$19(TLRPC.Update update) {
        TLRPC.TL_quickReply tL_quickReply = ((TL_update.TL_updateNewQuickReply) update).quick_reply;
        QuickReply quickReplyFindReply = findReply(tL_quickReply.shortcut_id);
        if (quickReplyFindReply != null) {
            quickReplyFindReply.name = tL_quickReply.shortcut;
            quickReplyFindReply.messagesCount = tL_quickReply.count;
            quickReplyFindReply.topMessageId = tL_quickReply.top_message;
            MessageObject messageObject = quickReplyFindReply.topMessage;
            if (messageObject != null && messageObject.getId() != tL_quickReply.top_message) {
                quickReplyFindReply.topMessage = null;
                updateTopMessage(quickReplyFindReply);
                return;
            }
        } else {
            QuickReply quickReply = new QuickReply();
            quickReply.id = tL_quickReply.shortcut_id;
            quickReply.name = tL_quickReply.shortcut;
            quickReply.messagesCount = tL_quickReply.count;
            quickReply.topMessageId = tL_quickReply.top_message;
            updateOrder();
            this.replies.add(quickReply);
            deleteLocalReply(quickReply.name);
        }
        saveToCache();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdate$21(TLRPC.Update update) {
        QuickReply quickReplyFindReply = findReply(((TL_update.TL_updateDeleteQuickReply) update).shortcut_id);
        if (quickReplyFindReply != null) {
            this.replies.remove(quickReplyFindReply);
            deleteLocalReply(quickReplyFindReply.name);
            final int i = quickReplyFindReply.id;
            final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
            messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    QuickRepliesController.m7472$r8$lambda$bHK3ut4ePBfrswrOWBKAHIirt4(messagesStorage, i);
                }
            });
            saveToCache();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$bH-K3ut4ePBfrswrOWBKAHIirt4, reason: not valid java name */
    public static /* synthetic */ void m7472$r8$lambda$bHK3ut4ePBfrswrOWBKAHIirt4(MessagesStorage messagesStorage, int i) {
        try {
            SQLiteDatabase database = messagesStorage.getDatabase();
            database.executeFast("DELETE FROM business_replies WHERE topic_id = " + i).stepThis().dispose();
            database.executeFast("DELETE FROM quick_replies_messages WHERE topic_id = " + i).stepThis().dispose();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdate$22(TLRPC.Update update) {
        TL_update.TL_updateDeleteQuickReplyMessages tL_updateDeleteQuickReplyMessages = (TL_update.TL_updateDeleteQuickReplyMessages) update;
        QuickReply quickReplyFindReply = findReply(tL_updateDeleteQuickReplyMessages.shortcut_id);
        if (quickReplyFindReply != null) {
            int size = quickReplyFindReply.messagesCount - tL_updateDeleteQuickReplyMessages.messages.size();
            quickReplyFindReply.messagesCount = size;
            if (size <= 0) {
                this.replies.remove(quickReplyFindReply);
            }
            if (tL_updateDeleteQuickReplyMessages.messages.contains(Integer.valueOf(quickReplyFindReply.getTopMessageId())) || quickReplyFindReply.topMessage == null) {
                quickReplyFindReply.topMessage = null;
                updateTopMessage(quickReplyFindReply);
            } else {
                saveToCache();
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
            }
        }
    }

    public void checkLocalMessages(ArrayList<MessageObject> arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            MessageObject messageObject = arrayList.get(i);
            i++;
            MessageObject messageObject2 = messageObject;
            if (messageObject2.isSending() && findReply(messageObject2.getQuickReplyId()) == null && messageObject2.getQuickReplyName() != null && findReply(messageObject2.getQuickReplyName()) == null) {
                QuickReply quickReplyFindLocalReply = findLocalReply(messageObject2.getQuickReplyName());
                if (quickReplyFindLocalReply == null) {
                    quickReplyFindLocalReply = new QuickReply();
                    quickReplyFindLocalReply.local = true;
                    quickReplyFindLocalReply.name = messageObject2.getQuickReplyName();
                    quickReplyFindLocalReply.id = -1;
                    quickReplyFindLocalReply.topMessage = messageObject2;
                    quickReplyFindLocalReply.topMessageId = messageObject2.getId();
                    this.localReplies.add(quickReplyFindLocalReply);
                }
                quickReplyFindLocalReply.localIds.add(Integer.valueOf(messageObject2.getId()));
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$checkLocalMessages$23();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLocalMessages$23() {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
    }

    public void deleteLocalReply(String str) {
        QuickReply quickReplyFindLocalReply = findLocalReply(str);
        if (quickReplyFindLocalReply != null) {
            this.localReplies.remove(quickReplyFindLocalReply);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
        }
    }

    public void deleteLocalMessages(ArrayList<Integer> arrayList) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Integer num = arrayList.get(i);
            i++;
            deleteLocalMessage(num.intValue());
        }
    }

    public void deleteLocalMessage(int i) {
        for (int i2 = 0; i2 < this.localReplies.size(); i2++) {
            QuickReply quickReply = this.localReplies.get(i2);
            if (quickReply.localIds.contains(Integer.valueOf(i))) {
                quickReply.localIds.remove(Integer.valueOf(i));
                if (quickReply.getMessagesCount() <= 0) {
                    this.localReplies.remove(quickReply);
                }
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
                return;
            }
        }
    }

    public boolean hasReplies() {
        return !this.replies.isEmpty();
    }

    public void sendQuickReplyTo(long j, final QuickReply quickReply) {
        if (quickReply == null) {
            return;
        }
        final TLRPC.TL_messages_sendQuickReplyMessages tL_messages_sendQuickReplyMessages = new TLRPC.TL_messages_sendQuickReplyMessages();
        TLRPC.InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        tL_messages_sendQuickReplyMessages.peer = inputPeer;
        if (inputPeer == null) {
            return;
        }
        tL_messages_sendQuickReplyMessages.shortcut_id = quickReply.id;
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendQuickReplyTo$27(messagesStorage, quickReply, tL_messages_sendQuickReplyMessages);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendQuickReplyTo$27(MessagesStorage messagesStorage, final QuickReply quickReply, final TLRPC.TL_messages_sendQuickReplyMessages tL_messages_sendQuickReplyMessages) {
        final ArrayList arrayList = new ArrayList();
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        try {
            try {
                sQLiteCursorQueryFinalized = messagesStorage.getDatabase().queryFinalized("SELECT id FROM quick_replies_messages WHERE topic_id = ?", Integer.valueOf(quickReply.id));
                while (sQLiteCursorQueryFinalized.next()) {
                    arrayList.add(Integer.valueOf(sQLiteCursorQueryFinalized.intValue(0)));
                }
            } catch (Exception e) {
                FileLog.m992e(e);
                if (sQLiteCursorQueryFinalized != null) {
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda24
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$sendQuickReplyTo$26(arrayList, quickReply, tL_messages_sendQuickReplyMessages);
                    }
                });
            }
            sQLiteCursorQueryFinalized.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendQuickReplyTo$26(arrayList, quickReply, tL_messages_sendQuickReplyMessages);
                }
            });
        } catch (Throwable th) {
            if (sQLiteCursorQueryFinalized != null) {
                sQLiteCursorQueryFinalized.dispose();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendQuickReplyTo$26(final ArrayList arrayList, QuickReply quickReply, final TLRPC.TL_messages_sendQuickReplyMessages tL_messages_sendQuickReplyMessages) {
        if (arrayList.isEmpty() || arrayList.size() < quickReply.getMessagesCount()) {
            TLRPC.TL_messages_getQuickReplyMessages tL_messages_getQuickReplyMessages = new TLRPC.TL_messages_getQuickReplyMessages();
            tL_messages_getQuickReplyMessages.shortcut_id = quickReply.id;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getQuickReplyMessages, new RequestDelegate() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda26
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$sendQuickReplyTo$25(arrayList, tL_messages_sendQuickReplyMessages, tLObject, tL_error);
                }
            });
        } else {
            tL_messages_sendQuickReplyMessages.id = arrayList;
            for (int i = 0; i < arrayList.size(); i++) {
                tL_messages_sendQuickReplyMessages.random_id.add(Long.valueOf(Utilities.random.nextLong()));
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_sendQuickReplyMessages, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendQuickReplyTo$25(final ArrayList arrayList, final TLRPC.TL_messages_sendQuickReplyMessages tL_messages_sendQuickReplyMessages, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.QuickRepliesController$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendQuickReplyTo$24(tLObject, arrayList, tL_messages_sendQuickReplyMessages, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendQuickReplyTo$24(TLObject tLObject, ArrayList arrayList, TLRPC.TL_messages_sendQuickReplyMessages tL_messages_sendQuickReplyMessages, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_messages_messages) {
            ArrayList<TLRPC.Message> arrayList2 = ((TLRPC.TL_messages_messages) tLObject).messages;
            arrayList.clear();
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                TLRPC.Message message = arrayList2.get(i);
                i++;
                arrayList.add(Integer.valueOf(message.id));
            }
            tL_messages_sendQuickReplyMessages.id = arrayList;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                tL_messages_sendQuickReplyMessages.random_id.add(Long.valueOf(Utilities.random.nextLong()));
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_sendQuickReplyMessages, null);
            return;
        }
        FileLog.m990e("received " + tLObject + " " + tL_error + " on getQuickReplyMessages when trying to send quick reply");
    }
}
