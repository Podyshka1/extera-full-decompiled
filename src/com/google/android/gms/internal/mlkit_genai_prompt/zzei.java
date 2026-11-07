package com.google.android.gms.internal.mlkit_genai_prompt;

import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzei extends zzet {
    private zzdi zza;
    private zzdy zzb;
    private zzdq zzc;

    public final zzet zza(zzdi zzdiVar) {
        this.zza = zzdiVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzet
    public final zzet zzb(zzdy zzdyVar) {
        this.zzb = zzdyVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzet
    public final zzet zzc(zzdq zzdqVar) {
        if (zzdqVar != null) {
            this.zzc = zzdqVar;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null feature");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzet
    public final zzeu zzd() {
        zzdy zzdyVar;
        zzdq zzdqVar;
        zzdi zzdiVar = this.zza;
        byte[] bArr = null;
        if (zzdiVar != null && (zzdyVar = this.zzb) != null && (zzdqVar = this.zzc) != null) {
            return new zzej(zzdiVar, zzdyVar, zzdqVar, bArr);
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
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
