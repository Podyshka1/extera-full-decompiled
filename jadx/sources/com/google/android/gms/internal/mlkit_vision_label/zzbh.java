package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbh extends zzaz implements Set {
    private transient zzbe zza;

    zzbh() {
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    return containsAll(set);
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzcb.zza(this);
    }

    public final zzbe zzf() {
        zzbe zzbeVar = this.zza;
        if (zzbeVar != null) {
            return zzbeVar;
        }
        zzbe zzbeVarZzg = zzg();
        this.zza = zzbeVarZzg;
        return zzbeVarZzg;
    }

    zzbe zzg() {
        return zzbe.zzg(toArray());
    }
}
