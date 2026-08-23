package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzy implements zzbi {

    @CheckForNull
    private transient Set zza;

    @CheckForNull
    private transient Map zzb;

    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbi) {
            return zzn().equals(((zzbi) obj).zzn());
        }
        return false;
    }

    public final int hashCode() {
        return zzn().hashCode();
    }

    public final String toString() {
        return zzn().toString();
    }

    public abstract Map zzh();

    public abstract Set zzi();

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzbi
    public final Map zzn() {
        Map map = this.zzb;
        if (map != null) {
            return map;
        }
        Map mapZzh = zzh();
        this.zzb = mapZzh;
        return mapZzh;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzbi
    public final Set zzo() {
        Set set = this.zza;
        if (set != null) {
            return set;
        }
        Set setZzi = zzi();
        this.zza = setZzi;
        return setZzi;
    }
}
