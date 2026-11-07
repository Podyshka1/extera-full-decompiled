package com.google.android.gms.internal.cast;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzhu extends zzhv {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzhv zzc;

    public zzhu(zzhv zzhvVar, int i, int i2) {
        Objects.requireNonNull(zzhvVar);
        this.zzc = zzhvVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzhd.zzb(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.cast.zzhv, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int zzd() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.cast.zzhv
    /* JADX INFO: renamed from: zzh */
    public final zzhv subList(int i, int i2) {
        zzhd.zzd(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
