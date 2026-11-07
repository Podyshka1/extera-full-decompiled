package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzayp extends RuntimeException {
    public zzayp(zzaxw zzaxwVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzaxm zza() {
        return new zzaxm(getMessage());
    }
}
