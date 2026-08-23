package com.google.android.gms.internal.cast;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzig extends zzhv {
    private final transient Object[] zza;
    private final transient int zzb;
    private final transient int zzc;

    public zzig(Object[] objArr, int i, int i2) {
        this.zza = objArr;
        this.zzb = i;
        this.zzc = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzhd.zzb(i, this.zzc, "index");
        Object obj = this.zza[i + i + this.zzb];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final boolean zzf() {
        return true;
    }
}
