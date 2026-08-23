package com.yandex.runtime.attestation_storage.internal.internal;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.attestation_storage.internal.AttestationListener;

/* JADX INFO: loaded from: classes5.dex */
public class AttestationListenerBinding implements AttestationListener {
    private final NativeObject nativeObject;

    @Override // com.yandex.runtime.attestation_storage.internal.AttestationListener
    public native void onAttestationFailed(String str);

    @Override // com.yandex.runtime.attestation_storage.internal.AttestationListener
    public native void onAttestationReceived(byte[] bArr);

    public AttestationListenerBinding(NativeObject nativeObject) {
        this.nativeObject = nativeObject;
    }
}
