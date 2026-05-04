package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zzok extends zzoi {
    zzok() {
    }

    @Override // com.google.android.gms.internal.measurement.zzoi
    final /* bridge */ /* synthetic */ Object zza(Object obj) {
        zzmf zzmfVar = (zzmf) obj;
        zzoj zzojVar = zzmfVar.zzc;
        if (zzojVar != zzoj.zza()) {
            return zzojVar;
        }
        zzoj zzojVarZzb = zzoj.zzb();
        zzmfVar.zzc = zzojVarZzb;
        return zzojVarZzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzoi
    final void zzb(Object obj) {
        ((zzmf) obj).zzc.zzd();
    }
}
