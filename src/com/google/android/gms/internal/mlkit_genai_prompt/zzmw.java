package com.google.android.gms.internal.mlkit_genai_prompt;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzmw extends zzns {
    private final Object zza;
    private boolean zzb;

    public zzmw(Object obj) {
        this.zza = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.zzb;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.zzb) {
            Utils$$ExternalSyntheticBUOutline0.m1121m();
            return null;
        }
        this.zzb = true;
        return this.zza;
    }
}
