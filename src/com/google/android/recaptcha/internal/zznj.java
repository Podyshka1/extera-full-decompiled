package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zznj implements Function0 {
    static final /* synthetic */ zznj zza = new zznj();

    private /* synthetic */ zznj() {
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* synthetic */ Object invoke() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        return keyStore;
    }
}
