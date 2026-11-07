package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zzbx extends zzcd {
    private final String zzb;
    private final int zzc;
    private final int zzd;

    public /* synthetic */ zzbx(String str, boolean z, int i, zzbv zzbvVar, int i2, byte[] bArr) {
        this.zzb = str;
        this.zzc = i;
        this.zzd = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcd) {
            zzcd zzcdVar = (zzcd) obj;
            if (this.zzb.equals(zzcdVar.zza())) {
                zzcdVar.zzb();
                int i = this.zzc;
                int iZzd = zzcdVar.zzd();
                if (i == 0) {
                    throw null;
                }
                if (i == iZzd) {
                    zzcdVar.zzc();
                    int i2 = this.zzd;
                    int iZze = zzcdVar.zze();
                    if (i2 == 0) {
                        throw null;
                    }
                    if (iZze == 1) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zzb.hashCode() ^ 1000003;
        int i = this.zzc;
        if (i == 0) {
            throw null;
        }
        int i2 = (((iHashCode * 1000003) ^ 1237) * 1000003) ^ i;
        if (this.zzd != 0) {
            return (i2 * (-721379959)) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        int i = this.zzc;
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? "null" : "NO_CHECKS" : "SKIP_SECURITY_CHECK" : "SKIP_COMPLIANCE_CHECK" : "ALL_CHECKS";
        String str2 = this.zzd == 1 ? "READ_AND_WRITE" : "null";
        String str3 = this.zzb;
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 73 + str.length() + 52 + str2.length() + 1);
        sb.append("FileComplianceOptions{fileOwner=");
        sb.append(str3);
        sb.append(", hasDifferentDmaOwner=false, fileChecks=");
        sb.append(str);
        sb.append(", multipleProductIdGroupsResolver=null, filePurpose=");
        sb.append(str2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final zzbv zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzcd
    public final int zze() {
        return this.zzd;
    }
}
