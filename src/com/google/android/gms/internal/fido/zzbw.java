package com.google.android.gms.internal.fido;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
final class zzbw extends zzcs implements Serializable {
    final Comparator zza;

    zzbw(Comparator comparator) {
        comparator.getClass();
        this.zza = comparator;
    }

    @Override // com.google.android.gms.internal.fido.zzcs, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.zza.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbw) {
            return this.zza.equals(((zzbw) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString();
    }
}
