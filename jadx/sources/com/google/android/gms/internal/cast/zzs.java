package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzs implements com.google.android.gms.cast.framework.zzs {
    final /* synthetic */ zzv zza;

    /* synthetic */ zzs(zzv zzvVar, zzr zzrVar) {
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.cast.framework.zzs
    public final void zza() {
        zzv.zzf(this.zza, new zzz(new zzy(3)));
    }

    @Override // com.google.android.gms.cast.framework.zzs
    public final void zzb(String str, long j, int i, long j2, long j3) {
        zzx zzxVarZzg = this.zza.zzg();
        zzp zzpVar = new zzp(str);
        zzpVar.zzf(j);
        zzpVar.zzh(i);
        zzpVar.zzg(j2);
        zzpVar.zze(j3);
        zzxVarZzg.zzb(new zzq(zzpVar));
    }
}
