package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
public enum zzarn implements zzpt {
    GENERATION_MODE_UNKNOWN(0),
    GENERATION_MODE_GENERATIVE(1),
    GENERATION_MODE_REGENERATIVE(2);

    private final int zzd;

    zzarn(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzpt
    public final int zza() {
        return this.zzd;
    }
}
