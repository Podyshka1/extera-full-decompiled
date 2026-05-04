package com.google.android.gms.internal.cast;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
final class zzfv extends zzgg {
    boolean zza;
    final /* synthetic */ Object zzb;

    zzfv(Object obj) {
        this.zzb = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.zza;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.zza) {
            throw new NoSuchElementException();
        }
        this.zza = true;
        return this.zzb;
    }
}
