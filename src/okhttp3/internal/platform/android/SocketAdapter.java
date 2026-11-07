package okhttp3.internal.platform.android;

import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import okhttp3.Protocol;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H&J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u0014À\u0006\u0003"}, d2 = {"Lokhttp3/internal/platform/android/SocketAdapter;", _UrlKt.FRAGMENT_ENCODE_SET, "isSupported", _UrlKt.FRAGMENT_ENCODE_SET, "trustManager", "Ljavax/net/ssl/X509TrustManager;", "sslSocketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "matchesSocket", "sslSocket", "Ljavax/net/ssl/SSLSocket;", "matchesSocketFactory", "configureTlsExtensions", _UrlKt.FRAGMENT_ENCODE_SET, "hostname", _UrlKt.FRAGMENT_ENCODE_SET, "protocols", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/Protocol;", "getSelectedProtocol", "okhttp"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public interface SocketAdapter {
    void configureTlsExtensions(SSLSocket sslSocket, String hostname, List<? extends Protocol> protocols);

    String getSelectedProtocol(SSLSocket sslSocket);

    boolean isSupported();

    boolean matchesSocket(SSLSocket sslSocket);

    default boolean matchesSocketFactory(SSLSocketFactory sslSocketFactory) {
        return false;
    }

    default X509TrustManager trustManager(SSLSocketFactory sslSocketFactory) {
        return null;
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final class DefaultImpls {
        @Deprecated
        public static X509TrustManager trustManager(SocketAdapter socketAdapter, SSLSocketFactory sSLSocketFactory) {
            return SocketAdapter.super.trustManager(sSLSocketFactory);
        }

        @Deprecated
        public static boolean matchesSocketFactory(SocketAdapter socketAdapter, SSLSocketFactory sSLSocketFactory) {
            return SocketAdapter.super.matchesSocketFactory(sSLSocketFactory);
        }
    }
}
