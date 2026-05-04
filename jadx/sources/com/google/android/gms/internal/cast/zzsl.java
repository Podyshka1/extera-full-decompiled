package com.google.android.gms.internal.cast;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
final class zzsl extends zzsn {
    final /* synthetic */ zzsu zza;
    private int zzb = 0;
    private final int zzc;

    zzsl(zzsu zzsuVar) {
        this.zza = zzsuVar;
        this.zzc = zzsuVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzsp
    public final byte zza() {
        int i = this.zzb;
        if (i >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i + 1;
        return this.zza.zzb(i);
    }
}
