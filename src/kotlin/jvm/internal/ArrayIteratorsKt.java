package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.collections.BooleanIterator;
import kotlin.collections.ByteIterator;
import kotlin.collections.CharIterator;
import kotlin.collections.DoubleIterator;
import kotlin.collections.FloatIterator;
import kotlin.collections.IntIterator;
import kotlin.collections.LongIterator;
import kotlin.collections.ShortIterator;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0010\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0002\u0010\u0018\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\u0080\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0005H\u0086\u0080\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0007H\u0086\u0080\u0004\u001a\u0012\u0010\u0000\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\tH\u0086\u0080\u0004\u001a\u0012\u0010\u0000\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u000bH\u0086\u0080\u0004\u001a\u0012\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\rH\u0086\u0080\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000fH\u0086\u0080\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0011H\u0086\u0080\u0004¨\u0006\u0012"}, d2 = {"iterator", "Lkotlin/collections/ByteIterator;", "array", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/CharIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/ShortIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/IntIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/LongIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/FloatIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/DoubleIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/collections/BooleanIterator;", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
public final class ArrayIteratorsKt {
    public static final ByteIterator iterator(byte[] bArr) {
        return new ArrayByteIterator(bArr);
    }

    public static final CharIterator iterator(char[] cArr) {
        return new ArrayCharIterator(cArr);
    }

    public static final ShortIterator iterator(short[] sArr) {
        return new ArrayShortIterator(sArr);
    }

    public static final IntIterator iterator(int[] iArr) {
        return new ArrayIntIterator(iArr);
    }

    public static final LongIterator iterator(long[] jArr) {
        return new ArrayLongIterator(jArr);
    }

    public static final FloatIterator iterator(float[] fArr) {
        return new ArrayFloatIterator(fArr);
    }

    public static final DoubleIterator iterator(double[] dArr) {
        return new ArrayDoubleIterator(dArr);
    }

    public static final BooleanIterator iterator(boolean[] zArr) {
        return new ArrayBooleanIterator(zArr);
    }
}
