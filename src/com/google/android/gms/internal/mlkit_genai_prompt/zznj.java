package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class zznj extends zzms {
    private final transient zzmo zza;
    private final transient zzml zzb;

    public zznj(zzmo zzmoVar, zzml zzmlVar) {
        this.zza = zzmoVar;
        this.zzb = zzmlVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg, java.util.AbstractCollection, java.util.Collection
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

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms
    public final zzns zza() {
        return this.zzb.listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms, com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final zzml zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final int zzg(Object[] objArr, int i) {
        return this.zzb.zzg(objArr, 0);
    }
}
