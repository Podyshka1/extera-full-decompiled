package com.google.android.gms.internal.mlkit_genai_prompt;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class zzaye extends zzavp implements RandomAccess {
    private static final Object[] zza;
    private static final zzaye zzb;
    private Object[] zzc;
    private int zzd;

    static {
        Object[] objArr = new Object[0];
        zza = objArr;
        zzb = new zzaye(objArr, 0, false);
    }

    public static zzaye zzd() {
        return zzb;
    }

    private static int zze(int i) {
        return Math.max(((i * 3) / 2) + 1, 10);
    }

    private final void zzg(int i) {
        if (i < 0 || i >= this.zzd) {
            IntList$$ExternalSyntheticBUOutline0.m228m(zzh(i));
        }
    }

    private final String zzh(int i) {
        return zzavr.zza(this.zzd, i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        zzV();
        if (i < 0 || i > (i2 = this.zzd)) {
            IntList$$ExternalSyntheticBUOutline0.m228m(zzh(i));
            return;
        }
        int i3 = i + 1;
        Object[] objArr = this.zzc;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[zze(length)];
            System.arraycopy(this.zzc, 0, objArr2, 0, i);
            System.arraycopy(this.zzc, i, objArr2, i3, this.zzd - i);
            this.zzc = objArr2;
        }
        this.zzc[i] = obj;
        this.zzd++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzavp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int i = this.zzd;
        if (i != list.size()) {
            return false;
        }
        if (!(obj instanceof zzaye)) {
            for (int i2 = 0; i2 < i; i2++) {
                if (!this.zzc[i2].equals(list.get(i2))) {
                    return false;
                }
            }
            return true;
        }
        zzaye zzayeVar = (zzaye) obj;
        for (int i3 = 0; i3 < i; i3++) {
            if (!this.zzc[i3].equals(zzayeVar.zzc[i3])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        zzg(i);
        return this.zzc[i];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = this.zzd;
        int iHashCode = 1;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode = (iHashCode * 31) + this.zzc[i2].hashCode();
        }
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzavp, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        zzV();
        zzg(i);
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
        zzV();
        zzg(i);
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

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaxh
    public final /* bridge */ /* synthetic */ zzaxh zzf(int i) {
        if (i >= this.zzd) {
            return new zzaye(i == 0 ? zza : Arrays.copyOf(this.zzc, i), this.zzd, true);
        }
        Segment$$ExternalSyntheticBUOutline0.m924m();
        return null;
    }

    private zzaye(Object[] objArr, int i, boolean z) {
        super(z);
        this.zzc = objArr;
        this.zzd = i;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        zzV();
        int i = this.zzd;
        int length = this.zzc.length;
        if (i == length) {
            this.zzc = Arrays.copyOf(this.zzc, zze(length));
        }
        Object[] objArr = this.zzc;
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
