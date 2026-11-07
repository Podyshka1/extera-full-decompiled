package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzmj extends zzml {
    private final transient zzml zza;

    public zzmj(zzml zzmlVar) {
        this.zza = zzmlVar;
    }

    private final int zzt(int i) {
        return (this.zza.size() - 1) - i;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzml, com.google.android.gms.internal.mlkit_genai_prompt.zzmg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzml zzmlVar = this.zza;
        zzla.zzf(i, zzmlVar.size(), "index");
        return zzmlVar.get(zzt(i));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzml, java.util.List
    public final int indexOf(Object obj) {
        int iLastIndexOf = this.zza.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return zzt(iLastIndexOf);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzml, java.util.List
    public final int lastIndexOf(Object obj) {
        int iIndexOf = this.zza.indexOf(obj);
        if (iIndexOf >= 0) {
            return zzt(iIndexOf);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzml, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzmg
    public final boolean zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzml
    public final zzml zzh() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzml
    /* JADX INFO: renamed from: zzi */
    public final zzml subList(int i, int i2) {
        zzml zzmlVar = this.zza;
        zzla.zzh(i, i2, zzmlVar.size());
        return zzmlVar.subList(zzmlVar.size() - i2, zzmlVar.size() - i).zzh();
    }
}
