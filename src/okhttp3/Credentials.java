package okhttp3;

import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;
import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lokhttp3/Credentials;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "basic", _UrlKt.FRAGMENT_ENCODE_SET, "username", "password", "charset", "Ljava/nio/charset/Charset;", "okhttp"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    @JvmStatic
    @JvmOverloads
    public static final String basic(String str, String str2) {
        return basic$default(str, str2, null, 4, null);
    }

    private Credentials() {
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset charset, int i, Object obj) {
        if ((i & 4) != 0) {
            charset = Charsets.ISO_8859_1;
        }
        return basic(str, str2, charset);
    }

    @JvmStatic
    @JvmOverloads
    public static final String basic(String username, String password, Charset charset) {
        return "Basic " + ByteString.INSTANCE.encodeString(username + ':' + password, charset).base64();
    }
}
