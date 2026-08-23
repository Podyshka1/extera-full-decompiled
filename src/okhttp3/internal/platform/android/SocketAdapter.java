package okhttp3.internal.platform.android;

import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Protocol;

/* JADX INFO: loaded from: classes.dex */
public interface SocketAdapter {
    void configureTlsExtensions(SSLSocket sSLSocket, String str, List<? extends Protocol> list);

    String getSelectedProtocol(SSLSocket sSLSocket);

    boolean isSupported();

    boolean matchesSocket(SSLSocket sSLSocket);

    boolean matchesSocketFactory(SSLSocketFactory sSLSocketFactory);

    X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory);

    /* JADX INFO: renamed from: okhttp3.internal.platform.android.SocketAdapter$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    public abstract /* synthetic */ class CC {
        public static boolean $default$matchesSocketFactory(SocketAdapter socketAdapter, SSLSocketFactory sslSocketFactory) {
            Intrinsics.checkNotNullParameter(sslSocketFactory, "sslSocketFactory");
            return false;
        }

        public static X509TrustManager $default$trustManager(SocketAdapter socketAdapter, SSLSocketFactory sslSocketFactory) {
            Intrinsics.checkNotNullParameter(sslSocketFactory, "sslSocketFactory");
            return null;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static X509TrustManager trustManager(SocketAdapter socketAdapter, SSLSocketFactory sslSocketFactory) {
            Intrinsics.checkNotNullParameter(sslSocketFactory, "sslSocketFactory");
            return CC.$default$trustManager(socketAdapter, sslSocketFactory);
        }

        @Deprecated
        public static boolean matchesSocketFactory(SocketAdapter socketAdapter, SSLSocketFactory sslSocketFactory) {
            Intrinsics.checkNotNullParameter(sslSocketFactory, "sslSocketFactory");
            return CC.$default$matchesSocketFactory(socketAdapter, sslSocketFactory);
        }
    }
}
