package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraBackendId {
    private final String value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraBackendId m1526boximpl(String str) {
        return new CameraBackendId(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m1527constructorimpl(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1528equalsimpl(String str, Object obj) {
        return (obj instanceof CameraBackendId) && Intrinsics.areEqual(str, ((CameraBackendId) obj).m1532unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1529equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1530hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1531toStringimpl(String str) {
        return "CameraBackendId(value=" + str + ')';
    }

    public boolean equals(Object obj) {
        return m1528equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1530hashCodeimpl(this.value);
    }

    public String toString() {
        return m1531toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m1532unboximpl() {
        return this.value;
    }

    private /* synthetic */ CameraBackendId(String str) {
        this.value = str;
    }
}
