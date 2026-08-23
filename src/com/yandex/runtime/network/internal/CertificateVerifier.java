package com.yandex.runtime.network.internal;

import android.net.http.X509TrustManagerExtensions;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class CertificateVerifier {
    public static boolean verify(byte[][] bArr) {
        X509TrustManager trustManager;
        X509Certificate[] x509CertificateArrDecodeChain = decodeChain(bArr);
        if (x509CertificateArrDecodeChain == null || (trustManager = getTrustManager()) == null) {
            return false;
        }
        try {
            new X509TrustManagerExtensions(trustManager).checkServerTrusted(x509CertificateArrDecodeChain, "TLS", _UrlKt.FRAGMENT_ENCODE_SET);
            return true;
        } catch (IllegalArgumentException e) {
            Log.e("yandex.maps", "IllegalArgumentException: " + e.getMessage());
            return false;
        } catch (CertificateException e2) {
            Log.e("yandex.maps", "Certificate is not valid: " + e2.getMessage());
            return false;
        }
    }

    private static X509Certificate[] decodeChain(byte[][] bArr) {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            X509Certificate[] x509CertificateArr = new X509Certificate[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                x509CertificateArr[i] = (X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArr[i]));
            }
            return x509CertificateArr;
        } catch (CertificateException unused) {
            Log.e("yandex.maps", "Could not decode certificate");
            return null;
        }
    }

    private static X509TrustManager getTrustManager() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers == null) {
                return null;
            }
            for (TrustManager trustManager : trustManagers) {
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            Log.e("yandex.maps", "X509TrustManager is missing");
            return null;
        } catch (KeyStoreException unused) {
            Log.e("yandex.maps", "Could not initialize keystore");
            return null;
        } catch (NoSuchAlgorithmException unused2) {
            Log.e("yandex.maps", "Algorithm is not supported");
            return null;
        }
    }
}
