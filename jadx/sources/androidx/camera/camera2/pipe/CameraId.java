package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraId {
    public static final Companion Companion = new Companion(null);
    private final String value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraId m1602boximpl(String str) {
        return new CameraId(str);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1604equalsimpl(String str, Object obj) {
        return (obj instanceof CameraId) && Intrinsics.areEqual(str, ((CameraId) obj).m1608unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1605equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1606hashCodeimpl(String str) {
        return str.hashCode();
    }

    public boolean equals(Object obj) {
        return m1604equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1606hashCodeimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m1608unboximpl() {
        return this.value;
    }

    private /* synthetic */ CameraId(String str) {
        this.value = str;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m1603constructorimpl(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (StringsKt.isBlank(value)) {
            throw new IllegalArgumentException("CameraId cannot be null or blank!");
        }
        return value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1607toStringimpl(String str) {
        return "CameraId-" + str;
    }

    public String toString() {
        return m1607toStringimpl(this.value);
    }
}
