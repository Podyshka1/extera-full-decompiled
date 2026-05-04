package com.google.android.gms.internal.cast;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzfy extends zzfq {
    final /* synthetic */ zzfz zza;

    zzfy(zzfz zzfzVar) {
        this.zza = zzfzVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzez.zza(i, this.zza.zzc, "index");
        zzfz zzfzVar = this.zza;
        int i2 = i + i;
        Object obj = zzfzVar.zzb[i2];
        obj.getClass();
        Object obj2 = zzfzVar.zzb[i2 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }
}
