package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzgd extends zzfu {
    static final zzgd zza;
    private static final Object[] zzd;
    final transient Object[] zzb;
    final transient Object[] zzc;
    private final transient int zze;
    private final transient int zzf;
    private final transient int zzg;

    static {
        Object[] objArr = new Object[0];
        zzd = objArr;
        zza = new zzgd(objArr, 0, objArr, 0, 0);
    }

    zzgd(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.zzb = objArr;
        this.zze = i;
        this.zzc = objArr2;
        this.zzf = i2;
        this.zzg = i3;
    }

    @Override // com.google.android.gms.internal.cast.zzfm, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.zzc;
            if (objArr.length != 0) {
                int iZza = zzfj.zza(obj.hashCode());
                while (true) {
                    int i = iZza & this.zzf;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iZza = i + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.zzfu, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zze;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzg);
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zzb() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.zzfm
    final Object[] zzg() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.cast.zzfu
    final zzfq zzi() {
        return zzfq.zzi(this.zzb, this.zzg);
    }

    @Override // com.google.android.gms.internal.cast.zzfu
    final boolean zzl() {
        return true;
    }
}
