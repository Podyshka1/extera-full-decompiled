package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
final class zzgd extends zzge {
    final /* synthetic */ zzgk zza;
    private int zzb = 0;
    private final int zzc;

    zzgd(zzgk zzgkVar) {
        this.zza = zzgkVar;
        this.zzc = zzgkVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgg
    public final byte zza() {
        int i = this.zzb;
        if (i >= this.zzc) {
            throw new NoSuchElementException();
        }
        this.zzb = i + 1;
        return this.zza.zzb(i);
    }
}
