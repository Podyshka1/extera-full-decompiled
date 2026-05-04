package androidx.work;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class NetworkType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NetworkType[] $VALUES;
    public static final NetworkType NOT_REQUIRED = new NetworkType("NOT_REQUIRED", 0);
    public static final NetworkType CONNECTED = new NetworkType("CONNECTED", 1);
    public static final NetworkType UNMETERED = new NetworkType("UNMETERED", 2);
    public static final NetworkType NOT_ROAMING = new NetworkType("NOT_ROAMING", 3);
    public static final NetworkType METERED = new NetworkType("METERED", 4);
    public static final NetworkType TEMPORARILY_UNMETERED = new NetworkType("TEMPORARILY_UNMETERED", 5);

    private static final /* synthetic */ NetworkType[] $values() {
        return new NetworkType[]{NOT_REQUIRED, CONNECTED, UNMETERED, NOT_ROAMING, METERED, TEMPORARILY_UNMETERED};
    }

    public static NetworkType valueOf(String str) {
        return (NetworkType) Enum.valueOf(NetworkType.class, str);
    }

    public static NetworkType[] values() {
        return (NetworkType[]) $VALUES.clone();
    }

    private NetworkType(String str, int i) {
    }

    static {
        NetworkType[] networkTypeArr$values = $values();
        $VALUES = networkTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(networkTypeArr$values);
    }
}
