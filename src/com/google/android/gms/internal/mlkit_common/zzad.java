package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
final class zzad extends zzv {
    private final zzaf zza;

    public zzad(zzaf zzafVar, int i) {
        super(zzafVar.size(), i);
        this.zza = zzafVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzv
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}
