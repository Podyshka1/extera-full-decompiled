package com.google.android.recaptcha.internal;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzpi extends AbstractCollection {
    final /* synthetic */ zzpj zza;

    public /* synthetic */ zzpi(zzpj zzpjVar, byte[] bArr) {
        Objects.requireNonNull(zzpjVar);
        this.zza = zzpjVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzpj zzpjVar = this.zza;
        Map mapZzb = zzpjVar.zzb();
        return mapZzb != null ? mapZzb.values().iterator() : new zzpd(zzpjVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.size();
    }
}
