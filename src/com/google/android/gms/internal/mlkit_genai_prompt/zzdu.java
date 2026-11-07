package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzdu extends zzdq {
    private final String zza;
    private final String zzb;
    private final int zzc;
    private final int zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final String zzh;

    public zzdu(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Null name");
            throw null;
        }
        this.zza = str;
        if (str2 == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Null modelName");
            throw null;
        }
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
        this.zzh = str3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzdq) {
            zzdq zzdqVar = (zzdq) obj;
            if (this.zza.equals(zzdqVar.zza()) && this.zzb.equals(zzdqVar.zzb()) && this.zzc == zzdqVar.zzc() && this.zzd == zzdqVar.zzd() && this.zze == zzdqVar.zze() && this.zzf == zzdqVar.zzf() && this.zzg == zzdqVar.zzg() && this.zzh.equals(zzdqVar.zzh())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode();
        String str = this.zzh;
        return ((this.zzg ^ (((((((((iHashCode * 1000003) ^ this.zzc) * 1000003) ^ this.zzd) * 1000003) ^ this.zze) * 1000003) ^ this.zzf) * 1000003)) * 1000003) ^ str.hashCode();
    }

    public final String toString() {
        int i = this.zzc;
        int length = String.valueOf(i).length();
        int i2 = this.zzd;
        int length2 = String.valueOf(i2).length();
        int i3 = this.zze;
        int length3 = String.valueOf(i3).length();
        int i4 = this.zzf;
        int length4 = String.valueOf(i4).length();
        int i5 = this.zzg;
        int length5 = String.valueOf(i5).length();
        String str = this.zza;
        int length6 = str.length();
        String str2 = this.zzb;
        int length7 = length6 + 27 + str2.length() + 7 + length + 10 + length2 + 5 + length3 + 10 + length4 + 13 + length5;
        String str3 = this.zzh;
        StringBuilder sb = new StringBuilder(length7 + 14 + str3.length() + 1);
        sb.append("AiFeature{name=");
        sb.append(str);
        sb.append(", modelName=");
        sb.append(str2);
        sb.append(", type=");
        sb.append(i);
        sb.append(", variant=");
        sb.append(i2);
        sb.append(", id=");
        sb.append(i3);
        sb.append(", version=");
        sb.append(i4);
        sb.append(", customerId=");
        sb.append(i5);
        sb.append(", description=");
        sb.append(str3);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdq
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdq
    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdq
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdq
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdq
    public final int zze() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdq
    public final int zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdq
    public final int zzg() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdq
    public final String zzh() {
        return this.zzh;
    }
}
