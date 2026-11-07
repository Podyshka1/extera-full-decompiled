package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class zzadd implements zzade {
    private final zzadn zza;

    @Override // com.google.android.recaptcha.internal.zzade
    public final Object zza(String str) throws GeneralSecurityException {
        Iterator it = zzadf.zza("GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt").iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return this.zza.zza(str, (Provider) it.next());
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
