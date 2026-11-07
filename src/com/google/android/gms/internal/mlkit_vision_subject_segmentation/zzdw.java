package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdw {
    private final zzoa zza;
    private final Boolean zzb;
    private final zznj zzc = null;
    private final zzrz zzd;

    public /* synthetic */ zzdw(zzdu zzduVar, zzdv zzdvVar) {
        this.zza = zzduVar.zza;
        this.zzb = zzduVar.zzb;
        this.zzd = zzduVar.zzc;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdw)) {
            return false;
        }
        zzdw zzdwVar = (zzdw) obj;
        return Objects.equal(this.zza, zzdwVar.zza) && Objects.equal(this.zzb, zzdwVar.zzb) && Objects.equal(null, null) && Objects.equal(this.zzd, zzdwVar.zzd);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, null, this.zzd);
    }

    @zzcd(zza = 1)
    public final zzoa zza() {
        return this.zza;
    }

    @zzcd(zza = 4)
    public final zzrz zzb() {
        return this.zzd;
    }

    @zzcd(zza = 2)
    public final Boolean zzc() {
        return this.zzb;
    }
}
