package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class zznv extends zzku implements RandomAccess {
    private static final Object[] zza;
    private static final zznv zzb;
    private Object[] zzc;
    private int zzd;

    static {
        Object[] objArr = new Object[0];
        zza = objArr;
        zzb = new zznv(objArr, 0, false);
    }

    public static zznv zzd() {
        return zzb;
    }

    private static int zzf(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    private final void zzh(int i) {
        if (i < 0 || i >= this.zzd) {
            throw new IndexOutOfBoundsException(zzi(i));
        }
    }

    private final String zzi(int i) {
        return zzkw.zza(this.zzd, i, (byte) 13, "Index:", ", Size:");
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        zzcF();
        if (i < 0 || i > (i2 = this.zzd)) {
            throw new IndexOutOfBoundsException(zzi(i));
        }
        int i3 = i + 1;
        Object[] objArr = this.zzc;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[zzf(length)];
            System.arraycopy(this.zzc, 0, objArr2, 0, i);
            System.arraycopy(this.zzc, i, objArr2, i3, this.zzd - i);
            this.zzc = objArr2;
        }
        this.zzc[i] = obj;
        this.zzd++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        zzh(i);
        return this.zzc[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzku, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        zzcF();
        zzh(i);
        Object[] objArr = this.zzc;
        Object obj = objArr[i];
        if (i < this.zzd - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.zzd--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        zzcF();
        zzh(i);
        Object[] objArr = this.zzc;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzd;
    }

    final void zze(int i) {
        int length = this.zzc.length;
        if (i <= length) {
            return;
        }
        if (length == 0) {
            this.zzc = new Object[Math.max(i, 10)];
            return;
        }
        while (length < i) {
            length = zzf(length);
        }
        this.zzc = Arrays.copyOf(this.zzc, length);
    }

    @Override // com.google.android.gms.internal.measurement.zzmo
    public final /* bridge */ /* synthetic */ zzmo zzg(int i) {
        if (i >= this.zzd) {
            return new zznv(i == 0 ? zza : Arrays.copyOf(this.zzc, i), this.zzd, true);
        }
        throw new IllegalArgumentException();
    }

    private zznv(Object[] objArr, int i, boolean z) {
        super(z);
        this.zzc = objArr;
        this.zzd = i;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zzcF();
        int i = this.zzd;
        int length = this.zzc.length;
        if (i == length) {
            this.zzc = Arrays.copyOf(this.zzc, zzf(length));
        }
        Object[] objArr = this.zzc;
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
