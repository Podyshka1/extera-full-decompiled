package com.google.android.recaptcha.internal;

import java.security.Provider;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class zzadb implements zzade {
    private final zzadn zza;

    @Override // com.google.android.recaptcha.internal.zzade
    public final Object zza(String str) {
        Iterator it = zzadf.zza("GmsCore_OpenSSL", "AndroidOpenSSL").iterator();
        while (it.hasNext()) {
            try {
                return this.zza.zza(str, (Provider) it.next());
            } catch (Exception unused) {
            }
        }
        return this.zza.zza(str, null);
    }
}
