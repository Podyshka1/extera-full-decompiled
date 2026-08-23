package org.telegram.messenger;

import android.os.Looper;
import android.util.LongSparseArray;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.function.Consumer;
import okhttp3.internal.url._UrlKt;
import org.telegram.SQLite.SQLiteCursor;
import org.telegram.SQLite.SQLiteDatabase;
import org.telegram.SQLite.SQLiteException;
import org.telegram.SQLite.SQLitePreparedStatement;
import org.telegram.messenger.CacheByChatsController;
import org.telegram.p029ui.Storage.CacheModel;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: loaded from: classes.dex */
public class FilePathDatabase {
    private static final String DATABASE_BACKUP_NAME = "file_to_path_backup";
    private static final String DATABASE_NAME = "file_to_path";
    public static final int FLAG_LOCALLY_CREATED = 1;
    private static final int LAST_DB_VERSION = 7;
    public static final int MESSAGE_TYPE_VIDEO_MESSAGE = 0;
    private File cacheFile;
    private final int currentAccount;
    private SQLiteDatabase database;
    boolean databaseCreated;
    private DispatchQueue dispatchQueue;
    private File shmCacheFile;
    private final String NULL_PATH = "~null~";
    private final ConcurrentHashMap<String, String> cache = new ConcurrentHashMap<>();
    private final FileMeta metaTmp = new FileMeta();

    public static class FileMeta {
        public long dialogId;
        public int messageId;
        public long messageSize;
        public int messageType;
    }

    public FilePathDatabase(int i) {
        this.currentAccount = i;
    }

