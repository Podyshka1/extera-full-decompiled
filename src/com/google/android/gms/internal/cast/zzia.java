package com.google.android.gms.internal.cast;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzia extends zzil {
    private final Object zza;
    private boolean zzb;

    public zzia(Object obj) {
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
