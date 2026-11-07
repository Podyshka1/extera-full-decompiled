package org.webrtc;

/* JADX INFO: loaded from: classes6.dex */
public interface SSLCertificateVerifier {
    @CalledByNative
    boolean verify(byte[] bArr);
}
