package com.google.android.gms.internal.fido;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzcb extends zzcc {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzcc zzc;

    zzcb(zzcc zzccVar, int i, int i2) {
        this.zzc = zzccVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzbm.zza(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    final Object[] zze() {
        return this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.fido.zzcc
    /* JADX INFO: renamed from: zzg */
    public final zzcc subList(int i, int i2) {
        zzbm.zze(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
