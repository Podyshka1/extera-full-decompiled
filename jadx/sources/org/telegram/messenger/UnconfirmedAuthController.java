package org.telegram.messenger;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLParseException;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes.dex */
public class UnconfirmedAuthController {
    private final int currentAccount;
    private boolean fetchedCache;
    private boolean fetchingCache;
    private boolean saveAfterFetch;
    private boolean savingCache;
    public final ArrayList<UnconfirmedAuth> auths = new ArrayList<>();
    private final Runnable checkExpiration = new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda5
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$2();
        }
    };
    private boolean debug = false;

    public UnconfirmedAuthController(int i) {
        this.currentAccount = i;
        readCache();
    }

    public void readCache() {
        if (this.fetchedCache || this.fetchingCache) {
            return;
        }
        this.fetchingCache = true;
        MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$readCache$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$readCache$1() {
        final HashSet hashSet = new HashSet();
        final ArrayList arrayList = new ArrayList();
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        try {
            try {
                sQLiteCursorQueryFinalized = MessagesStorage.getInstance(this.currentAccount).getDatabase().queryFinalized(String.format(Locale.US, "SELECT data FROM unconfirmed_auth", new Object[0]), new Object[0]);
                while (sQLiteCursorQueryFinalized.next()) {
                    NativeByteBuffer nativeByteBufferByteBufferValue = sQLiteCursorQueryFinalized.byteBufferValue(0);
                    if (nativeByteBufferByteBufferValue != null) {
                        try {
                            UnconfirmedAuth unconfirmedAuth = new UnconfirmedAuth(nativeByteBufferByteBufferValue);
                            arrayList.add(unconfirmedAuth);
                            hashSet.add(Long.valueOf(unconfirmedAuth.hash));
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                        nativeByteBufferByteBufferValue.reuse();
                    }
                }
            } catch (Exception e2) {
                FileLog.m1136e(e2);
                if (sQLiteCursorQueryFinalized != null) {
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$readCache$0(hashSet, arrayList);
                    }
                });
            }
            sQLiteCursorQueryFinalized.dispose();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$readCache$0(hashSet, arrayList);
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
    public /* synthetic */ void lambda$readCache$0(HashSet hashSet, ArrayList arrayList) {
        boolean zIsEmpty = this.auths.isEmpty();
        int i = 0;
        while (i < this.auths.size()) {
            UnconfirmedAuth unconfirmedAuth = this.auths.get(i);
            if (unconfirmedAuth == null || unconfirmedAuth.expired() || hashSet.contains(Long.valueOf(unconfirmedAuth.hash))) {
                this.auths.remove(i);
                i--;
            }
            i++;
        }
        this.auths.addAll(arrayList);
        boolean zIsEmpty2 = this.auths.isEmpty();
        this.fetchedCache = true;
        this.fetchingCache = false;
        if (zIsEmpty != zIsEmpty2) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.unconfirmedAuthUpdate, new Object[0]);
        }
        scheduleAuthExpireCheck();
        if (this.saveAfterFetch) {
            this.saveAfterFetch = false;
            saveCache();
        }
    }

    private void scheduleAuthExpireCheck() {
        AndroidUtilities.cancelRunOnUIThread(this.checkExpiration);
        if (this.auths.isEmpty()) {
            return;
        }
        ArrayList<UnconfirmedAuth> arrayList = this.auths;
        int size = arrayList.size();
        int i = 0;
        long jMin = Long.MAX_VALUE;
        while (i < size) {
            UnconfirmedAuth unconfirmedAuth = arrayList.get(i);
            i++;
            jMin = Math.min(jMin, unconfirmedAuth.expiresAfter());
        }
        if (jMin == Long.MAX_VALUE) {
            return;
        }
        AndroidUtilities.runOnUIThread(this.checkExpiration, Math.max(0L, jMin * 1000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        int i = 0;
        while (i < this.auths.size()) {
            if (this.auths.get(i).expired()) {
                this.auths.remove(i);
                i--;
            }
            i++;
        }
        saveCache();
    }

    public void putDebug() {
        this.debug = true;
        TLRPC.TL_updateNewAuthorization tL_updateNewAuthorization = new TLRPC.TL_updateNewAuthorization();
        tL_updateNewAuthorization.unconfirmed = true;
        tL_updateNewAuthorization.device = "device";
        tL_updateNewAuthorization.location = "location";
        tL_updateNewAuthorization.hash = 123L;
        processUpdate(tL_updateNewAuthorization);
    }

    public void processUpdate(TLRPC.TL_updateNewAuthorization tL_updateNewAuthorization) {
        int i = 0;
        while (i < this.auths.size()) {
            UnconfirmedAuth unconfirmedAuth = this.auths.get(i);
            if (unconfirmedAuth != null && unconfirmedAuth.hash == tL_updateNewAuthorization.hash) {
                this.auths.remove(i);
                i--;
            }
            i++;
        }
        if (tL_updateNewAuthorization.unconfirmed) {
            this.auths.add(new UnconfirmedAuth(tL_updateNewAuthorization));
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.unconfirmedAuthUpdate, new Object[0]);
        scheduleAuthExpireCheck();
        saveCache();
    }

    public void saveCache() {
        if (this.savingCache) {
            return;
        }
        if (this.fetchingCache) {
            this.saveAfterFetch = true;
        } else {
            this.savingCache = true;
            MessagesStorage.getInstance(this.currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$saveCache$4();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$saveCache$4() throws Throwable {
        Throwable th;
        SQLitePreparedStatement sQLitePreparedStatement;
        Exception e;
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast;
        NativeByteBuffer nativeByteBuffer;
        Throwable th2;
        SQLiteDatabase database = MessagesStorage.getInstance(this.currentAccount).getDatabase();
        try {
            try {
                database.executeFast("DELETE FROM unconfirmed_auth WHERE 1").stepThis().dispose();
                sQLitePreparedStatementExecuteFast = database.executeFast("REPLACE INTO unconfirmed_auth VALUES(?)");
                try {
                    ArrayList<UnconfirmedAuth> arrayList = this.auths;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        UnconfirmedAuth unconfirmedAuth = arrayList.get(i);
                        i++;
                        UnconfirmedAuth unconfirmedAuth2 = unconfirmedAuth;
                        sQLitePreparedStatementExecuteFast.requery();
                        try {
                            nativeByteBuffer = new NativeByteBuffer(unconfirmedAuth2.getObjectSize());
                            try {
                                unconfirmedAuth2.serializeToStream(nativeByteBuffer);
                                sQLitePreparedStatementExecuteFast.bindByteBuffer(1, nativeByteBuffer);
                                sQLitePreparedStatementExecuteFast.step();
                                nativeByteBuffer.reuse();
                            } catch (Throwable th3) {
                                th2 = th3;
                                if (nativeByteBuffer != null) {
                                    nativeByteBuffer.reuse();
                                    throw th2;
                                }
                                throw th2;
                                sQLitePreparedStatementExecuteFast.dispose();
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$saveCache$3();
                                    }
                                });
                            }
                        } catch (Throwable th4) {
                            nativeByteBuffer = null;
                            th2 = th4;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    FileLog.m1136e(e);
                    if (sQLitePreparedStatementExecuteFast != null) {
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$saveCache$3();
                        }
                    });
                }
            } catch (Throwable th5) {
                th = th5;
                sQLitePreparedStatement = database;
                if (sQLitePreparedStatement != 0) {
                    sQLitePreparedStatement.dispose();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            sQLitePreparedStatementExecuteFast = null;
        } catch (Throwable th6) {
            th = th6;
            sQLitePreparedStatement = 0;
            if (sQLitePreparedStatement != 0) {
            }
            throw th;
        }
        if (sQLitePreparedStatementExecuteFast != null) {
            sQLitePreparedStatementExecuteFast.dispose();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveCache$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveCache$3() {
        this.savingCache = false;
    }

    public void cleanup() {
        this.auths.clear();
        saveCache();
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.unconfirmedAuthUpdate, new Object[0]);
        scheduleAuthExpireCheck();
    }

    private void updateList(final boolean z, ArrayList<UnconfirmedAuth> arrayList, final Utilities.Callback<ArrayList<UnconfirmedAuth>> callback) {
        final ArrayList arrayList2 = new ArrayList(arrayList);
        final boolean[] zArr = new boolean[arrayList2.size()];
        Utilities.Callback[] callbackArr = new Utilities.Callback[arrayList2.size()];
        for (final int i = 0; i < arrayList2.size(); i++) {
            final UnconfirmedAuth unconfirmedAuth = (UnconfirmedAuth) arrayList2.get(i);
            callbackArr[i] = new Utilities.Callback() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    UnconfirmedAuthController.m4958$r8$lambda$s03l1nRxgy6Lr_3nNXQXlCZPK0(zArr, i, z, unconfirmedAuth, (Runnable) obj);
                }
            };
        }
        Utilities.raceCallbacks(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateList$7(zArr, arrayList2, z, callback);
            }
        }, callbackArr);
        if (z) {
            HashSet hashSet = new HashSet();
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                hashSet.add(Long.valueOf(((UnconfirmedAuth) arrayList2.get(i2)).hash));
            }
            int i3 = 0;
            while (i3 < this.auths.size()) {
                if (hashSet.contains(Long.valueOf(this.auths.get(i3).hash))) {
                    this.auths.remove(i3);
                    i3--;
                }
                i3++;
            }
            if (hashSet.isEmpty()) {
                return;
            }
            saveCache();
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.unconfirmedAuthUpdate, new Object[0]);
            scheduleAuthExpireCheck();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$NJhReUHqCliAHaxOC-3AKA_h2IU, reason: not valid java name */
    public static /* synthetic */ void m4956$r8$lambda$NJhReUHqCliAHaxOC3AKA_h2IU(boolean[] zArr, int i, Runnable runnable, Boolean bool) {
        zArr[i] = bool.booleanValue();
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$s03l1nRxg-y6Lr_3nNXQXlCZPK0, reason: not valid java name */
    public static /* synthetic */ void m4958$r8$lambda$s03l1nRxgy6Lr_3nNXQXlCZPK0(final boolean[] zArr, final int i, boolean z, UnconfirmedAuth unconfirmedAuth, final Runnable runnable) {
        Utilities.Callback<Boolean> callback = new Utilities.Callback() { // from class: org.telegram.messenger.UnconfirmedAuthController$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                UnconfirmedAuthController.m4956$r8$lambda$NJhReUHqCliAHaxOC3AKA_h2IU(zArr, i, runnable, (Boolean) obj);
            }
        };
        if (z) {
            unconfirmedAuth.confirm(callback);
        } else {
            unconfirmedAuth.deny(callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateList$7(boolean[] zArr, ArrayList arrayList, boolean z, Utilities.Callback callback) {
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < zArr.length; i++) {
            if (zArr[i]) {
                UnconfirmedAuth unconfirmedAuth = (UnconfirmedAuth) arrayList.get(i);
                arrayList2.add(unconfirmedAuth);
                hashSet.add(Long.valueOf(unconfirmedAuth.hash));
            }
        }
        if (!z) {
            int i2 = 0;
            while (i2 < this.auths.size()) {
                if (hashSet.contains(Long.valueOf(this.auths.get(i2).hash))) {
                    this.auths.remove(i2);
                    i2--;
                }
                i2++;
            }
            if (!hashSet.isEmpty()) {
                saveCache();
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.unconfirmedAuthUpdate, new Object[0]);
                scheduleAuthExpireCheck();
            }
        }
        callback.run(arrayList2);
    }

    public void confirm(ArrayList<UnconfirmedAuth> arrayList, Utilities.Callback<ArrayList<UnconfirmedAuth>> callback) {
        updateList(true, arrayList, callback);
    }

    public void deny(ArrayList<UnconfirmedAuth> arrayList, Utilities.Callback<ArrayList<UnconfirmedAuth>> callback) {
        updateList(false, arrayList, callback);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public class UnconfirmedAuth extends TLObject {
        public int date;
        public String device;
        public long hash;
        public String location;

        public UnconfirmedAuth(AbstractSerializedData abstractSerializedData) {
            int int32 = abstractSerializedData.readInt32(true);
            if (int32 != 2058772876) {
                TLParseException.doThrowOrLog(abstractSerializedData, "UnconfirmedAuth", int32, true);
            }
            this.hash = abstractSerializedData.readInt64(true);
            this.date = abstractSerializedData.readInt32(true);
            this.device = abstractSerializedData.readString(true);
            this.location = abstractSerializedData.readString(true);
        }

        public UnconfirmedAuth(TLRPC.TL_updateNewAuthorization tL_updateNewAuthorization) {
            this.hash = tL_updateNewAuthorization.hash;
            this.date = tL_updateNewAuthorization.date;
            this.device = tL_updateNewAuthorization.device;
            this.location = tL_updateNewAuthorization.location;
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(2058772876);
            outputSerializedData.writeInt64(this.hash);
            outputSerializedData.writeInt32(this.date);
            outputSerializedData.writeString(this.device);
            outputSerializedData.writeString(this.location);
        }

        public long expiresAfter() {
            return (ConnectionsManager.getInstance(UnconfirmedAuthController.this.currentAccount).getCurrentTime() + MessagesController.getInstance(UnconfirmedAuthController.this.currentAccount).authorizationAutoconfirmPeriod) - this.date;
        }

        public boolean expired() {
            return expiresAfter() <= 0;
        }

        public void confirm(final Utilities.Callback<Boolean> callback) {
            TL_account.changeAuthorizationSettings changeauthorizationsettings = new TL_account.changeAuthorizationSettings();
            changeauthorizationsettings.hash = this.hash;
            changeauthorizationsettings.confirmed = true;
            ConnectionsManager.getInstance(UnconfirmedAuthController.this.currentAccount).sendRequest(changeauthorizationsettings, new RequestDelegate() { // from class: org.telegram.messenger.UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$confirm$1(callback, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$confirm$1(final Utilities.Callback callback, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$confirm$0(callback, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$confirm$0(Utilities.Callback callback, TLObject tLObject, TLRPC.TL_error tL_error) {
            if (callback != null) {
                callback.run(Boolean.valueOf(((tLObject instanceof TLRPC.TL_boolTrue) && tL_error == null) || UnconfirmedAuthController.this.debug));
                UnconfirmedAuthController.this.debug = false;
            }
        }

        public void deny(final Utilities.Callback<Boolean> callback) {
            TL_account.resetAuthorization resetauthorization = new TL_account.resetAuthorization();
            resetauthorization.hash = this.hash;
            ConnectionsManager.getInstance(UnconfirmedAuthController.this.currentAccount).sendRequest(resetauthorization, new RequestDelegate() { // from class: org.telegram.messenger.UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$deny$3(callback, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$deny$3(final Utilities.Callback callback, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.UnconfirmedAuthController$UnconfirmedAuth$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$deny$2(callback, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$deny$2(Utilities.Callback callback, TLObject tLObject, TLRPC.TL_error tL_error) {
            if (callback != null) {
                callback.run(Boolean.valueOf(((tLObject instanceof TLRPC.TL_boolTrue) && tL_error == null) || UnconfirmedAuthController.this.debug));
                UnconfirmedAuthController.this.debug = false;
            }
        }
    }
}
