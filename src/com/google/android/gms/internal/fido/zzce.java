package com.google.android.gms.internal.fido;

import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzce extends zzcf {
    @Override // com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = zzf().get(entry.getKey());
            if (obj2 != null && obj2.equals(entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzcy.zza(zzf().zzc());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return zzf().size();
    }

    public abstract zzcd zzf();

    @Override // com.google.android.gms.internal.fido.zzcf
    public final boolean zzg() {
        return false;
    }
}
