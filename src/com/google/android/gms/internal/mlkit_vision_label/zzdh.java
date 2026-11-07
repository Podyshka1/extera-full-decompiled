package com.google.android.gms.internal.mlkit_vision_label;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdh {
    private final zzke zza;
    private final Boolean zzb;
    private final zzjt zzc = null;
    private final zzlg zzd;

    public /* synthetic */ zzdh(zzdf zzdfVar, zzdg zzdgVar) {
        this.zza = zzdfVar.zza;
        this.zzb = zzdfVar.zzb;
        this.zzd = zzdfVar.zzc;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdh)) {
            return false;
        }
        zzdh zzdhVar = (zzdh) obj;
        return Objects.equal(this.zza, zzdhVar.zza) && Objects.equal(this.zzb, zzdhVar.zzb) && Objects.equal(null, null) && Objects.equal(this.zzd, zzdhVar.zzd);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, null, this.zzd);
    }

    @zzcm(zza = 1)
    public final zzke zza() {
        return this.zza;
    }

    @zzcm(zza = 4)
    public final zzlg zzb() {
        return this.zzd;
    }

    @zzcm(zza = 2)
    public final Boolean zzc() {
        return this.zzb;
    }
}
