package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes4.dex */
final class zzdb extends zzcy {
    private zzdb() {
        super();
    }

    private static zzcn zzc(Object obj, long j) {
        return (zzcn) zzfd.zzo(obj, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcy
    final void zza(Object obj, long j) {
        zzc(obj, j).zzv();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcy
    final void zza(Object obj, Object obj2, long j) {
        zzcn zzcnVarZzc = zzc(obj, j);
        zzcn zzcnVarZzc2 = zzc(obj2, j);
        int size = zzcnVarZzc.size();
        int size2 = zzcnVarZzc2.size();
        if (size > 0 && size2 > 0) {
            if (!zzcnVarZzc.zzu()) {
                zzcnVarZzc = zzcnVarZzc.zzi(size2 + size);
            }
            zzcnVarZzc.addAll(zzcnVarZzc2);
        }
        if (size > 0) {
            zzcnVarZzc2 = zzcnVarZzc;
        }
        zzfd.zza(obj, j, zzcnVarZzc2);
    }
}
