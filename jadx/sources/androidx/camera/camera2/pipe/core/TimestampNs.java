package androidx.camera.camera2.pipe.core;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;

/* JADX INFO: loaded from: classes3.dex */
public final class TimestampNs {
    private final long value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TimestampNs m1890boximpl(long j) {
        return new TimestampNs(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1891constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1892equalsimpl(long j, Object obj) {
        return (obj instanceof TimestampNs) && j == ((TimestampNs) obj).m1896unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1893equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1894hashCodeimpl(long j) {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1895toStringimpl(long j) {
        return "TimestampNs(value=" + j + ')';
    }

    public boolean equals(Object obj) {
        return m1892equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1894hashCodeimpl(this.value);
    }

    public String toString() {
        return m1895toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1896unboximpl() {
        return this.value;
    }

    private /* synthetic */ TimestampNs(long j) {
        this.value = j;
    }
}
