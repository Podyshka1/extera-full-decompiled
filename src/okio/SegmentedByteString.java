package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import org.mvel2.MVEL;

/* JADX INFO: renamed from: okio.-SegmentedByteString, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u001a'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0013\u0010\b\u001a\u00020\u0007*\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\b\u001a\u00020\n*\u00020\nH\u0000¢\u0006\u0004\b\b\u0010\u000b\u001a\u0013\u0010\b\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\b\u0010\f\u001a7\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0013\u0010\u0017\u001a\u00020\u0016*\u00020\u0015H\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0013\u0010\u0017\u001a\u00020\u0016*\u00020\nH\u0000¢\u0006\u0004\b\u0017\u0010\u0019\u001a\u0017\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001b\u0010\u001c\u001a\u00020\n*\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\nH\u0000¢\u0006\u0004\b\u001c\u0010 \u001a\u001b\u0010\u001c\u001a\u00020\n*\u00020\r2\u0006\u0010!\u001a\u00020\nH\u0000¢\u0006\u0004\b\u001c\u0010\"\"\u001a\u0010#\u001a\u00020\u001a8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u001a\u0010'\u001a\u00020\n8\u0000X\u0080D¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*¨\u0006+"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, "size", "offset", "byteCount", _UrlKt.FRAGMENT_ENCODE_SET, "checkOffsetAndCount", "(JJJ)V", _UrlKt.FRAGMENT_ENCODE_SET, "reverseBytes", "(S)S", _UrlKt.FRAGMENT_ENCODE_SET, "(I)I", "(J)J", _UrlKt.FRAGMENT_ENCODE_SET, "a", "aOffset", "b", "bOffset", _UrlKt.FRAGMENT_ENCODE_SET, "arrayRangeEquals", "([BI[BII)Z", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "toHexString", "(B)Ljava/lang/String;", "(I)Ljava/lang/String;", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "resolveDefaultParameter", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "Lokio/ByteString;", "position", "(Lokio/ByteString;I)I", "sizeParam", "([BI)I", "DEFAULT__new_UnsafeCursor", "Lokio/Buffer$UnsafeCursor;", "getDEFAULT__new_UnsafeCursor", "()Lokio/Buffer$UnsafeCursor;", "DEFAULT__ByteString_size", "I", "getDEFAULT__ByteString_size", "()I", "okio"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "-SegmentedByteString")
@SourceDebugExtension({"SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,185:1\n67#1:186\n73#1:187\n*S KotlinDebug\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n105#1:186\n106#1:187\n*E\n"})
public abstract class SegmentedByteString {
    private static final Buffer.UnsafeCursor DEFAULT__new_UnsafeCursor = new Buffer.UnsafeCursor();
    private static final int DEFAULT__ByteString_size = -1234567890;

    public static final int reverseBytes(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static final long reverseBytes(long j) {
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> 40) | ((280375465082880L & j) >>> 24) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << 24) | ((65280 & j) << 40);
    }

    public static final short reverseBytes(short s) {
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    public static final boolean arrayRangeEquals(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final String toHexString(byte b2) {
        return StringsKt.concatToString(new char[]{okio.internal.ByteString.getHEX_DIGIT_CHARS()[(b2 >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[b2 & 15]});
    }

    public static final String toHexString(int i) {
        if (i == 0) {
            return MVEL.VERSION_SUB;
        }
        int i2 = 0;
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 28) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 24) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 20) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 16) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 12) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 8) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[i & 15]};
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        return StringsKt.concatToString(cArr, i2, 8);
    }

    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return DEFAULT__new_UnsafeCursor;
    }

    public static final Buffer.UnsafeCursor resolveDefaultParameter(Buffer.UnsafeCursor unsafeCursor) {
        return unsafeCursor == DEFAULT__new_UnsafeCursor ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int getDEFAULT__ByteString_size() {
        return DEFAULT__ByteString_size;
    }

    public static final int resolveDefaultParameter(ByteString byteString, int i) {
        return i == DEFAULT__ByteString_size ? byteString.size() : i;
    }

    public static final int resolveDefaultParameter(byte[] bArr, int i) {
        return i == DEFAULT__ByteString_size ? bArr.length : i;
    }
}
