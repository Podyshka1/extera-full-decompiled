package androidx.room;

import androidx.sqlite.SQLiteConnection;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u00002\u00020\u0001:\u0001\u0019B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u001a"}, d2 = {"Landroidx/room/RoomOpenDelegate;", "Landroidx/room/RoomOpenDelegateMarker;", "version", _UrlKt.FRAGMENT_ENCODE_SET, "identityHash", _UrlKt.FRAGMENT_ENCODE_SET, "legacyIdentityHash", "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "getVersion", "()I", "getIdentityHash", "()Ljava/lang/String;", "getLegacyIdentityHash", "onCreate", _UrlKt.FRAGMENT_ENCODE_SET, "connection", "Landroidx/sqlite/SQLiteConnection;", "onPreMigrate", "onValidateSchema", "Landroidx/room/RoomOpenDelegate$ValidationResult;", "onPostMigrate", "onOpen", "createAllTables", "dropAllTables", "ValidationResult", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RoomOpenDelegate implements RoomOpenDelegateMarker {
    private final String identityHash;
    private final String legacyIdentityHash;
    private final int version;

    public abstract void createAllTables(SQLiteConnection connection);

    public abstract void dropAllTables(SQLiteConnection connection);

    public abstract void onCreate(SQLiteConnection connection);

    public abstract void onOpen(SQLiteConnection connection);

    public abstract void onPostMigrate(SQLiteConnection connection);

    public abstract void onPreMigrate(SQLiteConnection connection);

    public abstract ValidationResult onValidateSchema(SQLiteConnection connection);

    public RoomOpenDelegate(int i, String str, String str2) {
        this.version = i;
        this.identityHash = str;
        this.legacyIdentityHash = str2;
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

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/room/RoomOpenDelegate$ValidationResult;", _UrlKt.FRAGMENT_ENCODE_SET, "isValid", _UrlKt.FRAGMENT_ENCODE_SET, "expectedFoundMsg", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(ZLjava/lang/String;)V", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ValidationResult {

        @JvmField
        public final String expectedFoundMsg;

        @JvmField
        public final boolean isValid;

        public ValidationResult(boolean z, String str) {
            this.isValid = z;
            this.expectedFoundMsg = str;
        }
    }
}
