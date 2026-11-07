package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzui extends zzse {
    private final zzsp zza;

    public zzui(zzsp zzspVar, zzsy zzsyVar) {
        zze(zzspVar, zzsyVar);
        this.zza = zzspVar;
    }

    private static void zze(zzsp zzspVar, zzsy zzsyVar) {
        if (zzspVar.zzd().equals(zzsn.zzb)) {
            return;
        }
        zzspVar.zzd().getClass();
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final zzsl zza() {
        zzsp zzspVar = this.zza;
        return new zzuh(zzspVar.zzb(), zzspVar.zze(), null);
    }

    @Override // com.google.android.recaptcha.internal.zzse
    public final Integer zzb() {
        return this.zza.zzf();
    }

    public final zzsp zzc(zzsy zzsyVar) {
        zzsp zzspVar = this.zza;
        zze(zzspVar, zzsyVar);
        return zzspVar;
    }

    public final zzady zzd() throws GeneralSecurityException {
        zzsp zzspVar = this.zza;
        if (zzspVar.zze().equals(zzso.zzd)) {
            return zzady.zza(new byte[0]);
        }
        if (zzspVar.zze().equals(zzso.zzb)) {
            return zzvc.zzb(zzspVar.zzf().intValue());
        }
        if (zzspVar.zze().equals(zzso.zzc) || zzspVar.zze().equals(zzso.zze)) {
            return zzvc.zza(zzspVar.zzf().intValue());
        }
        zzsj$$ExternalSyntheticBUOutline1.m480m("Unknown output prefix type");
        return null;
    }
}
