package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zznj {
    private final zznh zza;
    private final Integer zzb;
    private final Integer zzc = null;
    private final Boolean zzd = null;

    public /* synthetic */ zznj(zzng zzngVar, zzni zzniVar) {
        this.zza = zzngVar.zza;
        this.zzb = zzngVar.zzb;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zznj)) {
            return false;
        }
        zznj zznjVar = (zznj) obj;
        return Objects.equal(this.zza, zznjVar.zza) && Objects.equal(this.zzb, zznjVar.zzb) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, null, null);
    }

    @zzcd(zza = 1)
    public final zznh zza() {
        return this.zza;
    }

    @zzcd(zza = 2)
    public final Integer zzb() {
        return this.zzb;
    }
}
