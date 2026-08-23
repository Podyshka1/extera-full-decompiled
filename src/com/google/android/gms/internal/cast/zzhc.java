package com.google.android.gms.internal.cast;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzhc implements Serializable {
    public static zzhc zzb() {
        return zzha.zza;
    }

    public static zzhc zzc(Object obj) {
        return obj == null ? zzha.zza : new zzhe(obj);
    }

    public abstract Object zza(Object obj);
}
