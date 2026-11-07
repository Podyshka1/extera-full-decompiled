package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzeh extends zzep {
    private final zzml zza;
    private final zzbt zzb;
    private final int zzc;

    public zzeh(zzml zzmlVar, zzbt zzbtVar, int i) {
        if (zzmlVar == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Null results");
            throw null;
        }
        this.zza = zzmlVar;
        this.zzb = zzbtVar;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        zzbt zzbtVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzep) {
            zzep zzepVar = (zzep) obj;
            if (this.zza.equals(zzepVar.zza()) && ((zzbtVar = this.zzb) != null ? zzbtVar == zzepVar.zzb() : zzepVar.zzb() == null) && this.zzc == zzepVar.zzc()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        zzbt zzbtVar = this.zzb;
        return this.zzc ^ (((iHashCode * 1000003) ^ (zzbtVar == null ? 0 : zzbtVar.hashCode())) * 1000003);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String strValueOf = String.valueOf(this.zzb);
        int length2 = strValueOf.length();
        int i = this.zzc;
        StringBuilder sb = new StringBuilder(length + 50 + length2 + 14 + String.valueOf(i).length() + 1);
        sb.append("CortanaResult{results=");
        sb.append(string);
        sb.append(", inferenceEventTraceResult=");
        sb.append(strValueOf);
        sb.append(", tokenOffset=");
        sb.append(i);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzep
    public final zzml zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzep
    public final zzbt zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzep
    public final int zzc() {
        return this.zzc;
    }
}
