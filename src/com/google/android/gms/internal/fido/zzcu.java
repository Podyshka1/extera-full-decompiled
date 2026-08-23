package com.google.android.gms.internal.fido;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzcu extends zzcf {
    static final zzcu zza;
    private static final Object[] zzd;
    final transient Object[] zzb;
    final transient Object[] zzc;
    private final transient int zze;
    private final transient int zzf;
    private final transient int zzg;

    static {
        Object[] objArr = new Object[0];
        zzd = objArr;
        zza = new zzcu(objArr, 0, objArr, 0, 0);
    }

    public zzcu(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.zzb = objArr;
        this.zze = i;
        this.zzc = objArr2;
        this.zzf = i2;
        this.zzg = i3;
    }

    @Override // com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (obj != null) {
            Object[] objArr = this.zzc;
            if (objArr.length != 0) {
                int iZza = zzbx.zza(obj.hashCode());
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

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zze;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzi().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzg);
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int zzb() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.fido.zzcf, com.google.android.gms.internal.fido.zzby
    public final zzdc zzd() {
        return zzi().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final boolean zzg() {
        return true;
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc zzj() {
        return zzcc.zzh(this.zzb, this.zzg);
    }
}
