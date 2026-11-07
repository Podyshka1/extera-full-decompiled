package com.google.android.gms.internal.cast;

import java.util.Objects;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzxe extends zzxf {
    final /* synthetic */ zzxk zza;
    private int zzb;
    private final int zzc;

    public zzxe(zzxk zzxkVar) {
        Objects.requireNonNull(zzxkVar);
        this.zza = zzxkVar;
        this.zzb = 0;
        this.zzc = zzxkVar.zzc();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzxh
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        Utils$$ExternalSyntheticBUOutline0.m1068m();
        return (byte) 0;
    }
}
