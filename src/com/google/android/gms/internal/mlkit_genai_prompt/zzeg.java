package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes5.dex */
final class zzeg extends zzeo {
    private final ParcelFileDescriptor zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private final String zze;
    private final int zzf;
    private final zzwh zzg;

    public /* synthetic */ zzeg(zzml zzmlVar, ParcelFileDescriptor parcelFileDescriptor, zzml zzmlVar2, float f, int i, int i2, int i3, zzev zzevVar, int i4, int i5, int i6, int i7, String str, String str2, int i8, zzwh zzwhVar, byte[] bArr) {
        this.zza = parcelFileDescriptor;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zzf = i7;
        this.zze = str;
        this.zzg = zzwhVar;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzeo) {
            zzeo zzeoVar = (zzeo) obj;
            zzeoVar.zza();
            if (this.zza.equals(zzeoVar.zzb())) {
                zzeoVar.zzc();
                int iFloatToIntBits = Float.floatToIntBits(0.0f);
                zzeoVar.zzd();
                if (iFloatToIntBits == Float.floatToIntBits(0.0f) && this.zzb == zzeoVar.zze() && this.zzc == zzeoVar.zzf() && this.zzd == zzeoVar.zzg()) {
                    zzeoVar.zzh();
                    zzeoVar.zzi();
                    zzeoVar.zzj();
                    zzeoVar.zzk();
                    if (this.zzf == zzeoVar.zzo() && ((str = this.zze) != null ? str.equals(zzeoVar.zzl()) : zzeoVar.zzl() == null)) {
                        zzeoVar.zzm();
                        zzeoVar.zzn();
                        zzwh zzwhVar = this.zzg;
                        if (zzwhVar != null ? zzwhVar == zzeoVar.zzp() : zzeoVar.zzp() == null) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.zza.hashCode() ^ (-721379959)) * (-721379959)) ^ Float.floatToIntBits(0.0f);
        String str = this.zze;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        int i = iHashCode * 1000003;
        int i2 = this.zzb;
        int i3 = this.zzc;
        int i4 = this.zzd;
        int i5 = this.zzf;
        zzwh zzwhVar = this.zzg;
        return ((((((((((i ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * (-429739981)) ^ i5) * 1000003) ^ iHashCode2) * 583896283) ^ (zzwhVar != null ? zzwhVar.hashCode() : 0);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String strValueOf = String.valueOf(this.zzg);
        int length2 = String.valueOf(0.0f).length();
        int i = this.zzb;
        int length3 = String.valueOf(i).length();
        int i2 = this.zzc;
        int length4 = String.valueOf(i2).length();
        int i3 = this.zzd;
        int length5 = String.valueOf(i3).length();
        String str = this.zze;
        int length6 = String.valueOf(str).length();
        int length7 = strValueOf.length();
        String strZza = zzen.zza(this.zzf);
        StringBuilder sb = new StringBuilder(length + 118 + length2 + 7 + length3 + 23 + length4 + 13 + length5 + 102 + strZza.length() + 15 + length6 + 66 + length7 + 1);
        sb.append("CortanaRequest{messages=null, cortanaStateFileDescriptorToWrite=");
        sb.append(string);
        sb.append(", cortanaStateFileDescriptorsToRead=null, temperature=0.0, topK=");
        sb.append(i);
        sb.append(", targetReplyLengthMax=");
        sb.append(i2);
        sb.append(", numSamples=");
        sb.append(i3);
        sb.append(", streamingCallback=null, preferredImageWidth=0, preferredImageHeight=0, numSoftTokens=0, cortanaType=");
        sb.append(strZza);
        sb.append(", systemPrompt=");
        sb.append(str);
        sb.append(", textToMemory=null, tokenOffset=0, inferenceStateCachingCallback=");
        sb.append(strValueOf);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final zzml zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final ParcelFileDescriptor zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final zzml zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final float zzd() {
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final int zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final int zzf() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final int zzg() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final zzev zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final int zzi() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final int zzj() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final int zzk() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final String zzl() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    @Deprecated
    public final String zzm() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final int zzn() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final int zzo() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzeo
    public final zzwh zzp() {
        return this.zzg;
    }
}
