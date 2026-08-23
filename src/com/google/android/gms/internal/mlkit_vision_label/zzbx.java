package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzbx extends zzbh {
    private final transient zzbg zza;
    private final transient zzbe zzb;

    public zzbx(zzbg zzbgVar, zzbe zzbeVar) {
        this.zza = zzbgVar;
        this.zzb = zzbeVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzaz, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return this.zzb.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzaz
    public final int zza(Object[] objArr, int i) {
        return this.zzb.zza(objArr, 0);
    }
}
