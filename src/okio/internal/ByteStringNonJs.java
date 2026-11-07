package okio.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: okio.internal.-ByteStringNonJs, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, "c", _UrlKt.FRAGMENT_ENCODE_SET, "decodeHexDigit", "(C)I", "okio"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "-ByteStringNonJs")
@SourceDebugExtension({"SMAP\nByteStringNonJs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteStringNonJs.kt\nokio/internal/-ByteStringNonJs\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"})
public abstract class ByteStringNonJs {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int decodeHexDigit(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' <= c2 && c2 < 'G') {
            return c2 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c2);
    }
}
