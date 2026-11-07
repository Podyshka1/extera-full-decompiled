package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0003\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0005\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0006H\u0087\u0088\u0004¢\u0006\u0002\u0010\u0007\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\bH\u0087\u0088\u0004¢\u0006\u0002\u0010\t\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\u0088\u0004¢\u0006\u0002\u0010\u000b\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\fH\u0087\u0088\u0004¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"toUInt", "Lkotlin/UInt;", _UrlKt.FRAGMENT_ENCODE_SET, "(B)I", _UrlKt.FRAGMENT_ENCODE_SET, "(S)I", _UrlKt.FRAGMENT_ENCODE_SET, "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "(J)I", _UrlKt.FRAGMENT_ENCODE_SET, "(F)I", _UrlKt.FRAGMENT_ENCODE_SET, "(D)I", "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class UIntKt {
    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int toUInt(byte b2) {
        return UInt.m3182constructorimpl(b2);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int toUInt(short s) {
        return UInt.m3182constructorimpl(s);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int toUInt(int i) {
        return UInt.m3182constructorimpl(i);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int toUInt(long j) {
        return UInt.m3182constructorimpl((int) j);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int toUInt(float f) {
        return UnsignedKt.doubleToUInt(f);
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    private static final int toUInt(double d) {
        return UnsignedKt.doubleToUInt(d);
    }
}
