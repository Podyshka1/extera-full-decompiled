package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzik extends zzhz {
    final transient Object zza;

    public zzik(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzhz, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzia(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String string = this.zza.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2);
        sb.append("[");
        sb.append(string);
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.cast.zzhz, com.google.android.gms.internal.cast.zzhr
    public final zzhv zze() {
        int i = zzhv.$r8$clinit;
        Object[] objArr = {this.zza};
        zzib.zza(objArr, 1);
        return zzhv.zzk(objArr, 1);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int zzg(Object[] objArr, int i) {
        objArr[0] = this.zza;
        return 1;
    }
}
