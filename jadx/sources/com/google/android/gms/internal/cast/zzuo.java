package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzuo implements zzuv {
    private final zzuv[] zza;

    zzuo(zzuv... zzuvVarArr) {
        this.zza = zzuvVarArr;
    }

    @Override // com.google.android.gms.internal.cast.zzuv
    public final zzuu zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzuv zzuvVar = this.zza[i];
            if (zzuvVar.zzc(cls)) {
                return zzuvVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.cast.zzuv
    public final boolean zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
