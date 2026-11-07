package org.webrtc;

/* JADX INFO: loaded from: classes8.dex */
public interface SSLCertificateVerifier {
    @CalledByNative
    boolean verify(byte[] bArr);
}
