package com.google.android.gms.internal.mlkit_genai_prompt;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzdw extends zzea {
    private byte zza;

    public final zzea zza(boolean z) {
        this.zza = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzea
    public final zzeb zzb() {
        if (this.zza == 1) {
            return new zzdx(false, null);
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties: isMinorUser");
        return null;
    }
}
