package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzwb extends zzvz {
    zzwb() {
    }

    @Override // com.google.android.gms.internal.cast.zzvz
    final /* synthetic */ int zza(Object obj) {
        return ((zzwa) obj).zza();
    }

    @Override // com.google.android.gms.internal.cast.zzvz
    final /* synthetic */ int zzb(Object obj) {
        return ((zzwa) obj).zzb();
    }

    @Override // com.google.android.gms.internal.cast.zzvz
    final /* synthetic */ Object zzc(Object obj) {
        return ((zztp) obj).zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzvz
    final /* bridge */ /* synthetic */ Object zzd(Object obj, Object obj2) {
        if (!zzwa.zzc().equals(obj2)) {
            if (zzwa.zzc().equals(obj)) {
                return zzwa.zze((zzwa) obj, (zzwa) obj2);
            }
            ((zzwa) obj).zzd((zzwa) obj2);
        }
        return obj;
    }

    @Override // com.google.android.gms.internal.cast.zzvz
    final void zze(Object obj) {
        ((zztp) obj).zzc.zzf();
    }

    @Override // com.google.android.gms.internal.cast.zzvz
    final /* synthetic */ void zzf(Object obj, Object obj2) {
        ((zztp) obj).zzc = (zzwa) obj2;
    }

    @Override // com.google.android.gms.internal.cast.zzvz
    final /* synthetic */ void zzg(Object obj, zzwq zzwqVar) {
    }
}
