package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    public interface Factory {
        SupportSQLiteOpenHelper create(Configuration configuration);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    SupportSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);

    public static abstract class Callback {
        public static final Companion Companion = new Companion(null);
        public final int version;

        public void onConfigure(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }

        public abstract void onCreate(SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void onDowngrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);

        public abstract void onOpen(SupportSQLiteDatabase supportSQLiteDatabase);

        public abstract void onUpgrade(SupportSQLiteDatabase supportSQLiteDatabase, int i, int i2);

        public Callback(int i) {
            this.version = i;
        }

        public void onCorruption(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + db + ".path");
            if (!db.isOpen()) {
                String path = db.getPath();
                if (path != null) {
                    deleteDatabaseFile(path);
                    return;
                }
                return;
            }
            List attachedDbs = null;
            try {
                try {
                    attachedDbs = db.getAttachedDbs();
                } finally {
                    if (attachedDbs != null) {
                        Iterator it = attachedDbs.iterator();
                        while (it.hasNext()) {
                            Object second = ((Pair) it.next()).second;
                            Intrinsics.checkNotNullExpressionValue(second, "second");
                            deleteDatabaseFile((String) second);
                        }
                    } else {
                        String path2 = db.getPath();
                        if (path2 != null) {
                            deleteDatabaseFile(path2);
                        }
                    }
                }
            } catch (SQLiteException unused) {
            }
            try {
                db.close();
            } catch (IOException unused2) {
            }
            if (attachedDbs != null) {
                return;
            }
        }

        private final void deleteDatabaseFile(String str) {
            if (StringsKt.equals(str, ":memory:", true)) {
                return;
            }
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            if (str.subSequence(i, length + 1).toString().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e) {
                Log.w("SupportSQLite", "delete failed: ", e);
            }
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    public static final class Configuration {
        public static final Companion Companion = new Companion(null);
        public final boolean allowDataLossOnRecovery;
        public final Callback callback;
        public final Context context;
        public final String name;
        public final boolean useNoBackupDirectory;

        public Configuration(Context context, String str, Callback callback, boolean z, boolean z2) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.context = context;
            this.name = str;
            this.callback = callback;
            this.useNoBackupDirectory = z;
            this.allowDataLossOnRecovery = z2;
        }

        public static class Builder {
            private boolean allowDataLossOnRecovery;
            private Callback callback;
            private final Context context;
            private String name;
            private boolean useNoBackupDirectory;

            public Builder(Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                this.context = context;
            }

            public Configuration build() {
                String str;
                Callback callback = this.callback;
                if (callback == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                if (this.useNoBackupDirectory && ((str = this.name) == null || str.length() == 0)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                }
                return new Configuration(this.context, this.name, callback, this.useNoBackupDirectory, this.allowDataLossOnRecovery);
            }

            public Builder name(String str) {
                this.name = str;
                return this;
            }

            public Builder callback(Callback callback) {
                Intrinsics.checkNotNullParameter(callback, "callback");
                this.callback = callback;
                return this;
            }

            public Builder noBackupDirectory(boolean z) {
                this.useNoBackupDirectory = z;
                return this;
            }

            public Builder allowDataLossOnRecovery(boolean z) {
                this.allowDataLossOnRecovery = z;
                return this;
            }
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Builder builder(Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return new Builder(context);
            }
        }
    }
}
