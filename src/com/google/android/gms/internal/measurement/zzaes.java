package com.google.android.gms.internal.measurement;

import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzaes implements zzafa {
    private final zzafa[] zza;

    public zzaes(zzafa... zzafaVarArr) {
        this.zza = zzafaVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzafa
    public final boolean zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzafa
    public final zzaez zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzafa zzafaVar = this.zza[i];
            if (zzafaVar.zzb(cls)) {
                return zzafaVar.zzc(cls);
            }
        }
        ByteString$$ExternalSyntheticBUOutline0.m968m("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }
}
