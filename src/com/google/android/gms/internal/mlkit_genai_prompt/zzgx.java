package com.google.android.gms.internal.mlkit_genai_prompt;

import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgx extends zzgz {
    private String zza;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzgz
    public final zzgz zza(String str) {
        if (str != null) {
            this.zza = str;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null modelVersion");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzgz
    public final zzha zzb() {
        String str = this.zza;
        byte[] bArr = null;
        if (str != null) {
            return new zzgy(str, bArr);
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties: modelVersion");
        return null;
    }
}
