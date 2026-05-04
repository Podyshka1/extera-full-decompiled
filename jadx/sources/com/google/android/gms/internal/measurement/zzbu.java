package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zzbu extends zzca {
    private final String zzc;
    private final int zzd;
    private final int zze;

    /* synthetic */ zzbu(String str, boolean z, int i, zzbr zzbrVar, zzbs zzbsVar, int i2, byte[] bArr) {
        this.zzc = str;
        this.zzd = i;
        this.zze = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzca) {
            zzca zzcaVar = (zzca) obj;
            if (this.zzc.equals(zzcaVar.zza())) {
                zzcaVar.zzb();
                int i = this.zzd;
                int iZze = zzcaVar.zze();
                if (i == 0) {
                    throw null;
                }
                if (i == iZze) {
                    zzcaVar.zzc();
                    zzcaVar.zzd();
                    int i2 = this.zze;
                    int iZzf = zzcaVar.zzf();
                    if (i2 == 0) {
                        throw null;
                    }
                    if (iZzf == 1) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zzc.hashCode() ^ 1000003;
        int i = this.zzd;
        if (i == 0) {
            throw null;
        }
        int i2 = (((iHashCode * 1000003) ^ 1237) * 1000003) ^ i;
        if (this.zze != 0) {
            return (i2 * 583896283) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        int i = this.zzd;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "NO_CHECKS" : "SKIP_SECURITY_CHECK" : "SKIP_COMPLIANCE_CHECK" : "ALL_CHECKS";
        String str2 = this.zze == 1 ? "READ_AND_WRITE" : "null";
        String str3 = this.zzc;
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 73 + str.length() + 91 + str2.length() + 1);
        sb.append("FileComplianceOptions{fileOwner=");
        sb.append(str3);
        sb.append(", hasDifferentDmaOwner=false, fileChecks=");
        sb.append(str);
        sb.append(", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=");
        sb.append(str2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzca
    public final String zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzca
    public final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzca
    public final zzbr zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzca
    public final zzbs zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzca
    public final int zze() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzca
    public final int zzf() {
        return this.zze;
    }
}
