package com.yandex.runtime.attestation_storage.internal;

/* JADX INFO: loaded from: classes5.dex */
public interface AttestationListener {
    void onAttestationFailed(String str);

    void onAttestationReceived(byte[] bArr);
}
