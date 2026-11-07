package androidx.media3.common;

import android.os.Build;
import android.os.IBinder;
import java.util.UUID;

/* JADX INFO: renamed from: androidx.media3.common.C */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0644C {
    public static final UUID CLEARKEY_UUID;
    public static final UUID COMMON_PSSH_UUID;
    public static final UUID PLAYREADY_UUID;
    public static final int SUGGESTED_MAX_IPC_SIZE;
    public static final UUID UUID_NIL;
    public static final UUID WIDEVINE_UUID;

    static {
        SUGGESTED_MAX_IPC_SIZE = Build.VERSION.SDK_INT >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
        UUID_NIL = new UUID(0L, 0L);
        COMMON_PSSH_UUID = new UUID(1186680826959645954L, -5988876978535335093L);
        CLEARKEY_UUID = new UUID(-2129748144642739255L, 8654423357094679310L);
        WIDEVINE_UUID = new UUID(-1301668207276963122L, -6645017420763422227L);
        PLAYREADY_UUID = new UUID(-7348484286925749626L, -6083546864340672619L);
    }
}
