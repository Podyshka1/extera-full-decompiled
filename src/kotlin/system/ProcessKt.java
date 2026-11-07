package kotlin.system;

import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u0088\u0004¨\u0006\u0004"}, d2 = {"exitProcess", _UrlKt.FRAGMENT_ENCODE_SET, "status", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
@JvmName(name = "ProcessKt")
public final class ProcessKt {
    @InlineOnly
    private static final Void exitProcess(int i) {
        System.exit(i);
        throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
    }
}
