package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzsw implements zzsq {
    public /* synthetic */ zzsw(byte[] bArr) {
    }

    @Override // com.google.android.recaptcha.internal.zzsq
    public final zzse zza(zzsp zzspVar, zzsy zzsyVar) {
        zzvb zzvbVarZza = zzvb.zza();
        return !zzvbVarZza.zzf(zzspVar) ? new zzui(zzspVar, zzsyVar) : zzvbVarZza.zzg(zzspVar, zzsyVar);
    }

    @Override // com.google.android.recaptcha.internal.zzsq
    public final zzsp zzb(zzse zzseVar, zzsy zzsyVar) {
        return zzvb.zza().zzh(zzseVar, zzsyVar);
    }
}
