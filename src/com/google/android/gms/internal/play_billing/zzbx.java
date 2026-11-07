package com.google.android.gms.internal.play_billing;

import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzbx extends zzbq implements Set {
    private transient zzbt zza;

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
        return zzcg.zza(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbq
    public zzbt zzd() {
        zzbt zzbtVar = this.zza;
        if (zzbtVar != null) {
            return zzbtVar;
        }
        zzbt zzbtVarZzh = zzh();
        this.zza = zzbtVarZzh;
        return zzbtVarZzh;
    }

    public zzbt zzh() {
        Object[] array = toArray();
        int i = zzbt.$r8$clinit;
        return zzbt.zzi(array, array.length);
    }
}
