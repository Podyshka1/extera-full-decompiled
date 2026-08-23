package androidx.camera.camera2.pipe.core;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\r\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0016"}, d2 = {"Landroidx/camera/camera2/pipe/core/TimestampNs;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(J)J", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(J)Ljava/lang/String;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode-impl", "(J)I", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(JLjava/lang/Object;)Z", "equals", "J", "getValue", "()J", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class TimestampNs {
    private final long value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TimestampNs m1487boximpl(long j) {
        return new TimestampNs(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1488constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1489equalsimpl(long j, Object obj) {
        return (obj instanceof TimestampNs) && j == ((TimestampNs) obj).getValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1490equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1491hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1492toStringimpl(long j) {
        return "TimestampNs(value=" + j + ')';
    }

    public boolean equals(Object obj) {
        return m1489equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1491hashCodeimpl(this.value);
    }

    public String toString() {
        return m1492toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getValue() {
        return this.value;
    }

    private /* synthetic */ TimestampNs(long j) {
        this.value = j;
    }
}
