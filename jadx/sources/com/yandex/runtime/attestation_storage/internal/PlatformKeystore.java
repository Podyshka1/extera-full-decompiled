package com.yandex.runtime.attestation_storage.internal;

import com.yandex.runtime.attestation.EcPublicKey;

/* JADX INFO: loaded from: classes.dex */
public interface PlatformKeystore {
    byte[] ecSign(byte[] bArr);

    void generateKey(byte[] bArr);

    byte[] getAppAttestKeyAssertion();

    String getAppAttestKeyId();

    String getApplicationId();

    EcPublicKey getEcPublicKey();

    byte[] getKeystoreProof();

    boolean hasKey();

    void removeKey();

    void requestAttestKey(byte[] bArr, long j, AttestationListener attestationListener);
}
