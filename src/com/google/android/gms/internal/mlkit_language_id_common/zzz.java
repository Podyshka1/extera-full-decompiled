package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzz extends zzu {
    final /* synthetic */ zzaa zza;

    zzz(zzaa zzaaVar) {
        this.zza = zzaaVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzk.zza(i, this.zza.zzc, "index");
        zzaa zzaaVar = this.zza;
        int i2 = i + i;
        Object obj = zzaaVar.zzb[i2];
        obj.getClass();
        Object obj2 = zzaaVar.zzb[i2 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }
}
