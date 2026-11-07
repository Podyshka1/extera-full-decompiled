package com.google.android.recaptcha.internal;

import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzpx extends zzqu {
    final Iterator zza;
    Object zzb;
    Iterator zzc;
    final /* synthetic */ zzpz zzd;

    public zzpx(zzpz zzpzVar) {
        Objects.requireNonNull(zzpzVar);
        this.zzd = zzpzVar;
        this.zza = zzpzVar.map.entrySet().zzj().listIterator(0);
        this.zzb = null;
        this.zzc = zzqf.zza;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc.hasNext() || this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (!this.zzc.hasNext()) {
            Map.Entry entry = (Map.Entry) this.zza.next();
            this.zzb = entry.getKey();
            this.zzc = ((zzpq) entry.getValue()).zza();
        }
        Object obj = this.zzb;
        Objects.requireNonNull(obj);
        return new AbstractMap.SimpleImmutableEntry(obj, this.zzc.next());
    }
}
