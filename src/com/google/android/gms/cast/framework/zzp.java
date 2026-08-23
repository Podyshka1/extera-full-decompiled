package com.google.android.gms.cast.framework;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp {
    private int zza = 0;
    private int zzb = -1;

    public final zzp zza(int i) {
        this.zza = i;
        return this;
    }

    public final zzp zzb(int i) {
        this.zzb = i;
        return this;
    }

    public final zzq zzc() {
        int iZzb = this.zza;
        if (iZzb == 0) {
            iZzb = CastContext.zzb(this.zzb);
            this.zza = iZzb;
        }
        return new zzq(iZzb, this.zzb, null);
    }
}
