package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzrz {
    private final Boolean zza;
    private final Boolean zzb;
    private final Boolean zzc;
    private final Boolean zzd;
    private final Boolean zze;

    public /* synthetic */ zzrz(zzrx zzrxVar, zzry zzryVar) {
        this.zza = zzrxVar.zza;
        this.zzb = zzrxVar.zzb;
        this.zzc = zzrxVar.zzc;
        this.zzd = zzrxVar.zzd;
        this.zze = zzrxVar.zze;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzrz)) {
            return false;
        }
        zzrz zzrzVar = (zzrz) obj;
        return Objects.equal(this.zza, zzrzVar.zza) && Objects.equal(this.zzb, zzrzVar.zzb) && Objects.equal(this.zzc, zzrzVar.zzc) && Objects.equal(this.zzd, zzrzVar.zzd) && Objects.equal(this.zze, zzrzVar.zze);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, this.zze);
    }

    @zzcd(zza = 2)
    public final Boolean zza() {
        return this.zzb;
    }

    @zzcd(zza = 1)
    public final Boolean zzb() {
        return this.zza;
    }

    @zzcd(zza = 3)
    public final Boolean zzc() {
        return this.zzc;
    }

    @zzcd(zza = 5)
    public final Boolean zzd() {
        return this.zze;
    }

    @zzcd(zza = 4)
    public final Boolean zze() {
        return this.zzd;
    }
}
