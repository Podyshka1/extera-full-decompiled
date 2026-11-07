package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzhc extends zzhp {
    private final int zza;
    private final int zzb;
    private final String zzc;
    private final String zzd;

    public zzhc(int i, int i2, String str, String str2) {
        this.zza = i;
        this.zzb = i2;
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null uri");
            throw null;
        }
        this.zzc = str;
        this.zzd = str2;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhp) {
            zzhp zzhpVar = (zzhp) obj;
            if (this.zza == zzhpVar.zza() && this.zzb == zzhpVar.zzb() && this.zzc.equals(zzhpVar.zzc()) && ((str = this.zzd) != null ? str.equals(zzhpVar.zzd()) : zzhpVar.zzd() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((this.zza ^ 1000003) * 1000003) ^ this.zzb) * 1000003) ^ this.zzc.hashCode();
        String str = this.zzd;
        return (str == null ? 0 : str.hashCode()) ^ (iHashCode * 1000003);
    }

    public final String toString() {
        int i = this.zza;
        int length = String.valueOf(i).length();
        int i2 = this.zzb;
        int length2 = String.valueOf(i2).length();
        String str = this.zzd;
        int length3 = String.valueOf(str).length();
        String str2 = this.zzc;
        StringBuilder sb = new StringBuilder(length + 37 + length2 + 6 + str2.length() + 10 + length3 + 1);
        sb.append("CitationSource{startIndex=");
        sb.append(i);
        sb.append(", endIndex=");
        sb.append(i2);
        sb.append(", uri=");
        sb.append(str2);
        sb.append(", license=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhp
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhp
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhp
    public final String zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhp
    public final String zzd() {
        return this.zzd;
    }
}
