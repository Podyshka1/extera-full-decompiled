package org.webrtc;

/* JADX INFO: loaded from: classes4.dex */
public interface SSLCertificateVerifier {
    @CalledByNative
    boolean verify(byte[] bArr);
}
