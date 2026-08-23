package org.telegram.p029ui.Stories;

import android.text.TextUtils;
import androidx.collection.LongSparseArray;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.function.ToIntFunction;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLiteException;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.Timer;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stories;
import p022j$.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public class StoriesStorage {
    int currentAccount;
    MessagesStorage storage;

    public StoriesStorage(int i) {
        this.currentAccount = i;
        this.storage = MessagesStorage.getInstance(i);
    }

    public void getAllStories(final Consumer consumer) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getAllStories$3(consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r15v2, types: [org.telegram.tgnet.InputSerializedData, org.telegram.tgnet.NativeByteBuffer] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r6v10, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v3, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v8, types: [org.telegram.SQLite.SQLiteCursor] */
    /* JADX WARN: Type inference failed for: r6v9 */
    public /* synthetic */ void lambda$getAllStories$3(final Consumer consumer) {
        ?? QueryFinalized;
        int i;
        SQLiteCursor sQLiteCursorQueryFinalized;
        LongSparseIntArray longSparseIntArray;
        int i2;
        SQLiteDatabase sQLiteDatabase;
        ?? r19;
        int i3;
        ?? r18;
        int i4;
        SQLiteDatabase database = this.storage.getDatabase();
        ArrayList<TL_stories.PeerStories> arrayList = new ArrayList<>();
        ArrayList<Long> arrayList2 = new ArrayList<>();
        ArrayList<Long> arrayList3 = new ArrayList<>();
        ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        try {
            i = 0;
            sQLiteCursorQueryFinalized = database.queryFinalized("SELECT dialog_id, max_read FROM stories_counter", new Object[0]);
            try {
                longSparseIntArray = new LongSparseIntArray();
            } catch (Throwable th) {
                th = th;
                QueryFinalized = sQLiteCursorQueryFinalized;
            }
        } catch (Throwable th2) {
            th = th2;
            QueryFinalized = 0;
        }
        while (true) {
            i2 = 1;
            if (!sQLiteCursorQueryFinalized.next()) {
                break;
            }
            long jLongValue = sQLiteCursorQueryFinalized.longValue(0);
            longSparseIntArray.put(jLongValue, sQLiteCursorQueryFinalized.intValue(1));
            if (jLongValue > 0) {
                arrayList2.add(Long.valueOf(jLongValue));
            } else {
                arrayList3.add(Long.valueOf(jLongValue));
            }
            try {
                FileLog.m1136e(th);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        consumer.accept(null);
                    }
                });
                return;
            } finally {
                if (QueryFinalized != 0) {
                    QueryFinalized.dispose();
                }
            }
        }
        sQLiteCursorQueryFinalized.dispose();
        int i5 = 0;
        while (i5 < longSparseIntArray.size()) {
            long jKeyAt = longSparseIntArray.keyAt(i5);
            int iValueAt = longSparseIntArray.valueAt(i5);
            Locale locale = Locale.US;
            Object[] objArr = new Object[i2];
            objArr[i] = Long.valueOf(jKeyAt);
            QueryFinalized = database.queryFinalized(String.format(locale, "SELECT data, custom_params FROM stories WHERE dialog_id = %d", objArr), new Object[i]);
            try {
                ArrayList<TL_stories.StoryItem> arrayList4 = new ArrayList<>();
                QueryFinalized = QueryFinalized;
                ?? r11 = i2;
                while (QueryFinalized.next()) {
                    ?? ByteBufferValue = QueryFinalized.byteBufferValue(i);
                    NativeByteBuffer nativeByteBufferByteBufferValue = QueryFinalized.byteBufferValue(r11);
                    if (ByteBufferValue != 0) {
                        sQLiteDatabase = database;
                        TL_stories.StoryItem storyItemTLdeserialize = TL_stories.StoryItem.TLdeserialize(ByteBufferValue, ByteBufferValue.readInt32(r11), r11);
                        storyItemTLdeserialize.dialogId = jKeyAt;
                        r18 = r11;
                        TL_stories.StoryFwdHeader storyFwdHeader = storyItemTLdeserialize.fwd_from;
                        if (storyFwdHeader != null) {
                            try {
                                TLRPC.Peer peer = storyFwdHeader.from;
                                if (peer != null) {
                                    MessagesStorage.addLoadPeerInfo(peer, arrayList2, arrayList3);
                                }
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                        ?? r192 = QueryFinalized;
                        int i6 = 0;
                        while (i6 < storyItemTLdeserialize.media_areas.size()) {
                            try {
                                if (storyItemTLdeserialize.media_areas.get(i6) instanceof TL_stories.TL_mediaAreaChannelPost) {
                                    i4 = i5;
                                    long j = ((TL_stories.TL_mediaAreaChannelPost) storyItemTLdeserialize.media_areas.get(i6)).channel_id;
                                    if (!arrayList3.contains(Long.valueOf(j))) {
                                        arrayList3.add(Long.valueOf(j));
                                    }
                                } else {
                                    i4 = i5;
                                }
                                i6++;
                                i5 = i4;
                            } catch (Throwable th4) {
                                th = th4;
                                QueryFinalized = r192;
                            }
                        }
                        i3 = i5;
                        TLRPC.Peer peer2 = storyItemTLdeserialize.from_id;
                        if (peer2 != null) {
                            MessagesStorage.addLoadPeerInfo(peer2, arrayList2, arrayList3);
                        }
                        StoryCustomParamsHelper.readLocalParams(storyItemTLdeserialize, nativeByteBufferByteBufferValue);
                        arrayList4.add(storyItemTLdeserialize);
                        ByteBufferValue.reuse();
                        r19 = r192;
                    } else {
                        sQLiteDatabase = database;
                        r19 = QueryFinalized;
                        i3 = i5;
                        r18 = r11;
                    }
                    if (nativeByteBufferByteBufferValue != null) {
                        nativeByteBufferByteBufferValue.reuse();
                    }
                    database = sQLiteDatabase;
                    r11 = r18;
                    QueryFinalized = r19;
                    i5 = i3;
                    i = 0;
                }
                SQLiteDatabase sQLiteDatabase2 = database;
                int i7 = i5;
                ?? r182 = r11;
                QueryFinalized.dispose();
                TL_stories.TL_peerStories tL_peerStories = new TL_stories.TL_peerStories();
                tL_peerStories.stories = arrayList4;
                tL_peerStories.max_read_id = iValueAt;
                tL_peerStories.peer = MessagesController.getInstance(this.currentAccount).getPeer(jKeyAt);
                arrayList.add(tL_peerStories);
                i5 = i7 + 1;
                database = sQLiteDatabase2;
                i2 = r182 == true ? 1 : 0;
                i = 0;
            } catch (Throwable th5) {
                th = th5;
            }
        }
        final TL_stories.TL_stories_allStories tL_stories_allStories = new TL_stories.TL_stories_allStories();
        tL_stories_allStories.peer_stories = arrayList;
        tL_stories_allStories.users = this.storage.getUsers(arrayList2);
        tL_stories_allStories.chats = this.storage.getChats(arrayList3);
        int i8 = 0;
        while (i8 < tL_stories_allStories.peer_stories.size()) {
            TL_stories.PeerStories peerStories = tL_stories_allStories.peer_stories.get(i8);
            checkExpiredStories(DialogObject.getPeerDialogId(peerStories.peer), peerStories.stories);
            if (peerStories.stories.isEmpty()) {
                tL_stories_allStories.peer_stories.remove(i8);
                i8--;
            }
            Collections.sort(peerStories.stories, StoriesController.storiesComparator);
            i8++;
        }
        Collections.sort(tL_stories_allStories.peer_stories, Comparator.CC.comparingInt(new ToIntFunction() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda13
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return StoriesStorage.$r8$lambda$oObnqwHhX94CgPGTFQagIu0JO2g((TL_stories.PeerStories) obj);
            }
        }));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                consumer.accept(tL_stories_allStories);
            }
        });
    }

    public static /* synthetic */ int $r8$lambda$oObnqwHhX94CgPGTFQagIu0JO2g(TL_stories.PeerStories peerStories) {
        return -peerStories.stories.get(r1.size() - 1).date;
    }

    private void checkExpiredStories(long j, ArrayList arrayList) {
        int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        SQLiteDatabase database = this.storage.getDatabase();
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        int i = 0;
        while (i < arrayList.size()) {
            TL_stories.StoryItem storyItem = (TL_stories.StoryItem) arrayList.get(i);
            if (currentTime > ((TL_stories.StoryItem) arrayList.get(i)).expire_date) {
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    arrayList2 = new ArrayList();
                }
                arrayList3.add(Integer.valueOf(storyItem.f1857id));
                arrayList2.add(storyItem);
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        if (arrayList2 != null) {
            try {
                database.executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id = %d AND story_id IN (%s)", Long.valueOf(j), TextUtils.join(", ", arrayList3))).stepThis().dispose();
            } catch (SQLiteException e) {
                FileLog.m1136e(e);
            }
        }
    }

    public void putStoriesInternal(long j, TL_stories.PeerStories peerStories) {
        SQLiteDatabase database = this.storage.getDatabase();
        if (peerStories != null) {
            try {
                ArrayList<TL_stories.StoryItem> arrayList = peerStories.stories;
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast = database.executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?)");
                for (int i = 0; i < arrayList.size(); i++) {
                    sQLitePreparedStatementExecuteFast.requery();
                    TL_stories.StoryItem storyItem = arrayList.get(i);
                    if (storyItem instanceof TL_stories.TL_storyItemDeleted) {
                        FileLog.m1134e("try write deleted story");
                    } else {
                        sQLitePreparedStatementExecuteFast.bindLong(1, j);
                        sQLitePreparedStatementExecuteFast.bindLong(2, storyItem.f1857id);
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(storyItem.getObjectSize());
                        storyItem.serializeToStream(nativeByteBuffer);
                        sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer);
                        NativeByteBuffer nativeByteBufferWriteLocalParams = StoryCustomParamsHelper.writeLocalParams(storyItem);
                        if (nativeByteBufferWriteLocalParams != null) {
                            sQLitePreparedStatementExecuteFast.bindByteBuffer(4, nativeByteBufferWriteLocalParams);
                        } else {
                            sQLitePreparedStatementExecuteFast.bindNull(4);
                        }
                        if (nativeByteBufferWriteLocalParams != null) {
                            nativeByteBufferWriteLocalParams.reuse();
                        }
                        sQLitePreparedStatementExecuteFast.step();
                        nativeByteBuffer.reuse();
                    }
                }
                sQLitePreparedStatementExecuteFast.dispose();
                database.executeFast(String.format(Locale.US, "REPLACE INTO stories_counter VALUES(%d, %d, %d)", Long.valueOf(j), 0, Integer.valueOf(peerStories.max_read_id))).stepThis().dispose();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    public void putStoryInternal(long j, TL_stories.StoryItem storyItem) {
        try {
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = this.storage.getDatabase().executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?)");
            if (storyItem instanceof TL_stories.TL_storyItemDeleted) {
                FileLog.m1134e("putStoryInternal: try write deleted story");
                return;
            }
            sQLitePreparedStatementExecuteFast.bindLong(1, j);
            sQLitePreparedStatementExecuteFast.bindLong(2, storyItem.f1857id);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(storyItem.getObjectSize());
            storyItem.serializeToStream(nativeByteBuffer);
            sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer);
            NativeByteBuffer nativeByteBufferWriteLocalParams = StoryCustomParamsHelper.writeLocalParams(storyItem);
            if (nativeByteBufferWriteLocalParams != null) {
                sQLitePreparedStatementExecuteFast.bindByteBuffer(4, nativeByteBufferWriteLocalParams);
            } else {
                sQLitePreparedStatementExecuteFast.bindNull(4);
            }
            if (nativeByteBufferWriteLocalParams != null) {
                nativeByteBufferWriteLocalParams.reuse();
            }
            sQLitePreparedStatementExecuteFast.step();
            nativeByteBuffer.reuse();
            sQLitePreparedStatementExecuteFast.dispose();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public void saveAllStories(final ArrayList arrayList, final boolean z, final boolean z2, final Runnable runnable) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveAllStories$4(arrayList, z, z2, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fc A[LOOP:2: B:46:0x00f6->B:48:0x00fc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$saveAllStories$4(ArrayList arrayList, boolean z, boolean z2, Runnable runnable) {
        SQLiteDatabase database = this.storage.getDatabase();
        for (int i = 0; i < arrayList.size(); i++) {
            TL_stories.PeerStories peerStories = (TL_stories.PeerStories) arrayList.get(i);
            fillSkippedStories(DialogObject.getPeerDialogId(peerStories.peer), peerStories);
        }
        if (!z) {
            SQLiteCursor sQLiteCursorQueryFinalized = null;
            try {
                sQLiteCursorQueryFinalized = database.queryFinalized("SELECT DISTINCT dialog_id FROM stories", new Object[0]);
                ArrayList arrayList2 = new ArrayList();
                while (sQLiteCursorQueryFinalized.next()) {
                    long jLongValue = sQLiteCursorQueryFinalized.longValue(0);
                    if (jLongValue > 0) {
                        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(jLongValue));
                        if (user == null) {
                            user = MessagesStorage.getInstance(this.currentAccount).getUser(jLongValue);
                        }
                        if (user == null || (user.stories_hidden == z2 && !arrayList2.contains(Long.valueOf(jLongValue)))) {
                            arrayList2.add(Long.valueOf(jLongValue));
                        }
                    } else {
                        long j = -jLongValue;
                        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
                        if (chat == null) {
                            chat = MessagesStorage.getInstance(this.currentAccount).getChat(j);
                        }
                        if (chat == null || (chat.stories_hidden == z2 && !arrayList2.contains(Long.valueOf(jLongValue)))) {
                            arrayList2.add(Long.valueOf(jLongValue));
                        }
                    }
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("StoriesStorage delete dialogs " + TextUtils.join(",", arrayList2));
                }
                database.executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id IN(%s)", TextUtils.join(",", arrayList2))).stepThis().dispose();
            } catch (Throwable th) {
                try {
                    this.storage.checkSQLException(th);
                    while (i < arrayList.size()) {
                    }
                    if (runnable == null) {
                    }
                } finally {
                    if (sQLiteCursorQueryFinalized != null) {
                        sQLiteCursorQueryFinalized.dispose();
                    }
                }
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TL_stories.PeerStories peerStories2 = (TL_stories.PeerStories) arrayList.get(i2);
            putStoriesInternal(DialogObject.getPeerDialogId(peerStories2.peer), peerStories2);
        }
        if (runnable == null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    private void fillSkippedStories(long j, TL_stories.PeerStories peerStories) {
        if (peerStories != null) {
            try {
                ArrayList<TL_stories.StoryItem> arrayList = peerStories.stories;
                for (int i = 0; i < arrayList.size(); i++) {
                    if (arrayList.get(i) instanceof TL_stories.TL_storyItemSkipped) {
                        TL_stories.StoryItem storyInternal = getStoryInternal(j, arrayList.get(i).f1857id);
                        if (storyInternal instanceof TL_stories.TL_storyItem) {
                            arrayList.set(i, storyInternal);
                        }
                    }
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    private TL_stories.StoryItem getStoryInternal(long j, int i) {
        TL_stories.StoryItem storyItemTLdeserialize = null;
        try {
            SQLiteCursor sQLiteCursorQueryFinalized = this.storage.getDatabase().queryFinalized(String.format(Locale.US, "SELECT data, custom_params FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(j), Integer.valueOf(i)), new Object[0]);
            if (sQLiteCursorQueryFinalized.next()) {
                NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                NativeByteBuffer nativeByteBufferByteBufferValue2 = sQLiteCursorQueryFinalized.byteBufferValue(1);
                if (nativeByteBufferByteBufferValue != null) {
                    storyItemTLdeserialize = TL_stories.StoryItem.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(true), true);
                    storyItemTLdeserialize.dialogId = j;
                    nativeByteBufferByteBufferValue.reuse();
                }
                if (storyItemTLdeserialize != null) {
                    StoryCustomParamsHelper.readLocalParams(storyItemTLdeserialize, nativeByteBufferByteBufferValue2);
                }
                if (nativeByteBufferByteBufferValue2 != null) {
                    nativeByteBufferByteBufferValue2.reuse();
                }
            }
            sQLiteCursorQueryFinalized.dispose();
            return storyItemTLdeserialize;
        } catch (SQLiteException e) {
            FileLog.m1136e(e);
            return storyItemTLdeserialize;
        }
    }

    public void updateStoryItem(final long j, final TL_stories.StoryItem storyItem) {
        if (j == 0) {
            return;
        }
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateStoryItem$7(j, storyItem);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateStoryItemInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$updateStoryItem$7(long j, TL_stories.StoryItem storyItem) {
        if (j == 0 || storyItem == null) {
            return;
        }
        if (storyItem instanceof TL_stories.TL_storyItemDeleted) {
            FileLog.m1134e("StoriesStorage: try write deleted story");
        }
        if (StoriesUtilities.isExpired(this.currentAccount, storyItem)) {
            FileLog.m1134e("StoriesStorage: try write expired story");
        }
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast = null;
        try {
            try {
                sQLitePreparedStatementExecuteFast = this.storage.getDatabase().executeFast("REPLACE INTO stories VALUES(?, ?, ?, ?)");
                sQLitePreparedStatementExecuteFast.bindLong(1, j);
                sQLitePreparedStatementExecuteFast.bindLong(2, storyItem.f1857id);
                NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(storyItem.getObjectSize());
                storyItem.serializeToStream(nativeByteBuffer);
                sQLitePreparedStatementExecuteFast.bindByteBuffer(3, nativeByteBuffer);
                NativeByteBuffer nativeByteBufferWriteLocalParams = StoryCustomParamsHelper.writeLocalParams(storyItem);
                if (nativeByteBufferWriteLocalParams != null) {
                    sQLitePreparedStatementExecuteFast.bindByteBuffer(4, nativeByteBufferWriteLocalParams);
                } else {
                    sQLitePreparedStatementExecuteFast.bindNull(4);
                }
                if (nativeByteBufferWriteLocalParams != null) {
                    nativeByteBufferWriteLocalParams.reuse();
                }
                sQLitePreparedStatementExecuteFast.step();
                nativeByteBuffer.reuse();
                sQLitePreparedStatementExecuteFast.dispose();
            } catch (Exception e) {
                FileLog.m1136e(e);
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

    public void updateMaxReadId(final long j, final int i) {
        TL_stories.PeerStories peerStories;
        TL_stories.PeerStories peerStories2;
        if (j > 0) {
            TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
            if (userFull != null && (peerStories2 = userFull.stories) != null) {
                peerStories2.max_read_id = i;
                this.storage.updateUserInfo(userFull, false);
            }
        } else {
            TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(-j);
            if (chatFull != null && (peerStories = chatFull.stories) != null) {
                peerStories.max_read_id = i;
                this.storage.updateChatInfo(chatFull, false);
            }
        }
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateMaxReadId$8(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMaxReadId$8(long j, int i) {
        try {
            this.storage.getDatabase().executeFast(String.format(Locale.US, "REPLACE INTO stories_counter VALUES(%d, 0, %d)", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }

    public void processUpdate(final TL_stories.TL_updateStory tL_updateStory) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processUpdate$9(tL_updateStory);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$processUpdate$9(TL_stories.TL_updateStory tL_updateStory) {
        int i;
        boolean z;
        SQLiteDatabase database = this.storage.getDatabase();
        try {
            long peerDialogId = DialogObject.getPeerDialogId(tL_updateStory.peer);
            TL_stories.StoryItem storyItem = tL_updateStory.story;
            int i2 = storyItem.f1857id;
            if (storyItem instanceof TL_stories.TL_storyItemDeleted) {
                Locale locale = Locale.US;
                SQLiteCursor sQLiteCursorQueryFinalized = database.queryFinalized(String.format(locale, "SELECT data, custom_params FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(peerDialogId), Integer.valueOf(i2)), new Object[0]);
                if (sQLiteCursorQueryFinalized.next()) {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    NativeByteBuffer nativeByteBufferByteBufferValue2 = sQLiteCursorQueryFinalized.byteBufferValue(1);
                    if (nativeByteBufferByteBufferValue != null) {
                        StoryCustomParamsHelper.readLocalParams(TL_stories.StoryItem.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(true), true), nativeByteBufferByteBufferValue2);
                        nativeByteBufferByteBufferValue.reuse();
                    }
                    if (nativeByteBufferByteBufferValue2 != null) {
                        nativeByteBufferByteBufferValue2.reuse();
                    }
                    z = true;
                } else {
                    z = false;
                }
                sQLiteCursorQueryFinalized.dispose();
                database.executeFast(String.format(locale, "DELETE FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(peerDialogId), Integer.valueOf(i2))).stepThis().dispose();
                i = z ? -1 : 0;
            } else if (storyItem instanceof TL_stories.TL_storyItem) {
                lambda$updateStoryItem$7(peerDialogId, storyItem);
                SQLiteCursor sQLiteCursorQueryFinalized2 = database.queryFinalized(String.format(Locale.US, "SELECT story_id FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(peerDialogId), Integer.valueOf(i2)), new Object[0]);
                boolean next = sQLiteCursorQueryFinalized2.next();
                sQLiteCursorQueryFinalized2.dispose();
                if (!next) {
                    i = 1;
                }
            }
            SQLiteCursor sQLiteCursorQueryFinalized3 = database.queryFinalized("SELECT count, max_read FROM stories_counter WHERE dialog_id = " + peerDialogId, new Object[0]);
            int iIntValue = sQLiteCursorQueryFinalized3.next() ? sQLiteCursorQueryFinalized3.intValue(1) : 0;
            sQLiteCursorQueryFinalized3.dispose();
            database.executeFast(String.format(Locale.US, "UPDATE stories_counter SET count = %d WHERE dialog_id = %d", Integer.valueOf(iIntValue + i), Long.valueOf(peerDialogId))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }

    public void updateStories(final TL_stories.PeerStories peerStories) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateStories$10(peerStories);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStories$10(TL_stories.PeerStories peerStories) {
        for (int i = 0; i < peerStories.stories.size(); i++) {
            lambda$updateStoryItem$7(DialogObject.getPeerDialogId(peerStories.peer), peerStories.stories.get(i));
        }
    }

    public void deleteStory(final long j, final int i) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteStory$11(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStory$11(long j, int i) {
        try {
            this.storage.getDatabase().executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id = %d AND story_id = %d", Long.valueOf(j), Integer.valueOf(i))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }

    public void deleteStories(final long j, final ArrayList arrayList) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteStories$12(arrayList, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteStories$12(ArrayList arrayList, long j) {
        SQLiteDatabase database = this.storage.getDatabase();
        try {
            database.executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id = %d AND story_id IN (%s)", Long.valueOf(j), TextUtils.join(", ", arrayList))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }

    public void fillMessagesWithStories(LongSparseArray longSparseArray, Runnable runnable, int i, Timer timer) {
        fillMessagesWithStories(longSparseArray, runnable, i, true, timer);
    }

    public void fillMessagesWithStories(LongSparseArray longSparseArray, final Runnable runnable, int i, final boolean z, Timer timer) {
        final Timer timer2 = timer;
        if (runnable == null) {
            return;
        }
        if (longSparseArray == null) {
            runnable.run();
            return;
        }
        ArrayList arrayList = new ArrayList();
        Timer.Task taskStart = Timer.start(timer2, "fillMessagesWithStories: applying stories for existing array");
        int i2 = 0;
        while (i2 < longSparseArray.size()) {
            long jKeyAt = longSparseArray.keyAt(i2);
            ArrayList arrayList2 = (ArrayList) longSparseArray.valueAt(i2);
            int i3 = 0;
            while (i3 < arrayList2.size()) {
                MessageObject messageObject = (MessageObject) arrayList2.get(i3);
                TL_stories.StoryItem storyInternal = getStoryInternal(jKeyAt, getStoryId(messageObject));
                if (storyInternal != null && !(storyInternal instanceof TL_stories.TL_storyItemSkipped)) {
                    applyStory(this.currentAccount, jKeyAt, messageObject, storyInternal);
                    arrayList.add(messageObject);
                    arrayList2.remove(i3);
                    i3--;
                    if (arrayList2.isEmpty()) {
                        longSparseArray.removeAt(i2);
                        i2--;
                    }
                }
                i3++;
            }
            i2++;
        }
        Timer.done(taskStart);
        if (z) {
            lambda$fillMessagesWithStories$13(arrayList);
        }
        if (!longSparseArray.isEmpty()) {
            final int[] iArr = {longSparseArray.size()};
            int i4 = 0;
            while (i4 < longSparseArray.size()) {
                final long jKeyAt2 = longSparseArray.keyAt(i4);
                final ArrayList arrayList3 = (ArrayList) longSparseArray.valueAt(i4);
                TL_stories.TL_stories_getStoriesByID tL_stories_getStoriesByID = new TL_stories.TL_stories_getStoriesByID();
                tL_stories_getStoriesByID.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(jKeyAt2);
                for (int i5 = 0; i5 < arrayList3.size(); i5++) {
                    tL_stories_getStoriesByID.f1864id.add(Integer.valueOf(getStoryId((MessageObject) arrayList3.get(i5))));
                }
                final Timer.Task taskStart2 = Timer.start(timer2, "fillMessagesWithStories: getStoriesByID did=" + jKeyAt2 + " ids=" + TextUtils.join(",", tL_stories_getStoriesByID.f1864id));
                int iSendRequest = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_stories_getStoriesByID, new RequestDelegate() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda2
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$fillMessagesWithStories$14(taskStart2, arrayList3, jKeyAt2, z, timer2, iArr, runnable, tLObject, tL_error);
                    }
                });
                if (i != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).bindRequestToGuid(iSendRequest, i);
                }
                i4++;
                timer2 = timer;
            }
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillMessagesWithStories$14(Timer.Task task, final ArrayList arrayList, long j, boolean z, Timer timer, int[] iArr, Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        Timer.done(task);
        if (tLObject != null) {
            TL_stories.TL_stories_stories tL_stories_stories = (TL_stories.TL_stories_stories) tLObject;
            for (int i = 0; i < arrayList.size(); i++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i);
                int i2 = 0;
                while (true) {
                    if (i2 < tL_stories_stories.stories.size()) {
                        if (tL_stories_stories.stories.get(i2).f1857id == getStoryId(messageObject)) {
                            applyStory(this.currentAccount, j, messageObject, tL_stories_stories.stories.get(i2));
                            break;
                        }
                        i2++;
                    } else {
                        TL_stories.TL_storyItemDeleted tL_storyItemDeleted = new TL_stories.TL_storyItemDeleted();
                        tL_storyItemDeleted.f1857id = getStoryId(messageObject);
                        applyStory(this.currentAccount, j, messageObject, tL_storyItemDeleted);
                        break;
                    }
                }
                if (z) {
                    this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$fillMessagesWithStories$13(arrayList);
                        }
                    });
                }
            }
        } else if (tL_error != null) {
            Timer.log(timer, "fillMessagesWithStories: getStoriesByID error " + tL_error.code + " " + tL_error.text);
        }
        int i3 = iArr[0] - 1;
        iArr[0] = i3;
        if (i3 == 0) {
            runnable.run();
        }
    }

    public static void applyStory(int i, long j, MessageObject messageObject, TL_stories.StoryItem storyItem) {
        TLRPC.WebPage webPage;
        TLRPC.Message message = messageObject.messageOwner;
        TLRPC.MessageReplyHeader messageReplyHeader = message.reply_to;
        if ((messageReplyHeader instanceof TLRPC.TL_messageReplyStoryHeader) && messageReplyHeader.story_id == storyItem.f1857id) {
            message.replyStory = checkExpiredStateLocal(i, j, storyItem);
        }
        int i2 = messageObject.type;
        if (i2 == 23 || i2 == 24) {
            MessageMediaStoryFull messageMediaStoryFull = new MessageMediaStoryFull();
            messageMediaStoryFull.user_id = DialogObject.getPeerDialogId(messageObject.messageOwner.media.peer);
            TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
            messageMediaStoryFull.peer = messageMedia.peer;
            messageMediaStoryFull.f1687id = messageMedia.f1687id;
            messageMediaStoryFull.storyItem = checkExpiredStateLocal(i, j, storyItem);
            TLRPC.Message message2 = messageObject.messageOwner;
            messageMediaStoryFull.via_mention = message2.media.via_mention;
            message2.media = messageMediaStoryFull;
        }
        TLRPC.MessageMedia messageMedia2 = messageObject.messageOwner.media;
        if (messageMedia2 == null || (webPage = messageMedia2.webpage) == null || webPage.attributes == null) {
            return;
        }
        for (int i3 = 0; i3 < messageObject.messageOwner.media.webpage.attributes.size(); i3++) {
            TLRPC.WebPageAttribute webPageAttribute = (TLRPC.WebPageAttribute) messageObject.messageOwner.media.webpage.attributes.get(i3);
            if (webPageAttribute instanceof TLRPC.TL_webPageAttributeStory) {
                TLRPC.TL_webPageAttributeStory tL_webPageAttributeStory = (TLRPC.TL_webPageAttributeStory) webPageAttribute;
                if (tL_webPageAttributeStory.f1821id == storyItem.f1857id) {
                    webPageAttribute.flags |= 1;
                    tL_webPageAttributeStory.storyItem = checkExpiredStateLocal(i, j, storyItem);
                }
            }
        }
    }

    private static int getStoryId(MessageObject messageObject) {
        TLRPC.WebPage webPage;
        int i = messageObject.type;
        if (i == 23 || i == 24) {
            return messageObject.messageOwner.media.f1687id;
        }
        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
        if (messageMedia != null && (webPage = messageMedia.webpage) != null && webPage.attributes != null) {
            for (int i2 = 0; i2 < messageObject.messageOwner.media.webpage.attributes.size(); i2++) {
                TLRPC.WebPageAttribute webPageAttribute = (TLRPC.WebPageAttribute) messageObject.messageOwner.media.webpage.attributes.get(i2);
                if (webPageAttribute instanceof TLRPC.TL_webPageAttributeStory) {
                    return ((TLRPC.TL_webPageAttributeStory) webPageAttribute).f1821id;
                }
            }
        }
        return messageObject.messageOwner.reply_to.story_id;
    }

    /* JADX INFO: renamed from: updateMessagesWithStories, reason: merged with bridge method [inline-methods] */
    public void lambda$fillMessagesWithStories$13(List list) {
        try {
            SQLiteDatabase database = this.storage.getDatabase();
            if (list.isEmpty()) {
                return;
            }
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast = database.executeFast("UPDATE messages_v2 SET replydata = ? WHERE mid = ? AND uid = ?");
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = database.executeFast("UPDATE messages_topics SET replydata = ? WHERE mid = ? AND uid = ?");
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast3 = database.executeFast("UPDATE messages_v2 SET data = ? WHERE mid = ? AND uid = ?");
            SQLitePreparedStatement sQLitePreparedStatementExecuteFast4 = database.executeFast("UPDATE messages_topics SET data = ? WHERE mid = ? AND uid = ?");
            for (int i = 0; i < list.size(); i++) {
                MessageObject messageObject = (MessageObject) list.get(i);
                int i2 = 0;
                while (i2 < 2) {
                    NativeByteBuffer nativeByteBuffer = null;
                    if (messageObject.messageOwner.replyStory != null) {
                        SQLitePreparedStatement sQLitePreparedStatement = i2 == 0 ? sQLitePreparedStatementExecuteFast : sQLitePreparedStatementExecuteFast2;
                        if (sQLitePreparedStatement == null) {
                            continue;
                        } else {
                            try {
                                NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(messageObject.messageOwner.replyStory.getObjectSize());
                                try {
                                    messageObject.messageOwner.replyStory.serializeToStream(nativeByteBuffer2);
                                    sQLitePreparedStatement.requery();
                                    sQLitePreparedStatement.bindByteBuffer(1, nativeByteBuffer2);
                                    sQLitePreparedStatement.bindInteger(2, messageObject.getId());
                                    sQLitePreparedStatement.bindLong(3, messageObject.getDialogId());
                                    sQLitePreparedStatement.step();
                                    nativeByteBuffer2.reuse();
                                } catch (Throwable th) {
                                    th = th;
                                    nativeByteBuffer = nativeByteBuffer2;
                                    if (nativeByteBuffer != null) {
                                        nativeByteBuffer.reuse();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    } else {
                        SQLitePreparedStatement sQLitePreparedStatement2 = i2 == 0 ? sQLitePreparedStatementExecuteFast3 : sQLitePreparedStatementExecuteFast4;
                        if (sQLitePreparedStatement2 == null) {
                            continue;
                        } else {
                            try {
                                NativeByteBuffer nativeByteBuffer3 = new NativeByteBuffer(messageObject.messageOwner.getObjectSize());
                                try {
                                    messageObject.messageOwner.serializeToStream(nativeByteBuffer3);
                                    sQLitePreparedStatement2.requery();
                                    sQLitePreparedStatement2.bindByteBuffer(1, nativeByteBuffer3);
                                    sQLitePreparedStatement2.bindInteger(2, messageObject.getId());
                                    sQLitePreparedStatement2.bindLong(3, messageObject.getDialogId());
                                    sQLitePreparedStatement2.step();
                                    nativeByteBuffer3.reuse();
                                } catch (Throwable th3) {
                                    th = th3;
                                    nativeByteBuffer = nativeByteBuffer3;
                                    if (nativeByteBuffer != null) {
                                        nativeByteBuffer.reuse();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        }
                    }
                    i2++;
                }
            }
            sQLitePreparedStatementExecuteFast.dispose();
            sQLitePreparedStatementExecuteFast2.dispose();
            sQLitePreparedStatementExecuteFast3.dispose();
            sQLitePreparedStatementExecuteFast4.dispose();
        } catch (Throwable th5) {
            this.storage.checkSQLException(th5);
        }
    }

    public static TL_stories.StoryItem checkExpiredStateLocal(int i, long j, TL_stories.StoryItem storyItem) {
        if (storyItem instanceof TL_stories.TL_storyItemDeleted) {
            return storyItem;
        }
        int currentTime = ConnectionsManager.getInstance(i).getCurrentTime();
        int i2 = storyItem.expire_date;
        boolean z = false;
        if (i2 <= 0 ? currentTime - storyItem.date > 86400 : currentTime > i2) {
            z = true;
        }
        if (storyItem.pinned || !z || j == 0 || j == UserConfig.getInstance(i).clientUserId) {
            return storyItem;
        }
        TL_stories.TL_storyItemDeleted tL_storyItemDeleted = new TL_stories.TL_storyItemDeleted();
        tL_storyItemDeleted.f1857id = storyItem.f1857id;
        return tL_storyItemDeleted;
    }

    public void getMaxReadIds(final Consumer consumer) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getMaxReadIds$16(consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getMaxReadIds$16(final Consumer consumer) {
        SQLiteDatabase database = this.storage.getDatabase();
        final LongSparseIntArray longSparseIntArray = new LongSparseIntArray();
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        try {
            try {
                sQLiteCursorQueryFinalized = database.queryFinalized("SELECT dialog_id, max_read FROM stories_counter", new Object[0]);
                while (sQLiteCursorQueryFinalized.next()) {
                    longSparseIntArray.put(sQLiteCursorQueryFinalized.longValue(0), sQLiteCursorQueryFinalized.intValue(1));
                }
            } catch (Exception e) {
                this.storage.checkSQLException(e);
                if (sQLiteCursorQueryFinalized != null) {
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        consumer.accept(longSparseIntArray);
                    }
                });
            }
            sQLiteCursorQueryFinalized.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    consumer.accept(longSparseIntArray);
                }
            });
        } catch (Throwable th) {
            if (sQLiteCursorQueryFinalized != null) {
                sQLiteCursorQueryFinalized.dispose();
            }
            throw th;
        }
    }

    public void putPeerStories(final TL_stories.PeerStories peerStories) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$putPeerStories$17(peerStories);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putPeerStories$17(TL_stories.PeerStories peerStories) {
        putStoriesInternal(DialogObject.getPeerDialogId(peerStories.peer), peerStories);
    }

    public void deleteAllUserStories(final long j) {
        this.storage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.StoriesStorage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteAllUserStories$18(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteAllUserStories$18(long j) {
        try {
            this.storage.getDatabase().executeFast(String.format(Locale.US, "DELETE FROM stories WHERE dialog_id = %d", Long.valueOf(j))).stepThis().dispose();
        } catch (Throwable th) {
            this.storage.checkSQLException(th);
        }
    }
}
