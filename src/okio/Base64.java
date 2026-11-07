package okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.JvmName;
import okhttp3.internal.url._UrlKt;
import okio.ByteString;

/* JADX INFO: renamed from: okio.-Base64, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\b\f\u001a\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001d\u0010\u0005\u001a\u00020\u0000*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\"\u001a\u0010\u0007\u001a\u00020\u00018\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u001a\u0010\u000b\u001a\u00020\u00018\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\n¨\u0006\r"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "decodeBase64ToArray", "(Ljava/lang/String;)[B", "map", "encodeBase64", "([B[B)Ljava/lang/String;", "BASE64", "[B", "getBASE64", "()[B", "BASE64_URL_SAFE", "getBASE64_URL_SAFE", "okio"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "-Base64")
public abstract class Base64 {
    private static final byte[] BASE64;
    private static final byte[] BASE64_URL_SAFE;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        BASE64 = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").getData();
        BASE64_URL_SAFE = companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").getData();
    }

    public static final byte[] decodeBase64ToArray(String str) {
        int i;
        char cCharAt;
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i2 = (int) ((((long) length) * 6) / 8);
        byte[] bArr = new byte[i2];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt2 = str.charAt(i6);
            if ('A' <= cCharAt2 && cCharAt2 < '[') {
                i = cCharAt2 - 'A';
            } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                i = cCharAt2 - 'G';
            } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                i = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i = 62;
            } else if (cCharAt2 == '/' || cCharAt2 == '_') {
                i = 63;
            } else {
                if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                    return null;
                }
            }
            i4 = (i4 << 6) | i;
            i3++;
            if (i3 % 4 == 0) {
                bArr[i5] = (byte) (i4 >> 16);
                int i7 = i5 + 2;
                bArr[i5 + 1] = (byte) (i4 >> 8);
                i5 += 3;
                bArr[i7] = (byte) i4;
            }
        }
        int i8 = i3 % 4;
        if (i8 == 1) {
            return null;
        }
        if (i8 == 2) {
            bArr[i5] = (byte) ((i4 << 12) >> 16);
            i5++;
        } else if (i8 == 3) {
            int i9 = i4 << 6;
            int i10 = i5 + 1;
            bArr[i5] = (byte) (i9 >> 16);
            i5 += 2;
            bArr[i10] = (byte) (i9 >> 8);
        }
        return i5 == i2 ? bArr : Arrays.copyOf(bArr, i5);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i, Object obj) {
        if ((i & 1) != 0) {
            bArr2 = BASE64;
        }
        return encodeBase64(bArr, bArr2);
    }

    public static final String encodeBase64(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b2 = bArr[i];
            int i3 = i + 2;
            byte b3 = bArr[i + 1];
            i += 3;
            byte b4 = bArr[i3];
            bArr3[i2] = bArr2[(b2 & UByte.MAX_VALUE) >> 2];
            bArr3[i2 + 1] = bArr2[((b2 & 3) << 4) | ((b3 & UByte.MAX_VALUE) >> 4)];
            int i4 = i2 + 3;
            bArr3[i2 + 2] = bArr2[((b3 & 15) << 2) | ((b4 & UByte.MAX_VALUE) >> 6)];
            i2 += 4;
            bArr3[i4] = bArr2[b4 & 63];
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b5 = bArr[i];
            bArr3[i2] = bArr2[(b5 & UByte.MAX_VALUE) >> 2];
            bArr3[i2 + 1] = bArr2[(b5 & 3) << 4];
            bArr3[i2 + 2] = kotlin.io.encoding.Base64.padSymbol;
            bArr3[i2 + 3] = kotlin.io.encoding.Base64.padSymbol;
        } else if (length2 == 2) {
            int i5 = i + 1;
            byte b6 = bArr[i];
            byte b7 = bArr[i5];
            bArr3[i2] = bArr2[(b6 & UByte.MAX_VALUE) >> 2];
            bArr3[i2 + 1] = bArr2[((b6 & 3) << 4) | ((b7 & UByte.MAX_VALUE) >> 4)];
            bArr3[i2 + 2] = bArr2[(b7 & 15) << 2];
            bArr3[i2 + 3] = kotlin.io.encoding.Base64.padSymbol;
        }
        return _JvmPlatformKt.toUtf8String(bArr3);
    }
}
