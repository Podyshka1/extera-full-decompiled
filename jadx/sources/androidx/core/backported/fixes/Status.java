package androidx.core.backported.fixes;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class Status {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Status[] $VALUES;
    public static final Status Unknown = new Status("Unknown", 0);
    public static final Status Fixed = new Status("Fixed", 1);
    public static final Status NotApplicable = new Status("NotApplicable", 2);
    public static final Status NotFixed = new Status("NotFixed", 3);

    private static final /* synthetic */ Status[] $values() {
        return new Status[]{Unknown, Fixed, NotApplicable, NotFixed};
    }

    public static Status valueOf(String str) {
        return (Status) Enum.valueOf(Status.class, str);
    }

    public static Status[] values() {
        return (Status[]) $VALUES.clone();
    }

    private Status(String str, int i) {
    }

    static {
        Status[] statusArr$values = $values();
        $VALUES = statusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(statusArr$values);
    }
}
