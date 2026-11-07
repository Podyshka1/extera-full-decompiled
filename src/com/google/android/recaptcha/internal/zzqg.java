package com.google.android.recaptcha.internal;

import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzqg extends zzqu {
    private final Object zza;
    private boolean zzb;

    public zzqg(Object obj) {
        this.zza = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.zzb;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.zzb) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
        this.zzb = true;
        return this.zza;
    }
}
