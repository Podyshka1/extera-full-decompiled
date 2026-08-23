package androidx.camera.camera2.pipe.core;

import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class DurationNs {
    public static final Companion Companion = new Companion(null);
    private final long value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DurationNs m1878boximpl(long j) {
        return new DurationNs(j);
    }

    /* JADX INFO: renamed from: compareTo-zYRVrok, reason: not valid java name */
    public static final int m1879compareTozYRVrok(long j, long j2) {
        if (j == j2) {
            return 0;
        }
        return j < j2 ? -1 : 1;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1880constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1881equalsimpl(long j, Object obj) {
        return (obj instanceof DurationNs) && j == ((DurationNs) obj).m1884unboximpl();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1882hashCodeimpl(long j) {
        return CameraTimestamp$$ExternalSyntheticBackport0.m47m(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1883toStringimpl(long j) {
        return "DurationNs(value=" + j + ')';
    }

    public boolean equals(Object obj) {
        return m1881equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1882hashCodeimpl(this.value);
    }

    public String toString() {
        return m1883toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1884unboximpl() {
        return this.value;
    }

    private /* synthetic */ DurationNs(long j) {
        this.value = j;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
