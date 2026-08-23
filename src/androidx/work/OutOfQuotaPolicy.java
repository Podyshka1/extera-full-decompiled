package androidx.work;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class OutOfQuotaPolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OutOfQuotaPolicy[] $VALUES;
    public static final OutOfQuotaPolicy RUN_AS_NON_EXPEDITED_WORK_REQUEST = new OutOfQuotaPolicy("RUN_AS_NON_EXPEDITED_WORK_REQUEST", 0);
    public static final OutOfQuotaPolicy DROP_WORK_REQUEST = new OutOfQuotaPolicy("DROP_WORK_REQUEST", 1);

    private static final /* synthetic */ OutOfQuotaPolicy[] $values() {
        return new OutOfQuotaPolicy[]{RUN_AS_NON_EXPEDITED_WORK_REQUEST, DROP_WORK_REQUEST};
    }

    public static OutOfQuotaPolicy valueOf(String str) {
        return (OutOfQuotaPolicy) Enum.valueOf(OutOfQuotaPolicy.class, str);
    }

    public static OutOfQuotaPolicy[] values() {
        return (OutOfQuotaPolicy[]) $VALUES.clone();
    }

    private OutOfQuotaPolicy(String str, int i) {
    }

    static {
        OutOfQuotaPolicy[] outOfQuotaPolicyArr$values = $values();
        $VALUES = outOfQuotaPolicyArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(outOfQuotaPolicyArr$values);
    }
}
