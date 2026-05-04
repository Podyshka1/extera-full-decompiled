package com.google.android.gms.internal.fido;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbl implements Serializable {
    zzbl() {
    }

    public static zzbl zzc() {
        return zzaz.zza;
    }

    public static zzbl zzd(Object obj) {
        return new zzbn(obj);
    }

    public abstract Object zza();

    public abstract boolean zzb();
}
