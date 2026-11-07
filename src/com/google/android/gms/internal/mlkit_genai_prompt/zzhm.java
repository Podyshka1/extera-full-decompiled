package com.google.android.gms.internal.mlkit_genai_prompt;

import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzhm extends zzii {
    private zzdi zza;
    private zzdy zzb;
    private zzdq zzc;

    public final zzii zza(zzdi zzdiVar) {
        this.zza = zzdiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzii
    public final zzii zzb(zzdy zzdyVar) {
        this.zzb = zzdyVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzii
    public final zzii zzc(zzdq zzdqVar) {
        if (zzdqVar != null) {
            this.zzc = zzdqVar;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m213m("Null feature");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzii
    public final zzij zzd() {
        zzdy zzdyVar;
        zzdq zzdqVar;
        zzdi zzdiVar = this.zza;
        byte[] bArr = null;
        if (zzdiVar != null && (zzdyVar = this.zzb) != null && (zzdqVar = this.zzc) != null) {
            return new zzhn(zzdiVar, zzdyVar, zzdqVar, bArr);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" aiCoreClient");
        }
        if (this.zzb == null) {
            sb.append(" downloadCallback");
        }
        if (this.zzc == null) {
            sb.append(" feature");
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
