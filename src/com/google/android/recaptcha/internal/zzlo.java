package com.google.android.recaptcha.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlo {
    private final String zza;
    private final long zzb;
    private final int zzc;

    public zzlo(String str, long j, int i) {
        this.zza = str;
        this.zzb = j;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzlo)) {
            return false;
        }
        zzlo zzloVar = (zzlo) obj;
        return Intrinsics.areEqual(zzloVar.zza, this.zza) && zzloVar.zzb == this.zzb && zzloVar.zzc == this.zzc;
    }

    public final String zza() {
        return this.zza;
    }

    public final long zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zzc;
    }
}