    public void createDatabase(int i, boolean z) {
        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
        if (this.currentAccount != 0) {
            File file = new File(filesDirFixed, "account" + this.currentAccount + "/");
            file.mkdirs();
            filesDirFixed = file;
        }
        this.cacheFile = new File(filesDirFixed, "file_to_path.db");
        this.shmCacheFile = new File(filesDirFixed, "file_to_path.db-shm");
        boolean zExists = this.cacheFile.exists();
        try {
            SQLiteDatabase sQLiteDatabase = new SQLiteDatabase(this.cacheFile.getPath());
            this.database = sQLiteDatabase;
            sQLiteDatabase.executeFast("PRAGMA secure_delete = ON").stepThis().dispose();
            this.database.executeFast("PRAGMA temp_store = MEMORY").stepThis().dispose();
            if (!zExists) {
                this.database.executeFast("CREATE TABLE paths(document_id INTEGER, dc_id INTEGER, type INTEGER, path TEXT, flags INTEGER, PRIMARY KEY(document_id, dc_id, type));").stepThis().dispose();
                this.database.executeFast("CREATE INDEX IF NOT EXISTS path_in_paths ON paths(path);").stepThis().dispose();
                this.database.executeFast("CREATE TABLE paths_by_dialog_id(path TEXT PRIMARY KEY, dialog_id INTEGER, message_id INTEGER, message_type INTEGER);").stepThis().dispose();
                this.database.executeFast("PRAGMA user_version = 7").stepThis().dispose();
            } else {
                int iIntValue = this.database.executeInt("PRAGMA user_version", new Object[0]).intValue();
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("current files db version = " + iIntValue);
                }
                if (iIntValue == 0) {
                    throw new Exception("malformed");
                }
                migrateDatabase(iIntValue);
            }
            if (!z) {
                createBackup();
            }
            FileLog.m1133d("files db created from_backup= " + z);
        } catch (Exception e) {
            if (i < 4) {
                if (!z && restoreBackup()) {
                    createDatabase(i + 1, true);
                    return;
                } else {
                    this.cacheFile.delete();
                    this.shmCacheFile.delete();
                    createDatabase(i + 1, false);
                }
            }
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m1136e(e);
            }
        }
    }

    private void migrateDatabase(int i) {
        if (i == 1) {
            this.database.executeFast("CREATE INDEX IF NOT EXISTS path_in_paths ON paths(path);").stepThis().dispose();
            this.database.executeFast("PRAGMA user_version = 2").stepThis().dispose();
            i = 2;
        }
        if (i == 2) {
            this.database.executeFast("CREATE TABLE paths_by_dialog_id(path TEXT PRIMARY KEY, dialog_id INTEGER);").stepThis().dispose();
            this.database.executeFast("PRAGMA user_version = 3").stepThis().dispose();
            i = 3;
        }
        if (i == 3) {
            this.database.executeFast("ALTER TABLE paths_by_dialog_id ADD COLUMN message_id INTEGER default 0").stepThis().dispose();
            this.database.executeFast("ALTER TABLE paths_by_dialog_id ADD COLUMN message_type INTEGER default 0").stepThis().dispose();
            this.database.executeFast("PRAGMA user_version = 4").stepThis().dispose();
            i = 4;
        }
        if (i == 4 || i == 5 || i == 6) {
            try {
                this.database.executeFast("ALTER TABLE paths ADD COLUMN flags INTEGER default 0").stepThis().dispose();
            } catch (Throwable th) {
                FileLog.m1136e(th);
            }
            this.database.executeFast("PRAGMA user_version = 7").stepThis().dispose();
        }
    }

    private void createBackup() {
        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
        if (this.currentAccount != 0) {
            File file = new File(filesDirFixed, "account" + this.currentAccount + "/");
            file.mkdirs();
            filesDirFixed = file;
        }
        File file2 = new File(filesDirFixed, "file_to_path_backup.db");
        try {
            AndroidUtilities.copyFile(this.cacheFile, file2);
            FileLog.m1133d("file db backup created " + file2.getAbsolutePath());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private boolean restoreBackup() {
        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
        if (this.currentAccount != 0) {
            File file = new File(filesDirFixed, "account" + this.currentAccount + "/");
            file.mkdirs();
            filesDirFixed = file;
        }
        File file2 = new File(filesDirFixed, "file_to_path_backup.db");
        if (!file2.exists()) {
            return false;
        }
        try {
            return AndroidUtilities.copyFile(file2, this.cacheFile);
        } catch (IOException e) {
            FileLog.m1136e(e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getPath(final long j, final int i, final int i2, boolean z) {
        int i3;
        boolean z2;
        SQLiteCursor sQLiteCursor;
        String strStringValue;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        String str = j + "_" + i + "_" + i2;
        String str2 = this.cache.get(str);
        if (str2 == "~null~") {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m1133d("get file path cached null id=" + j + " dc=" + i + " type=" + i2 + " path=" + ((Object) null) + " in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
            }
            return null;
        }
        if (str2 != null) {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m1133d("get file path cached id=" + j + " dc=" + i + " type=" + i2 + " path=" + str2 + " in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
            }
            return str2;
        }
        DispatchQueue dispatchQueue = this.dispatchQueue;
        String str3 = null;
        if (dispatchQueue != null && dispatchQueue.getHandler() != null) {
            i3 = 0;
            if (Thread.currentThread() == this.dispatchQueue.getHandler().getLooper().getThread()) {
                z2 = false;
            }
            if (!z2) {
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                final String[] strArr = new String[1];
                (Thread.currentThread() == ApplicationLoader.applicationHandler.getLooper().getThread() ? new Consumer() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda4
                    @Override // java.util.function.Consumer
                    /* JADX INFO: renamed from: accept */
                    public final void m940v(Object obj) {
                        this.f$0.postToFrontRunnable((Runnable) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                } : new Consumer() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda5
                    @Override // java.util.function.Consumer
                    /* JADX INFO: renamed from: accept */
                    public final void m940v(Object obj) {
                        this.f$0.postRunnable((Runnable) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                }).m940v(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$getPath$0(j, i, i2, strArr, jCurrentTimeMillis, countDownLatch);
                    }
                });
                try {
                    countDownLatch.await();
                } catch (Exception unused) {
                }
                String str4 = strArr[i3];
                if (str4 != null) {
                    this.cache.put(str, str4);
                } else {
                    this.cache.put(str, "~null~");
                }
                return strArr[i3];
            }
            SQLiteDatabase sQLiteDatabase = this.database;
            if (sQLiteDatabase == null) {
                return null;
            }
            try {
                int i4 = i3;
                SQLiteCursor sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized("SELECT path FROM paths WHERE document_id = " + j + " AND dc_id = " + i + " AND type = " + i2, new Object[i4]);
                try {
                    try {
                        if (sQLiteCursorQueryFinalized.next()) {
                            strStringValue = sQLiteCursorQueryFinalized.stringValue(i4);
                            try {
                                if (BuildVars.DEBUG_VERSION) {
                                    FileLog.m1133d("get file path id=" + j + " dc=" + i + " type=" + i2 + " path=" + strStringValue + " in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                                }
                            } catch (SQLiteException e) {
                                e = e;
                                str3 = strStringValue;
                                sQLiteCursor = sQLiteCursorQueryFinalized;
                                try {
                                    FileLog.m1136e(e);
                                    if (sQLiteCursor != null) {
                                        sQLiteCursor.dispose();
                                    }
                                    strStringValue = str3;
                                } catch (Throwable th) {
                                    th = th;
                                    if (sQLiteCursor != null) {
                                        sQLiteCursor.dispose();
                                    }
                                    throw th;
                                }
                            }
                        } else {
                            strStringValue = null;
                        }
                        sQLiteCursorQueryFinalized.dispose();
                    } catch (SQLiteException e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteCursor = sQLiteCursorQueryFinalized;
                    if (sQLiteCursor != null) {
                    }
                    throw th;
                }
            } catch (SQLiteException e3) {
                e = e3;
                sQLiteCursor = null;
            } catch (Throwable th3) {
                th = th3;
                sQLiteCursor = null;
            }
            if (strStringValue != null) {
                this.cache.put(str, strStringValue);
            } else {
                this.cache.put(str, "~null~");
            }
            return strStringValue;
        }
        i3 = 0;
        z2 = z;
        if (!z2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getPath$0(long j, int i, int i2, String[] strArr, long j2, CountDownLatch countDownLatch) {
        ensureDatabaseCreated();
        SQLiteDatabase sQLiteDatabase = this.database;
        if (sQLiteDatabase != null) {
            SQLiteCursor sQLiteCursorQueryFinalized = null;
            try {
                sQLiteCursorQueryFinalized = sQLiteDatabase.queryFinalized("SELECT path FROM paths WHERE document_id = " + j + " AND dc_id = " + i + " AND type = " + i2, new Object[0]);
                if (sQLiteCursorQueryFinalized.next()) {
                    strArr[0] = sQLiteCursorQueryFinalized.stringValue(0);
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m1133d("get file path id=" + j + " dc=" + i + " type=" + i2 + " path=" + strArr[0] + " in " + (System.currentTimeMillis() - j2) + "ms");
                    }
                }
            } catch (Throwable th) {
                try {
                    FileLog.m1136e(th);
                    if (sQLiteCursorQueryFinalized != null) {
                    }
                    countDownLatch.countDown();
                } catch (Throwable th2) {
                    if (sQLiteCursorQueryFinalized != null) {
                        sQLiteCursorQueryFinalized.dispose();
                    }
                    throw th2;
                }
            }
            sQLiteCursorQueryFinalized.dispose();
        }
        countDownLatch.countDown();
    }

    public void ensureDatabaseCreated() {
        if (this.databaseCreated) {
            return;
        }
        if (!NativeLoader.loaded()) {
            int i = 0;
            while (!NativeLoader.loaded()) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                i++;
                if (i > 5) {
                    break;
                }
            }
        }
        createDatabase(0, false);
        this.databaseCreated = true;
    }

    public void putPath(final long j, final int i, final int i2, final int i3, final String str) {
        postRunnable(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$putPath$1(j, i, i2, str, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$putPath$1(long j, int i, int i2, String str, int i3) throws Throwable {
        SQLitePreparedStatement sQLitePreparedStatement;
        SQLitePreparedStatement sQLitePreparedStatement2;
        if (BuildVars.DEBUG_VERSION) {
            FileLog.m1133d("put file path id=" + j + " dc=" + i + " type=" + i2 + " path=" + str);
        }
        ensureDatabaseCreated();
        SQLiteDatabase sQLiteDatabase = this.database;
        if (sQLiteDatabase == null) {
            return;
        }
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast = null;
        try {
            if (str != null) {
                SQLitePreparedStatement sQLitePreparedStatementExecuteFast2 = sQLiteDatabase.executeFast("DELETE FROM paths WHERE path = ?");
                try {
                    sQLitePreparedStatementExecuteFast2.bindString(1, str);
                    sQLitePreparedStatementExecuteFast2.step();
                    sQLitePreparedStatementExecuteFast = this.database.executeFast("REPLACE INTO paths VALUES(?, ?, ?, ?, ?)");
                    sQLitePreparedStatementExecuteFast.requery();
                    sQLitePreparedStatementExecuteFast.bindLong(1, j);
                    sQLitePreparedStatementExecuteFast.bindInteger(2, i);
                    sQLitePreparedStatementExecuteFast.bindInteger(3, i2);
                    sQLitePreparedStatementExecuteFast.bindString(4, str);
                    sQLitePreparedStatementExecuteFast.bindInteger(5, i3);
                    sQLitePreparedStatementExecuteFast.step();
                    sQLitePreparedStatementExecuteFast.dispose();
                    this.cache.put(j + "_" + i + "_" + i2, str);
                    sQLitePreparedStatement2 = sQLitePreparedStatementExecuteFast;
                    sQLitePreparedStatementExecuteFast = sQLitePreparedStatementExecuteFast2;
                } catch (SQLiteException e) {
                    e = e;
                    sQLitePreparedStatement = sQLitePreparedStatementExecuteFast;
                    sQLitePreparedStatementExecuteFast = sQLitePreparedStatementExecuteFast2;
                    try {
                        FileLog.m1136e(e);
                        if (sQLitePreparedStatementExecuteFast != null) {
                            sQLitePreparedStatementExecuteFast.dispose();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        if (sQLitePreparedStatementExecuteFast != null) {
                            sQLitePreparedStatementExecuteFast.dispose();
                        }
                        if (sQLitePreparedStatement != null) {
                            sQLitePreparedStatement.dispose();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    sQLitePreparedStatement = sQLitePreparedStatementExecuteFast;
                    sQLitePreparedStatementExecuteFast = sQLitePreparedStatementExecuteFast2;
                    if (sQLitePreparedStatementExecuteFast != null) {
                    }
                    if (sQLitePreparedStatement != null) {
                    }
                    throw th;
                }
            } else {
                sQLiteDatabase.executeFast("DELETE FROM paths WHERE document_id = " + j + " AND dc_id = " + i + " AND type = " + i2).stepThis().dispose();
                this.cache.put(j + "_" + i + "_" + i2, "~null~");
                sQLitePreparedStatement2 = null;
            }
            if (sQLitePreparedStatementExecuteFast != null) {
                sQLitePreparedStatementExecuteFast.dispose();
            }
            if (sQLitePreparedStatement2 != null) {
                sQLitePreparedStatement2.dispose();
            }
        } catch (SQLiteException e2) {
            e = e2;
            sQLitePreparedStatement = sQLitePreparedStatementExecuteFast;
        } catch (Throwable th3) {
            th = th3;
            sQLitePreparedStatement = sQLitePreparedStatementExecuteFast;
        }
    }

    public void checkMediaExistance(ArrayList<MessageObject> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        final ArrayList arrayList2 = new ArrayList(arrayList);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        long jCurrentTimeMillis = System.currentTimeMillis();
        final long[] jArr = new long[1];
        postToFrontRunnable(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkMediaExistance$2(arrayList2, jArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            FileLog.m1136e(e);
        }
        FileLog.m1133d("checkMediaExistance size=" + arrayList.size() + " time=" + (System.currentTimeMillis() - jCurrentTimeMillis) + " thread_time=" + jArr[0]);
        if (BuildVars.DEBUG_VERSION && Thread.currentThread() == Looper.getMainLooper().getThread()) {
            FileLog.m1136e(new Exception("warning, not allowed in main thread"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkMediaExistance$2(ArrayList arrayList, long[] jArr, CountDownLatch countDownLatch) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ensureDatabaseCreated();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                ((MessageObject) arrayList.get(i)).checkMediaExistance(false);
            } catch (Throwable th) {
                try {
                    FileLog.m1136e(th);
                    return;
                } finally {
                    countDownLatch.countDown();
                }
            }
        }
        jArr[0] = System.currentTimeMillis() - jCurrentTimeMillis;
    }

    public void clear() {
        this.cache.clear();
        postRunnable(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clear$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clear$3() {
        ensureDatabaseCreated();
        try {
            this.database.executeFast("DELETE FROM paths WHERE 1").stepThis().dispose();
            this.database.executeFast("DELETE FROM paths_by_dialog_id WHERE 1").stepThis().dispose();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public boolean hasAnotherRefOnFile(final String str) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final boolean[] zArr = {false};
        postRunnable(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$hasAnotherRefOnFile$4(str, zArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            FileLog.m1136e(e);
        }
        return zArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hasAnotherRefOnFile$4(String str, boolean[] zArr, CountDownLatch countDownLatch) {
        ensureDatabaseCreated();
        try {
            if (this.database.queryFinalized("SELECT document_id FROM paths WHERE path = '" + str + "'", new Object[0]).next()) {
                zArr[0] = true;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        } finally {
            countDownLatch.countDown();
        }
    }

    public void saveFileDialogId(final File file, final FileMeta fileMeta) {
        if (file == null || fileMeta == null) {
            return;
        }
        postRunnable(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$saveFileDialogId$5(file, fileMeta);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveFileDialogId$5(File file, FileMeta fileMeta) {
        ensureDatabaseCreated();
        SQLitePreparedStatement sQLitePreparedStatementExecuteFast = null;
        try {
            try {
                sQLitePreparedStatementExecuteFast = this.database.executeFast("REPLACE INTO paths_by_dialog_id VALUES(?, ?, ?, ?)");
                sQLitePreparedStatementExecuteFast.requery();
                sQLitePreparedStatementExecuteFast.bindString(1, shield(file.getPath()));
                sQLitePreparedStatementExecuteFast.bindLong(2, fileMeta.dialogId);
                sQLitePreparedStatementExecuteFast.bindInteger(3, fileMeta.messageId);
                sQLitePreparedStatementExecuteFast.bindInteger(4, fileMeta.messageType);
                sQLitePreparedStatementExecuteFast.step();
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

    public FileMeta getFileDialogId(File file, FileMeta fileMeta) {
        int iIntValue;
        int iIntValue2;
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        if (file == null) {
            return null;
        }
        if (fileMeta == null) {
            fileMeta = this.metaTmp;
        }
        int i = 0;
        long jLongValue = 0;
        try {
            try {
                sQLiteCursorQueryFinalized = this.database.queryFinalized("SELECT dialog_id, message_id, message_type FROM paths_by_dialog_id WHERE path = '" + shield(file.getPath()) + "'", new Object[0]);
                if (sQLiteCursorQueryFinalized.next()) {
                    jLongValue = sQLiteCursorQueryFinalized.longValue(0);
                    iIntValue = sQLiteCursorQueryFinalized.intValue(1);
                    try {
                        i = iIntValue;
                        iIntValue2 = sQLiteCursorQueryFinalized.intValue(2);
                    } catch (Exception e) {
                        e = e;
                        FileLog.m1136e(e);
                        i = iIntValue;
                        iIntValue2 = 0;
                    }
                } else {
                    iIntValue2 = 0;
                }
                sQLiteCursorQueryFinalized.dispose();
            } catch (Exception e2) {
                e = e2;
                iIntValue = 0;
            }
            fileMeta.dialogId = jLongValue;
            fileMeta.messageId = i;
            fileMeta.messageType = iIntValue2;
            return fileMeta;
        } finally {
            if (sQLiteCursorQueryFinalized != null) {
                sQLiteCursorQueryFinalized.dispose();
            }
        }
    }

    private String shield(String str) {
        return str.replace("'", _UrlKt.FRAGMENT_ENCODE_SET).replace("\"", _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public DispatchQueue getQueue() {
        ensureQueueExist();
        return this.dispatchQueue;
    }

    public void removeFiles(final List<CacheModel.FileInfo> list) {
        postRunnable(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeFiles$6(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeFiles$6(List list) {
        try {
            ensureDatabaseCreated();
            this.database.beginTransaction();
            for (int i = 0; i < list.size(); i++) {
                this.database.executeFast("DELETE FROM paths_by_dialog_id WHERE path = '" + shield(((CacheModel.FileInfo) list.get(i)).file.getPath()) + "'").stepThis().dispose();
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public LongSparseArray<ArrayList<CacheByChatsController.KeepMediaFile>> lookupFiles(final ArrayList<? extends CacheByChatsController.KeepMediaFile> arrayList) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final LongSparseArray<ArrayList<CacheByChatsController.KeepMediaFile>> longSparseArray = new LongSparseArray<>();
        postRunnable(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$lookupFiles$7(arrayList, longSparseArray, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
            return longSparseArray;
        } catch (InterruptedException e) {
            FileLog.m1136e(e);
            return longSparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$lookupFiles$7(ArrayList arrayList, LongSparseArray longSparseArray, CountDownLatch countDownLatch) {
        try {
            ensureDatabaseCreated();
            FileMeta fileMeta = new FileMeta();
            for (int i = 0; i < arrayList.size(); i++) {
                FileMeta fileDialogId = getFileDialogId(((CacheByChatsController.KeepMediaFile) arrayList.get(i)).file, fileMeta);
                if (fileDialogId != null) {
                    long j = fileDialogId.dialogId;
                    if (j != 0) {
                        ArrayList arrayList2 = (ArrayList) longSparseArray.get(j);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            longSparseArray.put(fileDialogId.dialogId, arrayList2);
                        }
                        ((CacheByChatsController.KeepMediaFile) arrayList.get(i)).isStory = fileDialogId.messageType == 23;
                        arrayList2.add((CacheByChatsController.KeepMediaFile) arrayList.get(i));
                    }
                }
            }
        } catch (Throwable th) {
            try {
                FileLog.m1136e(th);
            } finally {
                countDownLatch.countDown();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postRunnable(Runnable runnable) {
        ensureQueueExist();
        this.dispatchQueue.postRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postToFrontRunnable(Runnable runnable) {
        ensureQueueExist();
        this.dispatchQueue.postToFrontRunnable(runnable);
    }

    private void ensureQueueExist() {
        if (this.dispatchQueue == null) {
            synchronized (this) {
                try {
                    if (this.dispatchQueue == null) {
                        DispatchQueue dispatchQueue = new DispatchQueue("files_database_queue_" + this.currentAccount);
                        this.dispatchQueue = dispatchQueue;
                        dispatchQueue.setPriority(10);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public boolean isLocallyCreated(final String str) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final boolean[] zArr = {false};
        postRunnable(new Runnable() { // from class: org.telegram.messenger.FilePathDatabase$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$isLocallyCreated$8(str, zArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            FileLog.m1136e(e);
        }
        return zArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$isLocallyCreated$8(String str, boolean[] zArr, CountDownLatch countDownLatch) {
        ensureDatabaseCreated();
        SQLiteCursor sQLiteCursorQueryFinalized = null;
        try {
            try {
                sQLiteCursorQueryFinalized = this.database.queryFinalized("SELECT flags FROM paths WHERE path = '" + str + "'", new Object[0]);
                if (sQLiteCursorQueryFinalized.next()) {
                    boolean z = true;
                    if ((sQLiteCursorQueryFinalized.intValue(0) & 1) == 0) {
                        z = false;
                    }
                    zArr[0] = z;
                }
                countDownLatch.countDown();
                sQLiteCursorQueryFinalized.dispose();
            } catch (Exception e) {
                FileLog.m1136e(e);
                countDownLatch.countDown();
                if (sQLiteCursorQueryFinalized != null) {
                    sQLiteCursorQueryFinalized.dispose();
                }
            }
        } catch (Throwable th) {
            countDownLatch.countDown();
            if (sQLiteCursorQueryFinalized != null) {
                sQLiteCursorQueryFinalized.dispose();
            }
            throw th;
        }
    }

    public static class PathData {

        /* JADX INFO: renamed from: dc */
        public final int f1587dc;

        /* JADX INFO: renamed from: id */
        public final long f1588id;
        public final int type;

        public PathData(long j, int i, int i2) {
            this.f1588id = j;
            this.f1587dc = i;
            this.type = i2;
        }
    }
}
