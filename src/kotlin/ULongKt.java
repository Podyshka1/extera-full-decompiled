package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0003\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0005\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0007\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\bH\u0087\u0088\u0004¢\u0006\u0002\u0010\t\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\u0088\u0004¢\u0006\u0002\u0010\u000b\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\fH\u0087\u0088\u0004¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"toULong", "Lkotlin/ULong;", _UrlKt.FRAGMENT_ENCODE_SET, "(B)J", _UrlKt.FRAGMENT_ENCODE_SET, "(S)J", _UrlKt.FRAGMENT_ENCODE_SET, "(I)J", _UrlKt.FRAGMENT_ENCODE_SET, "(J)J", _UrlKt.FRAGMENT_ENCODE_SET, "(F)J", _UrlKt.FRAGMENT_ENCODE_SET, "(D)J", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class ULongKt {
    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long toULong(byte b2) {
        return ULong.m3261constructorimpl(b2);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long toULong(short s) {
        return ULong.m3261constructorimpl(s);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long toULong(int i) {
        return ULong.m3261constructorimpl(i);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long toULong(long j) {
        return ULong.m3261constructorimpl(j);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long toULong(float f) {
        return UnsignedKt.doubleToULong(f);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final long toULong(double d) {
        return UnsignedKt.doubleToULong(d);
    }
}
