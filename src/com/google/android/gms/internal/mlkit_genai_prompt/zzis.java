package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Map;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzis extends zzix {
    private String zza;
    private zzmo zzb;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzix
    public final zzix zza(String str) {
        if (str != null) {
            this.zza = str;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null name");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzix
    public final zzix zzb(Map map) {
        this.zzb = zzmo.zzd(map);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzix
    public final zziy zzc() {
        zzmo zzmoVar;
        String str = this.zza;
        byte[] bArr = null;
        if (str != null && (zzmoVar = this.zzb) != null) {
            return new zzit(str, zzmoVar, bArr);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" name");
        }
        if (this.zzb == null) {
            sb.append(" args");
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
