package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
public enum zzhw implements zzak {
    TYPE_UNKNOWN(0),
    TYPE_THIN(1),
    TYPE_THICK(2),
    TYPE_GMV(3);

    private final int zzf;

    zzhw(int i) {
        this.zzf = i;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzak
    public final int zza() {
        return this.zzf;
    }
}
