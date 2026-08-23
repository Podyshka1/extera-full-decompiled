package org.webrtc;

/* JADX INFO: loaded from: classes7.dex */
public interface SSLCertificateVerifier {
    @CalledByNative
    boolean verify(byte[] bArr);
}
