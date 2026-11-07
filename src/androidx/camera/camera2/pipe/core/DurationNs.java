package androidx.camera.camera2.pipe.core;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087@\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000e\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0011\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0015\u001a\u00020\u00122\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/pipe/core/DurationNs;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(J)J", "other", _UrlKt.FRAGMENT_ENCODE_SET, "compareTo-zYRVrok", "(JJ)I", "compareTo", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(J)Ljava/lang/String;", "toString", "hashCode-impl", "(J)I", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(JLjava/lang/Object;)Z", "equals", "J", "getValue", "()J", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class DurationNs {
    private final long value;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DurationNs m1565boximpl(long j) {
        return new DurationNs(j);
    }

    /* JADX INFO: renamed from: compareTo-zYRVrok, reason: not valid java name */
    public static final int m1566compareTozYRVrok(long j, long j2) {
        if (j == j2) {
            return 0;
        }
        return j < j2 ? -1 : 1;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1567constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1568equalsimpl(long j, Object obj) {
        return (obj instanceof DurationNs) && j == ((DurationNs) obj).getValue();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1569hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1570toStringimpl(long j) {
        return "DurationNs(value=" + j + ')';
    }

    public boolean equals(Object obj) {
        return m1568equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1569hashCodeimpl(this.value);
    }

    public String toString() {
        return m1570toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getValue() {
        return this.value;
    }

    private /* synthetic */ DurationNs(long j) {
        this.value = j;
    }
}
