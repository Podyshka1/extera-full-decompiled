package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzuj extends zzul {
    /* synthetic */ zzuj(zzui zzuiVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.cast.zzul
    final void zza(Object obj, long j) {
        ((zztx) zzwj.zzf(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.cast.zzul
    final void zzb(Object obj, Object obj2, long j) {
        zztx zztxVarZzg = (zztx) zzwj.zzf(obj, j);
        zztx zztxVar = (zztx) zzwj.zzf(obj2, j);
        int size = zztxVarZzg.size();
        int size2 = zztxVar.size();
        if (size > 0 && size2 > 0) {
            if (!zztxVarZzg.zzc()) {
                zztxVarZzg = zztxVarZzg.zzg(size2 + size);
            }
            zztxVarZzg.addAll(zztxVar);
        }
        if (size > 0) {
            zztxVar = zztxVarZzg;
        }
        zzwj.zzs(obj, j, zztxVar);
    }
}
