package com.google.android.gms.internal.mlkit_vision_common;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzs extends zzl implements Set {
    private transient zzp zza;

    zzs() {
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
        return zzaa.zza(this);
    }

    public final zzp zzf() {
        zzp zzpVar = this.zza;
        if (zzpVar != null) {
            return zzpVar;
        }
        zzp zzpVarZzg = zzg();
        this.zza = zzpVarZzg;
        return zzpVarZzg;
    }

    zzp zzg() {
        return zzp.zzg(toArray());
    }
}
