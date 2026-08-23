package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzar implements Iterator {
    final /* synthetic */ zzas zza;
    private int zzb;

    zzar(zzas zzasVar) {
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
        zzas zzasVar = this.zza;
        String strZzb = zzasVar.zzb();
        int i = this.zzb;
        if (i >= strZzb.length()) {
            throw new NoSuchElementException();
        }
        this.zzb = i + 1;
        return new zzas(String.valueOf(zzasVar.zzb().charAt(i)));
    }
}
