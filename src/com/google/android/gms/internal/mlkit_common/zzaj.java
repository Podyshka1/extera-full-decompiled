package com.google.android.gms.internal.mlkit_common;

import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaj extends zzab implements Set {

    @CheckForNull
    private transient zzaf zza;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
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
        return zzar.zza(this);
    }

    public final zzaf zzf() {
        zzaf zzafVar = this.zza;
        if (zzafVar != null) {
            return zzafVar;
        }
        zzaf zzafVarZzg = zzg();
        this.zza = zzafVarZzg;
        return zzafVarZzg;
    }

    public zzaf zzg() {
        Object[] array = toArray();
        int i = zzaf.$r8$clinit;
        return zzaf.zzg(array, array.length);
    }
}
