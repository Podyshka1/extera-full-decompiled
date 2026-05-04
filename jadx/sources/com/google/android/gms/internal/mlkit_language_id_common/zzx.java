package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzx extends zzq implements Set {
    private transient zzu zza;

    zzx() {
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
        return zzae.zza(this);
    }

    public final zzu zzf() {
        zzu zzuVar = this.zza;
        if (zzuVar != null) {
            return zzuVar;
        }
        zzu zzuVarZzg = zzg();
        this.zza = zzuVarZzg;
        return zzuVarZzg;
    }

    zzu zzg() {
        return zzu.zzg(toArray());
    }
}
