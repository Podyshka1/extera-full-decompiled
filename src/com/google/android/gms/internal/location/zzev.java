package com.google.android.gms.internal.location;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzev extends zzeu {
    static final zzeu zza = new zzev(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    public zzev(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzeo.zzb(i, this.zzc, "index");
        Object obj = this.zzb[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.location.zzer
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.location.zzeu, com.google.android.gms.internal.location.zzer
    public final int zzg(Object[] objArr, int i) {
        Object[] objArr2 = this.zzb;
        int i2 = this.zzc;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }
}
