package com.google.android.gms.internal.fido;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzgo extends zzgq {
    final /* synthetic */ zzgx zza;
    private int zzb = 0;
    private final int zzc;

    public zzgo(zzgx zzgxVar) {
        this.zza = zzgxVar;
        this.zzc = zzgxVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.fido.zzgs
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        Utils$$ExternalSyntheticBUOutline0.m1121m();
        return (byte) 0;
    }
}
