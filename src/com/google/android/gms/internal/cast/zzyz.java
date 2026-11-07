package com.google.android.gms.internal.cast;

import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzyz implements zzzg {
    private final zzzg[] zza;

    public zzyz(zzzg... zzzgVarArr) {
        this.zza = zzzgVarArr;
    }

    @Override // com.google.android.gms.internal.cast.zzzg
    public final boolean zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.zzzg
    public final zzzf zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzzg zzzgVar = this.zza[i];
            if (zzzgVar.zzb(cls)) {
                return zzzgVar.zzc(cls);
            }
        }
        ByteString$$ExternalSyntheticBUOutline0.m920m("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }
}
