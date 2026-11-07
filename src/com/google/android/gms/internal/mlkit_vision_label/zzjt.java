package com.google.android.gms.internal.mlkit_vision_label;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjt {
    private final zzjr zza;
    private final Integer zzb;
    private final Integer zzc = null;
    private final Boolean zzd = null;

    public /* synthetic */ zzjt(zzjq zzjqVar, zzjs zzjsVar) {
        this.zza = zzjqVar.zza;
        this.zzb = zzjqVar.zzb;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjt)) {
            return false;
        }
        zzjt zzjtVar = (zzjt) obj;
        return Objects.equal(this.zza, zzjtVar.zza) && Objects.equal(this.zzb, zzjtVar.zzb) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, null, null);
    }

    @zzcm(zza = 1)
    public final zzjr zza() {
        return this.zza;
    }

    @zzcm(zza = 2)
    public final Integer zzb() {
        return this.zzb;
    }
}
