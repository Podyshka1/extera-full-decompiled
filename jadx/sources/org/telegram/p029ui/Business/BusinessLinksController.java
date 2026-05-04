package org.telegram.p029ui.Business;

import android.text.TextUtils;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class BusinessLinksController {
    private static volatile BusinessLinksController[] Instance = new BusinessLinksController[16];
    private static final Object[] lockObjects = new Object[16];
    public final int currentAccount;
    public final ArrayList links = new ArrayList();
    private boolean loading = false;
    private boolean loaded = false;

    static {
        for (int i = 0; i < 16; i++) {
            lockObjects[i] = new Object();
        }
    }

    public static BusinessLinksController getInstance(int i) {
        BusinessLinksController businessLinksController;
        BusinessLinksController businessLinksController2 = Instance[i];
        if (businessLinksController2 != null) {
            return businessLinksController2;
        }
        synchronized (lockObjects[i]) {
            try {
                businessLinksController = Instance[i];
                if (businessLinksController == null) {
                    BusinessLinksController[] businessLinksControllerArr = Instance;
                    BusinessLinksController businessLinksController3 = new BusinessLinksController(i);
                    businessLinksControllerArr[i] = businessLinksController3;
                    businessLinksController = businessLinksController3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return businessLinksController;
    }

    private BusinessLinksController(int i) {
        this.currentAccount = i;
    }

    public static String stripHttps(String str) {
        return str.startsWith("https://") ? str.substring(8) : str;
    }

    public boolean canAddNew() {
        return this.links.size() < MessagesController.getInstance(this.currentAccount).businessChatLinksLimit;
    }

    public void load(boolean z) {
        if (!this.loaded) {
            load(true, z);
        } else if (z) {
            load(false, true);
        }
    }

    private void load(boolean z, final boolean z2) {
        if (this.loading) {
            return;
        }
        if (!this.loaded || (z2 && !z)) {
            this.loading = true;
            if (z) {
                final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
                messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$load$1(messagesStorage, z2);
                    }
                });
            } else {
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getBusinessChatLinks(), new RequestDelegate() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$load$3(tLObject, tL_error);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$1(MessagesStorage messagesStorage, final boolean z) {
        final ArrayList arrayList = new ArrayList();
        final ArrayList<TLRPC.User> arrayList2 = new ArrayList<>();
        final ArrayList<TLRPC.Chat> arrayList3 = new ArrayList<>();
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        try {
            try {
                sQLiteCursorQueryFinalized = messagesStorage.getDatabase().queryFinalized("SELECT data FROM business_links ORDER BY order_value ASC", new Object[0]);
                while (sQLiteCursorQueryFinalized.next()) {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    arrayList.add(TL_account.TL_businessChatLink.TLdeserialize(nativeByteBufferByteBufferValue, nativeByteBufferByteBufferValue.readInt32(false), false));
                    nativeByteBufferByteBufferValue.reuse();
                }
                sQLiteCursorQueryFinalized.dispose();
                ArrayList<Long> arrayList4 = new ArrayList<>();
                ArrayList arrayList5 = new ArrayList();
                for (int i = 0; i < arrayList.size(); i++) {
                    TL_account.TL_businessChatLink tL_businessChatLink = (TL_account.TL_businessChatLink) arrayList.get(i);
                    if (!tL_businessChatLink.entities.isEmpty()) {
                        for (int i2 = 0; i2 < tL_businessChatLink.entities.size(); i2++) {
                            TLRPC.MessageEntity messageEntity = tL_businessChatLink.entities.get(i2);
                            if (messageEntity instanceof TLRPC.TL_messageEntityMentionName) {
                                arrayList4.add(Long.valueOf(((TLRPC.TL_messageEntityMentionName) messageEntity).user_id));
                            } else if (messageEntity instanceof TLRPC.TL_inputMessageEntityMentionName) {
                                arrayList4.add(Long.valueOf(((TLRPC.TL_inputMessageEntityMentionName) messageEntity).user_id.user_id));
                            }
                        }
                    }
                }
                if (!arrayList4.isEmpty()) {
                    messagesStorage.getUsersInternal(arrayList4, arrayList2);
                }
                if (!arrayList5.isEmpty()) {
                    messagesStorage.getChatsInternal(TextUtils.join(",", arrayList5), arrayList3);
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
                if (sQLiteCursorQueryFinalized != null) {
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$load$0(arrayList, arrayList2, arrayList3, z);
                    }
                });
            }
            sQLiteCursorQueryFinalized.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$0(arrayList, arrayList2, arrayList3, z);
                }
            });
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, boolean z) {
        this.links.clear();
        this.links.addAll(arrayList);
        MessagesController.getInstance(this.currentAccount).putUsers(arrayList2, true);
        MessagesController.getInstance(this.currentAccount).putChats(arrayList3, true);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.quickRepliesUpdated, new Object[0]);
        this.loading = false;
        load(false, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$3(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$2(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$2(TLObject tLObject) {
        if (tLObject instanceof TL_account.businessChatLinks) {
            TL_account.businessChatLinks businesschatlinks = (TL_account.businessChatLinks) tLObject;
            this.links.clear();
            this.links.addAll(businesschatlinks.links);
            MessagesController.getInstance(this.currentAccount).putUsers(businesschatlinks.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(businesschatlinks.chats, false);
            MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(businesschatlinks.users, businesschatlinks.chats, true, true);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.businessLinksUpdated, new Object[0]);
            saveToCache();
        } else {
            FileLog.m1136e(new RuntimeException("Unexpected response from server!"));
        }
        this.loading = false;
        this.loaded = true;
    }

    public void createEmptyLink() {
        TL_account.createBusinessChatLink createbusinesschatlink = new TL_account.createBusinessChatLink();
        TL_account.TL_inputBusinessChatLink tL_inputBusinessChatLink = new TL_account.TL_inputBusinessChatLink();
        createbusinesschatlink.link = tL_inputBusinessChatLink;
        tL_inputBusinessChatLink.message = _UrlKt.FRAGMENT_ENCODE_SET;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(createbusinesschatlink, new RequestDelegate() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$createEmptyLink$5(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createEmptyLink$5(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createEmptyLink$4(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createEmptyLink$4(TLObject tLObject) {
        if (tLObject instanceof TL_account.TL_businessChatLink) {
            TL_account.TL_businessChatLink tL_businessChatLink = (TL_account.TL_businessChatLink) tLObject;
            this.links.add(tL_businessChatLink);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.businessLinksUpdated, new Object[0]);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.businessLinkCreated, tL_businessChatLink);
            saveToCache();
        }
    }

    public void deleteLinkUndoable(BaseFragment baseFragment, final String str) {
        final TL_account.TL_businessChatLink tL_businessChatLinkFindLink = findLink(str);
        if (tL_businessChatLinkFindLink != null) {
            final int iIndexOf = this.links.indexOf(tL_businessChatLinkFindLink);
            this.links.remove(tL_businessChatLinkFindLink);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.businessLinksUpdated, new Object[0]);
            BulletinFactory.m1246of(baseFragment).createUndoBulletin(LocaleController.getString(C2888R.string.BusinessLinkDeleted), true, new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$deleteLinkUndoable$6(iIndexOf, tL_businessChatLinkFindLink);
                }
            }, new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$deleteLinkUndoable$9(str, tL_businessChatLinkFindLink);
                }
            }).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteLinkUndoable$6(int i, TL_account.TL_businessChatLink tL_businessChatLink) {
        this.links.add(i, tL_businessChatLink);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.businessLinksUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteLinkUndoable$9(String str, final TL_account.TL_businessChatLink tL_businessChatLink) {
        TL_account.deleteBusinessChatLink deletebusinesschatlink = new TL_account.deleteBusinessChatLink();
        deletebusinesschatlink.slug = str;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(deletebusinesschatlink, new RequestDelegate() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$deleteLinkUndoable$8(tL_businessChatLink, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteLinkUndoable$8(final TL_account.TL_businessChatLink tL_businessChatLink, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteLinkUndoable$7(tLObject, tL_businessChatLink);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteLinkUndoable$7(TLObject tLObject, TL_account.TL_businessChatLink tL_businessChatLink) {
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            if (this.links.contains(tL_businessChatLink)) {
                this.links.remove(tL_businessChatLink);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.businessLinksUpdated, new Object[0]);
            }
            saveToCache();
            return;
        }
        FileLog.m1136e(new RuntimeException("Unexpected response from server!"));
    }

    public void editLinkMessage(String str, String str2, ArrayList arrayList, Runnable runnable) {
        TL_account.TL_businessChatLink tL_businessChatLinkFindLink = findLink(str);
        if (tL_businessChatLinkFindLink == null) {
            return;
        }
        TL_account.TL_inputBusinessChatLink tL_inputBusinessChatLink = new TL_account.TL_inputBusinessChatLink();
        tL_inputBusinessChatLink.message = str2;
        tL_inputBusinessChatLink.entities = arrayList;
        tL_inputBusinessChatLink.title = tL_businessChatLinkFindLink.title;
        editLink(tL_businessChatLinkFindLink, tL_inputBusinessChatLink, runnable);
    }

    public void editLinkTitle(String str, String str2) {
        TL_account.TL_businessChatLink tL_businessChatLinkFindLink = findLink(str);
        if (tL_businessChatLinkFindLink == null) {
            return;
        }
        TL_account.TL_inputBusinessChatLink tL_inputBusinessChatLink = new TL_account.TL_inputBusinessChatLink();
        tL_inputBusinessChatLink.message = tL_businessChatLinkFindLink.message;
        tL_inputBusinessChatLink.entities = tL_businessChatLinkFindLink.entities;
        tL_inputBusinessChatLink.title = str2;
        editLink(tL_businessChatLinkFindLink, tL_inputBusinessChatLink, null);
    }

    private void saveToCache() {
        final ArrayList arrayList = new ArrayList(this.links);
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                BusinessLinksController.$r8$lambda$gVJNAGu2jWJMqiCxyRgbyRcVKGQ(messagesStorage, arrayList);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$gVJNAGu2jWJMqiCxyRgbyRcVKGQ(MessagesStorage messagesStorage, ArrayList arrayList) throws Throwable {
        SQLitePreparedStatement sQLitePreparedStatement = null;
        NativeByteBuffer nativeByteBuffer = null;
        sQLitePreparedStatement = null;
        try {
            try {
                SQLiteDatabase database = messagesStorage.getDatabase();
                database.executeFast("DELETE FROM business_links").stepThis().dispose();
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast = database.executeFast("REPLACE INTO business_links VALUES(?, ?)");
                for (int i = 0; i < arrayList.size(); i++) {
                    try {
                        TL_account.TL_businessChatLink tL_businessChatLink = (TL_account.TL_businessChatLink) arrayList.get(i);
                        try {
                            NativeByteBuffer nativeByteBuffer2 = new NativeByteBuffer(tL_businessChatLink.getObjectSize());
                            try {
                                tL_businessChatLink.serializeToStream(nativeByteBuffer2);
                                sQLitePreparedStatementExecuteFast.requery();
                                sQLitePreparedStatementExecuteFast.bindByteBuffer(1, nativeByteBuffer2);
                                sQLitePreparedStatementExecuteFast.bindInteger(2, i);
                                sQLitePreparedStatementExecuteFast.step();
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
                    } catch (Exception e) {
                        e = e;
                        sQLitePreparedStatement = sQLitePreparedStatementExecuteFast;
                        FileLog.m1136e(e);
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th3) {
                        th = th3;
                        sQLitePreparedStatement = sQLitePreparedStatementExecuteFast;
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                }
                if (sQLitePreparedStatementExecuteFast != null) {
                    sQLitePreparedStatementExecuteFast.dispose();
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private void editLink(final TL_account.TL_businessChatLink tL_businessChatLink, TL_account.TL_inputBusinessChatLink tL_inputBusinessChatLink, final Runnable runnable) {
        TL_account.editBusinessChatLink editbusinesschatlink = new TL_account.editBusinessChatLink();
        editbusinesschatlink.slug = tL_businessChatLink.link;
        if (!tL_inputBusinessChatLink.entities.isEmpty()) {
            tL_inputBusinessChatLink.flags |= 1;
        }
        if (!TextUtils.isEmpty(tL_inputBusinessChatLink.title)) {
            tL_inputBusinessChatLink.flags |= 2;
        }
        editbusinesschatlink.link = tL_inputBusinessChatLink;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(editbusinesschatlink, new RequestDelegate() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$editLink$12(tL_businessChatLink, runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editLink$12(final TL_account.TL_businessChatLink tL_businessChatLink, final Runnable runnable, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Business.BusinessLinksController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$editLink$11(tLObject, tL_businessChatLink, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editLink$11(TLObject tLObject, TL_account.TL_businessChatLink tL_businessChatLink, Runnable runnable) {
        if (tLObject instanceof TL_account.TL_businessChatLink) {
            TL_account.TL_businessChatLink tL_businessChatLink2 = (TL_account.TL_businessChatLink) tLObject;
            int iIndexOf = this.links.indexOf(tL_businessChatLink);
            if (iIndexOf != -1) {
                this.links.set(iIndexOf, tL_businessChatLink2);
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.businessLinksUpdated, new Object[0]);
                if (runnable != null) {
                    runnable.run();
                }
                saveToCache();
            }
        }
    }

    public TL_account.TL_businessChatLink findLink(String str) {
        for (int i = 0; i < this.links.size(); i++) {
            TL_account.TL_businessChatLink tL_businessChatLink = (TL_account.TL_businessChatLink) this.links.get(i);
            if (!TextUtils.equals(tL_businessChatLink.link, str)) {
                if (!TextUtils.equals(tL_businessChatLink.link, "https://" + str)) {
                    if (!TextUtils.equals(tL_businessChatLink.link, "https://t.me/m/" + str)) {
                        if (!TextUtils.equals(tL_businessChatLink.link, "tg://message?slug=" + str)) {
                        }
                    }
                }
            }
            return tL_businessChatLink;
        }
        return null;
    }
}
