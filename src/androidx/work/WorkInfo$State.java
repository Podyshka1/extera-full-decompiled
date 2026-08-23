package androidx.work;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class WorkInfo$State {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WorkInfo$State[] $VALUES;
    public static final WorkInfo$State ENQUEUED = new WorkInfo$State("ENQUEUED", 0);
    public static final WorkInfo$State RUNNING = new WorkInfo$State("RUNNING", 1);
    public static final WorkInfo$State SUCCEEDED = new WorkInfo$State("SUCCEEDED", 2);
    public static final WorkInfo$State FAILED = new WorkInfo$State("FAILED", 3);
    public static final WorkInfo$State BLOCKED = new WorkInfo$State("BLOCKED", 4);
    public static final WorkInfo$State CANCELLED = new WorkInfo$State("CANCELLED", 5);

    private static final /* synthetic */ WorkInfo$State[] $values() {
        return new WorkInfo$State[]{ENQUEUED, RUNNING, SUCCEEDED, FAILED, BLOCKED, CANCELLED};
    }

    public static WorkInfo$State valueOf(String str) {
        return (WorkInfo$State) Enum.valueOf(WorkInfo$State.class, str);
    }

    public static WorkInfo$State[] values() {
        return (WorkInfo$State[]) $VALUES.clone();
    }

    private WorkInfo$State(String str, int i) {
    }

    static {
        WorkInfo$State[] workInfo$StateArr$values = $values();
        $VALUES = workInfo$StateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(workInfo$StateArr$values);
    }

    public final boolean isFinished() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
