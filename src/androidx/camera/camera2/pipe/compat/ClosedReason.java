package androidx.camera.camera2.pipe.compat;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import okhttp3.internal.url._UrlKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Landroidx/camera/camera2/pipe/compat/ClosedReason;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "APP_CLOSED", "APP_DISCONNECTED", "CAMERA2_CLOSED", "CAMERA2_DISCONNECTED", "CAMERA2_ERROR", "CAMERA2_EXCEPTION", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
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
