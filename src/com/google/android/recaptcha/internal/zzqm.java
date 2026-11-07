package com.google.android.recaptcha.internal;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzqm extends zzpt {
    final /* synthetic */ zzqn zza;

    public zzqm(zzqn zzqnVar) {
        Objects.requireNonNull(zzqnVar);
        this.zza = zzqnVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzqn zzqnVar = this.zza;
        zzoq.zze(i, zzqnVar.zzo(), "index");
        int i2 = i + i;
        Object obj = zzqnVar.zzn()[i2];
        Objects.requireNonNull(obj);
        Object obj2 = zzqnVar.zzn()[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzo();
    }
}
