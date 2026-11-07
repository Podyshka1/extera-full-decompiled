package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class zzacr implements zzst {
    private final zzvm zza;

    public zzacr(zzvm zzvmVar, zzum zzumVar) {
        this.zza = zzvmVar;
    }

    @Override // com.google.android.recaptcha.internal.zzst
    public final void zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Iterator it = this.zza.zza(bArr).iterator();
        while (it.hasNext()) {
            try {
                ((zzacs) it.next()).zza.zza(bArr, bArr2);
                return;
            } catch (GeneralSecurityException unused) {
            }
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("invalid signature");
    }
}
