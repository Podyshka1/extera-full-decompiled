package com.google.android.recaptcha.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class zzqd extends zzqb {
    private final transient zzqe zza;

    public zzqd(zzqe zzqeVar) {
        this.zza = zzqeVar;
    }

    @Override // com.google.android.recaptcha.internal.zzpq, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            zzqe zzqeVar = this.zza;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Collection collection = (Collection) zzqeVar.zza().get(key);
            if (collection != null && collection.contains(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzpx(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size;
    }

    @Override // com.google.android.recaptcha.internal.zzqb, com.google.android.recaptcha.internal.zzpq
    public final zzqu zza() {
        return new zzpx(this.zza);
    }

    @Override // com.google.android.recaptcha.internal.zzpq
    public final boolean zze() {
        return false;
    }
}
