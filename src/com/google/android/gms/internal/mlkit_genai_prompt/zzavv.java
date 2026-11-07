package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Objects;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzavv extends zzavw {
    final /* synthetic */ zzawb zza;
    private int zzb;
    private final int zzc;

    public zzavv(zzawb zzawbVar) {
        Objects.requireNonNull(zzawbVar);
        this.zza = zzawbVar;
        this.zzb = 0;
        this.zzc = zzawbVar.zzb();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzavy
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zza(i);
        }
        Utils$$ExternalSyntheticBUOutline0.m1068m();
        return (byte) 0;
    }
}
