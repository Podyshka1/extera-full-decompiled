package kotlin.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0082\u0080\u0004\u001a\u001a\u0010\u0000\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0080\u0004\u001a\"\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0082\u0080\u0004\u001a\"\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0082\u0080\u0004\u001a\"\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0001H\u0081\u0080\u0004\u001a\"\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0081\u0080\u0004¨\u0006\u000b"}, d2 = {"mod", _UrlKt.FRAGMENT_ENCODE_SET, "a", "b", _UrlKt.FRAGMENT_ENCODE_SET, "differenceModulo", "c", "getProgressionLastElement", "start", "end", "step", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class ProgressionUtilKt {
    private static final int mod(int i, int i2) {
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    private static final long mod(long j, long j2) {
        long j3 = j % j2;
        return j3 >= 0 ? j3 : j3 + j2;
    }

    private static final int differenceModulo(int i, int i2, int i3) {
        return mod(mod(i, i3) - mod(i2, i3), i3);
    }

    private static final long differenceModulo(long j, long j2, long j3) {
        return mod(mod(j, j3) - mod(j2, j3), j3);
    }

    @PublishedApi
    public static final int getProgressionLastElement(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                return i2 - differenceModulo(i2, i, i3);
            }
        } else {
            if (i3 >= 0) {
                f$$ExternalSyntheticBUOutline1.m212m("Step is zero.");
                return 0;
            }
            if (i > i2) {
                return i2 + differenceModulo(i, i2, -i3);
            }
        }
        return i2;
    }

    @PublishedApi
    public static final long getProgressionLastElement(long j, long j2, long j3) {
        if (j3 > 0) {
            return j >= j2 ? j2 : j2 - differenceModulo(j2, j, j3);
        }
        if (j3 < 0) {
            return j <= j2 ? j2 : j2 + differenceModulo(j, j2, -j3);
        }
        f$$ExternalSyntheticBUOutline1.m212m("Step is zero.");
        return 0L;
    }
}
