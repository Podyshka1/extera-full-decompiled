package com.google.android.gms.internal.fido;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzci extends zzce {
    final /* synthetic */ zzcj zza;

    zzci(zzcj zzcjVar) {
        this.zza = zzcjVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzi().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzcf, com.google.android.gms.internal.fido.zzby
    public final zzdc zzd() {
        return zzi().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzce
    final zzcd zzf() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    final zzcc zzj() {
        return new zzch(this);
    }
}
