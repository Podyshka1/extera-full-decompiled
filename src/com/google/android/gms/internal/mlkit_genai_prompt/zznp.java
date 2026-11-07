package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zznp extends zzms {
    final transient Object zza;

    public zznp(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new zzmw(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String string = this.zza.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2);
        sb.append("[");
        sb.append(string);
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms
    public final zzns zza() {
        return new zzmw(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzms, com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final zzml zze() {
        return zzml.zzl(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final int zzg(Object[] objArr, int i) {
        objArr[0] = this.zza;
        return 1;
    }
}
