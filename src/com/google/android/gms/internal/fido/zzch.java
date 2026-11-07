package com.google.android.gms.internal.fido;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzch extends zzcc {
    final /* synthetic */ zzci zza;

    public zzch(zzci zzciVar) {
        this.zza = zzciVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return new AbstractMap.SimpleImmutableEntry(this.zza.zza.zzd.zzd.get(i), this.zza.zza.zze.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zza.size();
    }
}
