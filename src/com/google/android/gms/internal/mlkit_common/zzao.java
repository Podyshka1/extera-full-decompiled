package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzao extends zzaj {
    private final transient zzai zza;
    private final transient zzaf zzb;

    public zzao(zzai zzaiVar, zzaf zzafVar) {
        this.zza = zzaiVar;
        this.zzb = zzafVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab, java.util.AbstractCollection, java.util.Collection
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

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int zza(Object[] objArr, int i) {
        return this.zzb.zza(objArr, 0);
    }
}
