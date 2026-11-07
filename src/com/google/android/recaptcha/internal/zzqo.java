package com.google.android.recaptcha.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class zzqo extends zzqb {
    private final transient zzpw zza;
    private final transient zzpt zzb;

    public zzqo(zzpw zzpwVar, zzpt zzptVar) {
        this.zza = zzpwVar;
        this.zzb = zzptVar;
    }

    @Override // com.google.android.recaptcha.internal.zzpq, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
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

    @Override // com.google.android.recaptcha.internal.zzqb, com.google.android.recaptcha.internal.zzpq
    public final zzqu zza() {
        return this.zzb.listIterator(0);
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final int zzf(Object[] objArr, int i) {
        return this.zzb.zzf(objArr, 0);
    }
}
