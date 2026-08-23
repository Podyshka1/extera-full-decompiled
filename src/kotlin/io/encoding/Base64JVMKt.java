package kotlin.io.encoding;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0081\u0088\u0004\u001a&\u0010\b\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0081\u0088\u0004\u001a6\u0010\n\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0081\u0088\u0004\u001a&\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0081\u0088\u0004¨\u0006\u000e"}, d2 = {"platformCharsToBytes", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/io/encoding/Base64;", "source", _UrlKt.FRAGMENT_ENCODE_SET, "startIndex", _UrlKt.FRAGMENT_ENCODE_SET, "endIndex", "platformEncodeToString", _UrlKt.FRAGMENT_ENCODE_SET, "platformEncodeIntoByteArray", "destination", "destinationOffset", "platformEncodeToByteArray", "kotlin-stdlib"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
public final class Base64JVMKt {
    @SinceKotlin(version = "1.8")
    @InlineOnly
    private static final byte[] platformCharsToBytes(Base64 base64, CharSequence charSequence, int i, int i2) {
        if (charSequence instanceof String) {
            String str = (String) charSequence;
            base64.checkSourceBounds$kotlin_stdlib(str.length(), i, i2);
            return str.substring(i, i2).getBytes(Charsets.ISO_8859_1);
        }
        return base64.charsToBytesImpl$kotlin_stdlib(charSequence, i, i2);
    }

    @SinceKotlin(version = "1.8")
    @InlineOnly
    private static final String platformEncodeToString(Base64 base64, byte[] bArr, int i, int i2) {
        return new String(base64.encodeToByteArrayImpl$kotlin_stdlib(bArr, i, i2), Charsets.ISO_8859_1);
    }

    @SinceKotlin(version = "1.8")
    @InlineOnly
    private static final int platformEncodeIntoByteArray(Base64 base64, byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        return base64.encodeIntoByteArrayImpl$kotlin_stdlib(bArr, bArr2, i, i2, i3);
    }

    @SinceKotlin(version = "1.8")
    @InlineOnly
    private static final byte[] platformEncodeToByteArray(Base64 base64, byte[] bArr, int i, int i2) {
        return base64.encodeToByteArrayImpl$kotlin_stdlib(bArr, i, i2);
    }
}
