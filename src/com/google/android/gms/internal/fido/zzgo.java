package com.google.android.gms.internal.fido;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
final class zzgo extends zzgq {
    final /* synthetic */ zzgx zza;
    private int zzb = 0;
    private final int zzc;

    zzgo(zzgx zzgxVar) {
        this.zza = zzgxVar;
        this.zzc = zzgxVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.fido.zzgs
    public final byte zza() {
        int i = this.zzb;
        if (i >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i + 1;
        return this.zza.zzb(i);
    }
}
