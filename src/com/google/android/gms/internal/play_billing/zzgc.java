package com.google.android.gms.internal.play_billing;

import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzgc implements zzgj {
    private final zzgj[] zza;

    public zzgc(zzgj... zzgjVarArr) {
        this.zza = zzgjVarArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final zzgi zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzgj zzgjVar = this.zza[i];
            if (zzgjVar.zzc(cls)) {
                return zzgjVar.zzb(cls);
            }
        }
        ByteString$$ExternalSyntheticBUOutline0.m968m("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final boolean zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
