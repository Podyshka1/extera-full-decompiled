package com.google.android.gms.internal.vision;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzhs extends zzhu {
    private int zza = 0;
    private final int zzb;
    private final /* synthetic */ zzht zzc;

    public zzhs(zzht zzhtVar) {
        this.zzc = zzhtVar;
        this.zzb = zzhtVar.zza();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }

    @Override // com.google.android.gms.internal.vision.zzhy
    public final byte zza() {
        int i = this.zza;
        if (i >= this.zzb) {
            Utils$$ExternalSyntheticBUOutline0.m1121m();
            return (byte) 0;
        }
        this.zza = i + 1;
        return this.zzc.zzb(i);
    }
}
