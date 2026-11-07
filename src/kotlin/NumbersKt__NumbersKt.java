package kotlin;

import kotlin.internal.InlineOnly;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0005\n\u0002\b\u0007\n\u0002\u0010\n\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0006\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u0016\u0010\u0007\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001H\u0087\u0080\u0004\u001a\u0016\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0001H\u0087\u0080\u0004\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00020\nH\u0087\u0088\u0004\u001a\u000e\u0010\u0003\u001a\u00020\u0001*\u00020\nH\u0087\u0088\u0004\u001a\u000e\u0010\u0004\u001a\u00020\u0001*\u00020\nH\u0087\u0088\u0004\u001a\u000e\u0010\u0005\u001a\u00020\n*\u00020\nH\u0087\u0088\u0004\u001a\u000e\u0010\u0006\u001a\u00020\n*\u00020\nH\u0087\u0088\u0004\u001a\u0016\u0010\u0007\u001a\u00020\n*\u00020\n2\u0006\u0010\b\u001a\u00020\u0001H\u0087\u0080\u0004\u001a\u0016\u0010\t\u001a\u00020\n*\u00020\n2\u0006\u0010\b\u001a\u00020\u0001H\u0087\u0080\u0004¨\u0006\u000b"}, d2 = {"countOneBits", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "countLeadingZeroBits", "countTrailingZeroBits", "takeHighestOneBit", "takeLowestOneBit", "rotateLeft", "bitCount", "rotateRight", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/NumbersKt")
class NumbersKt__NumbersKt extends NumbersKt__NumbersJVMKt {
    @SinceKotlin(version = "1.6")
    public static final byte rotateLeft(byte b2, int i) {
        int i2 = i & 7;
        return (byte) (((b2 & 255) >>> (8 - i2)) | (b2 << i2));
    }

    @SinceKotlin(version = "1.6")
    public static final short rotateLeft(short s, int i) {
        int i2 = i & 15;
        return (short) (((s & 65535) >>> (16 - i2)) | (s << i2));
    }

    @SinceKotlin(version = "1.6")
    public static final byte rotateRight(byte b2, int i) {
        int i2 = i & 7;
        return (byte) (((b2 & 255) >>> i2) | (b2 << (8 - i2)));
    }

    @SinceKotlin(version = "1.6")
    public static final short rotateRight(short s, int i) {
        int i2 = i & 15;
        return (short) (((s & 65535) >>> i2) | (s << (16 - i2)));
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countOneBits(byte b2) {
        return Integer.bitCount(b2 & UByte.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countLeadingZeroBits(byte b2) {
        return Integer.numberOfLeadingZeros(b2 & UByte.MAX_VALUE) - 24;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countTrailingZeroBits(byte b2) {
        return Integer.numberOfTrailingZeros(b2 | 256);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final byte takeHighestOneBit(byte b2) {
        return (byte) Integer.highestOneBit(b2 & UByte.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final byte takeLowestOneBit(byte b2) {
        return (byte) Integer.lowestOneBit(b2);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countOneBits(short s) {
        return Integer.bitCount(s & UShort.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countLeadingZeroBits(short s) {
        return Integer.numberOfLeadingZeros(s & UShort.MAX_VALUE) - 16;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final int countTrailingZeroBits(short s) {
        return Integer.numberOfTrailingZeros(s | UShort.MIN_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final short takeHighestOneBit(short s) {
        return (short) Integer.highestOneBit(s & UShort.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final short takeLowestOneBit(short s) {
        return (short) Integer.lowestOneBit(s);
    }
}
