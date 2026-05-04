package com.google.android.gms.internal.mlkit_vision_label;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzbv extends zzbe {
    final /* synthetic */ zzbw zza;

    zzbv(zzbw zzbwVar) {
        this.zza = zzbwVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzs.zza(i, this.zza.zzc, "index");
        zzbw zzbwVar = this.zza;
        int i2 = i + i;
        Object obj = zzbwVar.zzb[i2];
        obj.getClass();
        Object obj2 = zzbwVar.zzb[i2 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }
}
