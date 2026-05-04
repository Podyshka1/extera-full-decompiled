package androidx.work;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class ExistingWorkPolicy {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ExistingWorkPolicy[] $VALUES;
    public static final ExistingWorkPolicy REPLACE = new ExistingWorkPolicy("REPLACE", 0);
    public static final ExistingWorkPolicy KEEP = new ExistingWorkPolicy("KEEP", 1);
    public static final ExistingWorkPolicy APPEND = new ExistingWorkPolicy("APPEND", 2);
    public static final ExistingWorkPolicy APPEND_OR_REPLACE = new ExistingWorkPolicy("APPEND_OR_REPLACE", 3);

    private static final /* synthetic */ ExistingWorkPolicy[] $values() {
        return new ExistingWorkPolicy[]{REPLACE, KEEP, APPEND, APPEND_OR_REPLACE};
    }

    public static ExistingWorkPolicy valueOf(String str) {
        return (ExistingWorkPolicy) Enum.valueOf(ExistingWorkPolicy.class, str);
    }

    public static ExistingWorkPolicy[] values() {
        return (ExistingWorkPolicy[]) $VALUES.clone();
    }

    private ExistingWorkPolicy(String str, int i) {
    }

    static {
        ExistingWorkPolicy[] existingWorkPolicyArr$values = $values();
        $VALUES = existingWorkPolicyArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(existingWorkPolicyArr$values);
    }
}
