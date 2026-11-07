package com.google.android.gms.cast.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp {
    private final int zza;

    public zzp(int i, zzaa zzaaVar) {
        this.zza = i;
    }

    public final int zza() {
        return this.zza;
    }

    public final boolean zzb(int i) {
        return (this.zza & i) == i;
    }

    public final boolean zzc() {
        return !(!zzb(32) || zzb(64) || zzb(128)) || zzb(64);
    }

    public final boolean zzd() {
        return zzc() || zzb(128);
    }
}
