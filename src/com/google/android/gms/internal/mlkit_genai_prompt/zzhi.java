package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
final class zzhi extends zzhy {
    private final zzml zza;
    private final float zzb;
    private final int zzc;
    private final float zzd;
    private final zzml zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final zzik zzi;
    private final boolean zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final zzeb zzn;
    private final zzhu zzo;
    private final zzib zzp;
    private final boolean zzq;
    private final zzja zzr;

    public /* synthetic */ zzhi(zzml zzmlVar, float f, int i, float f2, zzml zzmlVar2, int i2, int i3, int i4, zzik zzikVar, boolean z, int i5, int i6, int i7, File file, File file2, File file3, int i8, zzeb zzebVar, int i9, zzhu zzhuVar, zzib zzibVar, boolean z2, zzja zzjaVar, byte[] bArr) {
        this.zza = zzmlVar;
        this.zzb = f;
        this.zzc = i;
        this.zzd = f2;
        this.zze = zzmlVar2;
        this.zzf = i2;
        this.zzg = i3;
        this.zzh = i4;
        this.zzi = zzikVar;
        this.zzj = z;
        this.zzk = i5;
        this.zzl = i6;
        this.zzm = i8;
        this.zzn = zzebVar;
        this.zzo = zzhuVar;
        this.zzp = zzibVar;
        this.zzq = z2;
        this.zzr = zzjaVar;
    }

    public final boolean equals(Object obj) {
        zzik zzikVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzhy) {
            zzhy zzhyVar = (zzhy) obj;
            if (this.zza.equals(zzhyVar.zza()) && Float.floatToIntBits(this.zzb) == Float.floatToIntBits(zzhyVar.zzb()) && this.zzc == zzhyVar.zzc() && Float.floatToIntBits(this.zzd) == Float.floatToIntBits(zzhyVar.zzd()) && this.zze.equals(zzhyVar.zze()) && this.zzf == zzhyVar.zzf() && this.zzg == zzhyVar.zzg() && this.zzh == zzhyVar.zzh() && ((zzikVar = this.zzi) != null ? zzikVar.equals(zzhyVar.zzi()) : zzhyVar.zzi() == null) && this.zzj == zzhyVar.zzj() && this.zzk == zzhyVar.zzk() && this.zzl == zzhyVar.zzl()) {
                zzhyVar.zzm();
                zzhyVar.zzn();
                zzhyVar.zzo();
                zzhyVar.zzp();
                if (this.zzm == zzhyVar.zzq() && this.zzn.equals(zzhyVar.zzr())) {
                    zzhyVar.zzs();
                    zzhu zzhuVar = this.zzo;
                    if (zzhuVar != null ? zzhuVar.equals(zzhyVar.zzt()) : zzhyVar.zzt() == null) {
                        zzib zzibVar = this.zzp;
                        if (zzibVar != null ? zzibVar.equals(zzhyVar.zzu()) : zzhyVar.zzu() == null) {
                            if (this.zzq == zzhyVar.zzv() && this.zzr.equals(zzhyVar.zzw())) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.zzb)) * 1000003) ^ this.zzc) * 1000003) ^ Float.floatToIntBits(this.zzd)) * 1000003) ^ this.zze.hashCode();
        zzik zzikVar = this.zzi;
        int iHashCode2 = ((((((((((((((((iHashCode * 1000003) ^ this.zzf) * 1000003) ^ this.zzg) * 1000003) ^ this.zzh) * 1000003) ^ (zzikVar == null ? 0 : zzikVar.hashCode())) * 1000003) ^ (true != this.zzj ? 1237 : 1231)) * 1000003) ^ this.zzk) * 1000003) ^ this.zzl) * (-429739981)) ^ this.zzm) * 1000003;
        zzhu zzhuVar = this.zzo;
        int iHashCode3 = (((iHashCode2 ^ 1001110) * (-721379959)) ^ (zzhuVar == null ? 0 : zzhuVar.hashCode())) * 1000003;
        zzib zzibVar = this.zzp;
        return this.zzr.hashCode() ^ ((((iHashCode3 ^ (zzibVar != null ? zzibVar.hashCode() : 0)) * 1000003) ^ (true != this.zzq ? 1237 : 1231)) * 1000003);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        float f = this.zzb;
        String string2 = this.zze.toString();
        String strValueOf = String.valueOf(this.zzi);
        String strValueOf2 = String.valueOf(this.zzo);
        String strValueOf3 = String.valueOf(this.zzp);
        String string3 = this.zzr.toString();
        int length2 = String.valueOf(f).length();
        int i = this.zzc;
        int length3 = String.valueOf(i).length();
        float f2 = this.zzd;
        int length4 = String.valueOf(f2).length();
        int length5 = string2.length();
        int i2 = this.zzf;
        int length6 = String.valueOf(i2).length();
        int i3 = this.zzg;
        int length7 = String.valueOf(i3).length();
        int i4 = this.zzh;
        int length8 = String.valueOf(i4).length();
        int length9 = strValueOf.length();
        boolean z = this.zzj;
        int length10 = String.valueOf(z).length();
        int i5 = this.zzk;
        int length11 = String.valueOf(i5).length();
        int i6 = this.zzl;
        int length12 = String.valueOf(i6).length();
        int i7 = this.zzm;
        int length13 = String.valueOf(i7).length();
        int length14 = strValueOf2.length();
        int length15 = strValueOf3.length();
        boolean z2 = this.zzq;
        StringBuilder sb = new StringBuilder(length + 34 + length2 + 7 + length3 + 7 + length4 + 17 + length5 + 23 + length6 + 23 + length7 + 13 + length8 + 20 + length9 + 26 + length10 + 22 + length11 + 23 + length12 + 87 + length13 + 90 + length14 + 20 + length15 + 17 + String.valueOf(z2).length() + 8 + string3.length() + 1);
        sb.append("LlmRequest{messages=");
        sb.append(string);
        sb.append(", temperature=");
        sb.append(f);
        sb.append(", topK=");
        sb.append(i);
        sb.append(", topP=");
        sb.append(f2);
        sb.append(", stopTokensList=");
        sb.append(string2);
        sb.append(", targetReplyLengthMin=");
        sb.append(i2);
        sb.append(", targetReplyLengthMax=");
        sb.append(i3);
        sb.append(", numSamples=");
        sb.append(i4);
        sb.append(", streamingCallback=");
        sb.append(strValueOf);
        sb.append(", shouldApplySafetyFilter=");
        sb.append(z);
        sb.append(", preferredImageWidth=");
        sb.append(i5);
        sb.append(", preferredImageHeight=");
        sb.append(i6);
        sb.append(", numSoftTokens=0, loraFile=null, drafterLoraFile=null, sessionStateFile=null, rngSeed=");
        sb.append(i7);
        sb.append(", userProperties=UserProperties{isMinorUser=false}, overrideRequestKind=0, llmPrefixParam=");
        sb.append(strValueOf2);
        sb.append(", llmResponseSchema=");
        sb.append(strValueOf3);
        sb.append(", enableThinking=");
        sb.append(z2);
        sb.append(", tools=");
        sb.append(string3);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final zzml zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final float zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final float zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final zzml zze() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzg() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzh() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final zzik zzi() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final boolean zzj() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzk() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzl() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzm() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final File zzn() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final File zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final File zzp() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzq() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final zzeb zzr() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final int zzs() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final zzhu zzt() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final zzib zzu() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final boolean zzv() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhy
    public final zzja zzw() {
        return this.zzr;
    }
}
