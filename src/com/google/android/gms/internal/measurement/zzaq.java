package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Objects;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzaq implements Iterator {
    final /* synthetic */ zzas zza;
    private int zzb;

    public zzaq(zzas zzasVar) {
        Objects.requireNonNull(zzasVar);
        this.zza = zzasVar;
        this.zzb = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zza.zzb().length();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        String strZzb = this.zza.zzb();
        int i = this.zzb;
        if (i < strZzb.length()) {
            this.zzb = i + 1;
            return new zzas(String.valueOf(i));
        }
        Utils$$ExternalSyntheticBUOutline0.m978m();
        return null;
    }
}
