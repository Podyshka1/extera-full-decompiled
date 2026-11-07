package com.google.android.recaptcha.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzpg extends AbstractSet {
    final /* synthetic */ zzpj zza;

    public /* synthetic */ zzpg(zzpj zzpjVar, byte[] bArr) {
        Objects.requireNonNull(zzpjVar);
        this.zza = zzpjVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.zza.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzpj zzpjVar = this.zza;
        Map mapZzb = zzpjVar.zzb();
        return mapZzb != null ? mapZzb.keySet().iterator() : new zzpb(zzpjVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        zzpj zzpjVar = this.zza;
        Map mapZzb = zzpjVar.zzb();
        return mapZzb != null ? mapZzb.keySet().remove(obj) : zzpjVar.zzi(obj) != zzpj.zzd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
