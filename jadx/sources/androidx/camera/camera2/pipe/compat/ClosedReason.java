package androidx.camera.camera2.pipe.compat;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class ClosedReason {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ClosedReason[] $VALUES;
    public static final ClosedReason APP_CLOSED = new ClosedReason("APP_CLOSED", 0);
    public static final ClosedReason APP_DISCONNECTED = new ClosedReason("APP_DISCONNECTED", 1);
    public static final ClosedReason CAMERA2_CLOSED = new ClosedReason("CAMERA2_CLOSED", 2);
    public static final ClosedReason CAMERA2_DISCONNECTED = new ClosedReason("CAMERA2_DISCONNECTED", 3);
    public static final ClosedReason CAMERA2_ERROR = new ClosedReason("CAMERA2_ERROR", 4);
    public static final ClosedReason CAMERA2_EXCEPTION = new ClosedReason("CAMERA2_EXCEPTION", 5);

    private static final /* synthetic */ ClosedReason[] $values() {
        return new ClosedReason[]{APP_CLOSED, APP_DISCONNECTED, CAMERA2_CLOSED, CAMERA2_DISCONNECTED, CAMERA2_ERROR, CAMERA2_EXCEPTION};
    }

    public static ClosedReason valueOf(String str) {
        return (ClosedReason) Enum.valueOf(ClosedReason.class, str);
    }

    public static ClosedReason[] values() {
        return (ClosedReason[]) $VALUES.clone();
    }

    private ClosedReason(String str, int i) {
    }

    static {
        ClosedReason[] closedReasonArr$values = $values();
        $VALUES = closedReasonArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(closedReasonArr$values);
    }
}
