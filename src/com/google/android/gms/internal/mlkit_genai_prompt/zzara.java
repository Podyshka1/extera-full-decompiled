package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
public enum zzara implements zzpt {
    MODALITY_TYPE_UNKNOWN(0),
    MODALITY_TYPE_TEXT(1),
    MODALITY_TYPE_IMAGE(2);

    private final int zzd;

    zzara(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpt
    public final int zza() {
        return this.zzd;
    }
}
