package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzhl extends zzic {
    private final zzml zza;
    private final zzbt zzb;
    private final zzha zzc;
    private final zzml zzd;

    public zzhl(zzml zzmlVar, zzbt zzbtVar, zzha zzhaVar, zzml zzmlVar2) {
        if (zzmlVar == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Null results");
            throw null;
        }
        this.zza = zzmlVar;
        this.zzb = zzbtVar;
        this.zzc = zzhaVar;
        this.zzd = zzmlVar2;
    }

    public final boolean equals(Object obj) {
        zzbt zzbtVar;
        zzha zzhaVar;
        zzml zzmlVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzic) {
            zzic zzicVar = (zzic) obj;
            if (this.zza.equals(zzicVar.zza()) && ((zzbtVar = this.zzb) != null ? zzbtVar == zzicVar.zzb() : zzicVar.zzb() == null) && ((zzhaVar = this.zzc) != null ? zzhaVar.equals(zzicVar.zzc()) : zzicVar.zzc() == null) && ((zzmlVar = this.zzd) != null ? zzmlVar.equals(zzicVar.zzd()) : zzicVar.zzd() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        zzbt zzbtVar = this.zzb;
        int iHashCode2 = ((iHashCode * 1000003) ^ (zzbtVar == null ? 0 : zzbtVar.hashCode())) * 1000003;
        zzha zzhaVar = this.zzc;
        int iHashCode3 = (iHashCode2 ^ (zzhaVar == null ? 0 : zzhaVar.hashCode())) * 1000003;
        zzml zzmlVar = this.zzd;
        return iHashCode3 ^ (zzmlVar != null ? zzmlVar.hashCode() : 0);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        zzml zzmlVar = this.zzd;
        zzha zzhaVar = this.zzc;
        String strValueOf = String.valueOf(this.zzb);
        String strValueOf2 = String.valueOf(zzhaVar);
        String strValueOf3 = String.valueOf(zzmlVar);
        int length2 = strValueOf.length();
        StringBuilder sb = new StringBuilder(length + 46 + length2 + 23 + strValueOf2.length() + 17 + strValueOf3.length() + 1);
        sb.append("LlmResult{results=");
        sb.append(string);
        sb.append(", inferenceEventTraceResult=");
        sb.append(strValueOf);
        sb.append(", legionResultMetadata=");
        sb.append(strValueOf2);
        sb.append(", thoughtProcess=");
        sb.append(strValueOf3);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzic
    public final zzml zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzic
    public final zzbt zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzic
    public final zzha zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzic
    public final zzml zzd() {
        return this.zzd;
    }
}
