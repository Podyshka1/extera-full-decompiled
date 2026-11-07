package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zznh extends zzml {
    final /* synthetic */ zzni zza;

    public zznh(zzni zzniVar) {
        Objects.requireNonNull(zzniVar);
        this.zza = zzniVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzni zzniVar = this.zza;
        zzla.zzf(i, zzniVar.zzm(), "index");
        int i2 = i + i;
        Object obj = zzniVar.zzl()[i2];
        Objects.requireNonNull(obj);
        Object obj2 = zzniVar.zzl()[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final boolean zzf() {
        return true;
    }
}
