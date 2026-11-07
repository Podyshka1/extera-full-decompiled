package com.google.android.gms.internal.cast;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzzq extends zzxa implements RandomAccess {
    private static final Object[] zza;
    private static final zzzq zzb;
    private Object[] zzc;
    private int zzd;

    static {
        Object[] objArr = new Object[0];
        zza = objArr;
        zzb = new zzzq(objArr, 0, false);
    }

    public static zzzq zzd() {
        return zzb;
    }

    private static int zzg(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    private final void zzh(int i) {
        if (i < 0 || i >= this.zzd) {
            IntList$$ExternalSyntheticBUOutline0.m228m(zzi(i));
        }
    }

    private final String zzi(int i) {
        return zzxd.zza(this.zzd, i, (byte) 13, "Index:", ", Size:");
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        zzR();
        if (i < 0 || i > (i2 = this.zzd)) {
            IntList$$ExternalSyntheticBUOutline0.m228m(zzi(i));
            return;
        }
        int i3 = i + 1;
        Object[] objArr = this.zzc;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[zzg(length)];
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

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        zzR();
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
        zzR();
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

    public final void zze(int i) {
        int length = this.zzc.length;
        if (i <= length) {
            return;
        }
        if (length == 0) {
            this.zzc = new Object[Math.max(i, 10)];
            return;
        }
        while (length < i) {
            length = zzg(length);
        }
        this.zzc = Arrays.copyOf(this.zzc, length);
    }

    @Override // com.google.android.gms.internal.cast.zzyl
    public final /* bridge */ /* synthetic */ zzyl zzf(int i) {
        if (i >= this.zzd) {
            return new zzzq(i == 0 ? zza : Arrays.copyOf(this.zzc, i), this.zzd, true);
        }
        Segment$$ExternalSyntheticBUOutline0.m924m();
        return null;
    }

    private zzzq(Object[] objArr, int i, boolean z) {
        super(z);
        this.zzc = objArr;
        this.zzd = i;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zzR();
        int i = this.zzd;
        int length = this.zzc.length;
        if (i == length) {
            this.zzc = Arrays.copyOf(this.zzc, zzg(length));
        }
        Object[] objArr = this.zzc;
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
