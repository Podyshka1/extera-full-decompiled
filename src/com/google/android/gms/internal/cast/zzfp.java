package com.google.android.gms.internal.cast;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzfp extends zzfq {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzfq zzc;

    zzfp(zzfq zzfqVar, int i, int i2) {
        this.zzc = zzfqVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzez.zza(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.cast.zzfq, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override // com.google.android.gms.internal.cast.zzfq
    /* JADX INFO: renamed from: zzh */
    public final zzfq subList(int i, int i2) {
        zzez.zzd(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
