package okhttp3.internal;

import java.io.EOFException;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes5.dex */
public final class IsProbablyUtf8Kt {
    public static /* synthetic */ boolean isProbablyUtf8$default(BufferedSource bufferedSource, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = Long.MAX_VALUE;
        }
        return isProbablyUtf8(bufferedSource, j);
    }

    public static final boolean isProbablyUtf8(BufferedSource bufferedSource, long j) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        try {
            BufferedSource bufferedSourcePeek = bufferedSource.peek();
            for (long j2 = 0; j2 < j; j2++) {
                if (bufferedSourcePeek.exhausted()) {
                    return true;
                }
                int utf8CodePoint = bufferedSourcePeek.readUtf8CodePoint();
                if (Character.isISOControl(utf8CodePoint) && !Character.isWhitespace(utf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
