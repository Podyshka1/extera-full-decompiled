package androidx.room;

import androidx.sqlite.SQLiteConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class RoomOpenDelegate implements RoomOpenDelegateMarker {
    private final String identityHash;
    private final String legacyIdentityHash;
    private final int version;

    public abstract void createAllTables(SQLiteConnection sQLiteConnection);

    public abstract void dropAllTables(SQLiteConnection sQLiteConnection);

    public abstract void onCreate(SQLiteConnection sQLiteConnection);

    public abstract void onOpen(SQLiteConnection sQLiteConnection);

    public abstract void onPostMigrate(SQLiteConnection sQLiteConnection);

    public abstract void onPreMigrate(SQLiteConnection sQLiteConnection);

    public abstract ValidationResult onValidateSchema(SQLiteConnection sQLiteConnection);

    public RoomOpenDelegate(int i, String identityHash, String legacyIdentityHash) {
        Intrinsics.checkNotNullParameter(identityHash, "identityHash");
        Intrinsics.checkNotNullParameter(legacyIdentityHash, "legacyIdentityHash");
        this.version = i;
        this.identityHash = identityHash;
        this.legacyIdentityHash = legacyIdentityHash;
    }

    public final int getVersion() {
        return this.version;
    }

    public final String getIdentityHash() {
        return this.identityHash;
    }

    public final String getLegacyIdentityHash() {
        return this.legacyIdentityHash;
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class ValidationResult {
        public final String expectedFoundMsg;
        public final boolean isValid;

        public ValidationResult(boolean z, String str) {
            this.isValid = z;
            this.expectedFoundMsg = str;
        }
    }
}
