package com.google.android.gms.internal.play_billing;

import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
final class zzid implements zzik {
    private final zzik[] zza;

    public zzid(zzik... zzikVarArr) {
        this.zza = zzikVarArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzik
    public final zzij zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzik zzikVar = this.zza[i];
            if (zzikVar.zzc(cls)) {
                return zzikVar.zzb(cls);
            }
        }
        ByteString$$ExternalSyntheticBUOutline0.m838m("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzik
    public final boolean zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
