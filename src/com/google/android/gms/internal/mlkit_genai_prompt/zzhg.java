package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzhg extends zzhv {
    private final String zza;
    private final float zzb;
    private final int zzc;
    private final zzho zzd;
    private final zzml zze;

    public zzhg(String str, float f, int i, zzho zzhoVar, zzml zzmlVar) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null text");
            throw null;
        }
        this.zza = str;
        this.zzb = f;
        this.zzc = i;
        this.zzd = zzhoVar;
        if (zzmlVar != null) {
            this.zze = zzmlVar;
        } else {
            f$$ExternalSyntheticBUOutline2.m216m("Null functionCalls");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        zzho zzhoVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhv) {
            zzhv zzhvVar = (zzhv) obj;
            if (this.zza.equals(zzhvVar.zza()) && Float.floatToIntBits(this.zzb) == Float.floatToIntBits(zzhvVar.zzb()) && this.zzc == zzhvVar.zzc() && ((zzhoVar = this.zzd) != null ? zzhoVar.equals(zzhvVar.zzd()) : zzhvVar.zzd() == null) && this.zze.equals(zzhvVar.zze())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.zza.hashCode() ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.zzb);
        zzho zzhoVar = this.zzd;
        return this.zze.hashCode() ^ (((((iHashCode * 1000003) ^ this.zzc) * 1000003) ^ (zzhoVar == null ? 0 : zzhoVar.hashCode())) * 1000003);
    }

    public final String toString() {
        zzml zzmlVar = this.zze;
        String strValueOf = String.valueOf(this.zzd);
        String string = zzmlVar.toString();
        float f = this.zzb;
        int length = String.valueOf(f).length();
        int i = this.zzc;
        int length2 = String.valueOf(i).length();
        int length3 = strValueOf.length();
        int length4 = string.length();
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 22 + length + 13 + length2 + 19 + length3 + 16 + length4 + 1);
        sb.append("LlmReply{text=");
        sb.append(str);
        sb.append(", score=");
        sb.append(f);
        sb.append(", stopReason=");
        sb.append(i);
        sb.append(", citationMetadata=");
        sb.append(strValueOf);
        sb.append(", functionCalls=");
        sb.append(string);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhv
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhv
    public final float zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhv
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhv
    public final zzho zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhv
    public final zzml zze() {
        return this.zze;
    }
}
