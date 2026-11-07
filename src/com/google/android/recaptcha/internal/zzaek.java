package com.google.android.recaptcha.internal;

import java.util.Objects;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzaek extends zzael {
    final /* synthetic */ zzaer zza;
    private int zzb;
    private final int zzc;

    public zzaek(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza = zzaerVar;
        this.zzb = 0;
        this.zzc = zzaerVar.zzb();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.recaptcha.internal.zzaen
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
