package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
final class zzy extends zzu {
    static final zzu zza = new zzy(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzy(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzk.zza(i, this.zzc, "index");
        Object obj = this.zzb[i];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzu, com.google.android.gms.internal.mlkit_language_id_common.zzq
    final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    final Object[] zze() {
        return this.zzb;
    }
}
