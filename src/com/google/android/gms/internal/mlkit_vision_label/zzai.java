package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzai implements zzbr {

    @CheckForNull
    private transient Set zza;

    @CheckForNull
    private transient Map zzb;

    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbr) {
            return zzp().equals(((zzbr) obj).zzp());
        }
        return false;
    }

    public final int hashCode() {
        return zzp().hashCode();
    }

    public final String toString() {
        return ((zzy) zzp()).zza.toString();
    }

    public abstract Map zzk();

    public abstract Set zzl();

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzbr
    public final Map zzp() {
        Map map = this.zzb;
        if (map != null) {
            return map;
        }
        Map mapZzk = zzk();
        this.zzb = mapZzk;
        return mapZzk;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzbr
    public final Set zzq() {
        Set set = this.zza;
        if (set != null) {
            return set;
        }
        Set setZzl = zzl();
        this.zza = setZzl;
        return setZzl;
    }
}
