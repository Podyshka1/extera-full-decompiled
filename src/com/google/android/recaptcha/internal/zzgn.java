package com.google.android.recaptcha.internal;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzgn extends zzgp {
    final /* synthetic */ zzgw zza;
    private int zzb = 0;
    private final int zzc;

    public zzgn(zzgw zzgwVar) {
        this.zza = zzgwVar;
        this.zzc = zzgwVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzgr
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        Utils$$ExternalSyntheticBUOutline0.m978m();
        return (byte) 0;
    }
}
