package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class zzni extends zzms {
    private final transient zzmo zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzni(zzmo zzmoVar, Object[] objArr, int i, int i2) {
        this.zza = zzmoVar;
        this.zzb = objArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zza.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zze().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms
    public final zzns zza() {
        return zze().listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final int zzg(Object[] objArr, int i) {
        return zze().zzg(objArr, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms
    public final zzml zzj() {
        return new zznh(this);
    }

    public final /* synthetic */ Object[] zzl() {
        return this.zzb;
    }

    public final /* synthetic */ int zzm() {
        return this.zzc;
    }
}
