package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zzhk extends zzib {
    private final String zza;
    private final String zzb;
    private final Boolean zzc;
    private final zzml zzd;
    private final zzib zze;
    private final Long zzf;
    private final Long zzg;
    private final zzml zzh;
    private final zzmo zzi;
    private final Double zzj;
    private final Double zzk;
    private final int zzl;

    public /* synthetic */ zzhk(int i, String str, String str2, Boolean bool, zzml zzmlVar, zzib zzibVar, Long l, Long l2, zzml zzmlVar2, zzmo zzmoVar, Long l3, Long l4, Double d, Double d2, Long l5, Long l6, String str3, zzml zzmlVar3, zzml zzmlVar4, String str4, byte[] bArr) {
        this.zzl = i;
        this.zza = str;
        this.zzb = str2;
        this.zzc = bool;
        this.zzd = zzmlVar;
        this.zze = zzibVar;
        this.zzf = l;
        this.zzg = l2;
        this.zzh = zzmlVar2;
        this.zzi = zzmoVar;
        this.zzj = d;
        this.zzk = d2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzib) {
            zzib zzibVar = (zzib) obj;
            int i = this.zzl;
            if (i != 0 ? i == zzibVar.zzt() : zzibVar.zzt() == 0) {
                String str = this.zza;
                if (str != null ? str.equals(zzibVar.zza()) : zzibVar.zza() == null) {
                    String str2 = this.zzb;
                    if (str2 != null ? str2.equals(zzibVar.zzb()) : zzibVar.zzb() == null) {
                        Boolean bool = this.zzc;
                        if (bool != null ? bool.equals(zzibVar.zzc()) : zzibVar.zzc() == null) {
                            zzml zzmlVar = this.zzd;
                            if (zzmlVar != null ? zzmlVar.equals(zzibVar.zzd()) : zzibVar.zzd() == null) {
                                zzib zzibVar2 = this.zze;
                                if (zzibVar2 != null ? zzibVar2.equals(zzibVar.zze()) : zzibVar.zze() == null) {
                                    Long l = this.zzf;
                                    if (l != null ? l.equals(zzibVar.zzf()) : zzibVar.zzf() == null) {
                                        Long l2 = this.zzg;
                                        if (l2 != null ? l2.equals(zzibVar.zzg()) : zzibVar.zzg() == null) {
                                            zzml zzmlVar2 = this.zzh;
                                            if (zzmlVar2 != null ? zzmlVar2.equals(zzibVar.zzh()) : zzibVar.zzh() == null) {
                                                zzmo zzmoVar = this.zzi;
                                                if (zzmoVar != null ? zzmoVar.equals(zzibVar.zzi()) : zzibVar.zzi() == null) {
                                                    zzibVar.zzj();
                                                    zzibVar.zzk();
                                                    Double d = this.zzj;
                                                    if (d != null ? d.equals(zzibVar.zzl()) : zzibVar.zzl() == null) {
                                                        Double d2 = this.zzk;
                                                        if (d2 != null ? d2.equals(zzibVar.zzm()) : zzibVar.zzm() == null) {
                                                            zzibVar.zzn();
                                                            zzibVar.zzo();
                                                            zzibVar.zzp();
                                                            zzibVar.zzq();
                                                            zzibVar.zzr();
                                                            zzibVar.zzs();
                                                            return true;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final String toString() {
        zzmo zzmoVar = this.zzi;
        zzml zzmlVar = this.zzh;
        zzib zzibVar = this.zze;
        String strValueOf = String.valueOf(this.zzd);
        String strValueOf2 = String.valueOf(zzibVar);
        String strValueOf3 = String.valueOf(zzmlVar);
        String strValueOf4 = String.valueOf(zzmoVar);
        String str = this.zza;
        int length = String.valueOf(str).length();
        String str2 = this.zzb;
        int length2 = String.valueOf(str2).length();
        Boolean bool = this.zzc;
        int length3 = String.valueOf(bool).length();
        int length4 = strValueOf.length();
        int length5 = strValueOf2.length();
        Long l = this.zzf;
        int length6 = String.valueOf(l).length();
        Long l2 = this.zzg;
        int length7 = String.valueOf(l2).length();
        int length8 = strValueOf3.length();
        int length9 = strValueOf4.length();
        Double d = this.zzj;
        int length10 = String.valueOf(d).length();
        Double d2 = this.zzk;
        int length11 = String.valueOf(d2).length();
        String strZza = zzia.zza(this.zzl);
        StringBuilder sb = new StringBuilder(strZza.length() + 32 + length + 14 + length2 + 11 + length3 + 13 + length4 + 8 + length5 + 11 + length6 + 11 + length7 + 11 + length8 + 13 + length9 + 50 + length10 + 10 + length11 + 94);
        sb.append("LlmResponseSchema{type=");
        sb.append(strZza);
        sb.append(", format=");
        sb.append(str);
        sb.append(", description=");
        sb.append(str2);
        sb.append(", nullable=");
        sb.append(bool);
        sb.append(", enumValues=");
        sb.append(strValueOf);
        sb.append(", items=");
        sb.append(strValueOf2);
        sb.append(", maxItems=");
        sb.append(l);
        sb.append(", minItems=");
        sb.append(l2);
        sb.append(", required=");
        sb.append(strValueOf3);
        sb.append(", properties=");
        sb.append(strValueOf4);
        sb.append(", minProperties=null, maxProperties=null, minimum=");
        sb.append(d);
        sb.append(", maximum=");
        sb.append(d2);
        sb.append(", minLength=null, maxLength=null, pattern=null, anyOf=null, propertyOrdering=null, title=null}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Boolean zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final zzml zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final zzib zze() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Long zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Long zzg() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final zzml zzh() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final zzmo zzi() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Long zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Long zzk() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Double zzl() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Double zzm() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Long zzn() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final Long zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final String zzp() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final zzml zzq() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final zzml zzr() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final String zzs() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzib
    public final int zzt() {
        return this.zzl;
    }

    public final int hashCode() {
        int i = this.zzl;
        if (i == 0) {
            i = 0;
        }
        String str = this.zza;
        int iHashCode = (((i ^ 1000003) * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.zzb;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        Boolean bool = this.zzc;
        int iHashCode3 = (iHashCode2 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        zzml zzmlVar = this.zzd;
        int iHashCode4 = (iHashCode3 ^ (zzmlVar == null ? 0 : zzmlVar.hashCode())) * 1000003;
        zzib zzibVar = this.zze;
        int iHashCode5 = (iHashCode4 ^ (zzibVar == null ? 0 : zzibVar.hashCode())) * 1000003;
        Long l = this.zzf;
        int iHashCode6 = (iHashCode5 ^ (l == null ? 0 : l.hashCode())) * 1000003;
        Long l2 = this.zzg;
        int iHashCode7 = (iHashCode6 ^ (l2 == null ? 0 : l2.hashCode())) * 1000003;
        zzml zzmlVar2 = this.zzh;
        int iHashCode8 = (iHashCode7 ^ (zzmlVar2 == null ? 0 : zzmlVar2.hashCode())) * 1000003;
        zzmo zzmoVar = this.zzi;
        int iHashCode9 = iHashCode8 ^ (zzmoVar == null ? 0 : zzmoVar.hashCode());
        Double d = this.zzj;
        int iHashCode10 = ((iHashCode9 * 583896283) ^ (d == null ? 0 : d.hashCode())) * 1000003;
        Double d2 = this.zzk;
        return (iHashCode10 ^ (d2 != null ? d2.hashCode() : 0)) * 272515929;
    }
}
