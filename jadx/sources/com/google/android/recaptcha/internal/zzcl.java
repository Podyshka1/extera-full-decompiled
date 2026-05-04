package com.google.android.recaptcha.internal;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcl {
    private final zzaa zza;
    private final zzck zzb;
    private final HashMap zzc;
    private final zzcd zzd;
    private final zzag zze;

    public zzcl(zzcd zzcdVar, zzag zzagVar, zzaa zzaaVar) {
        this.zzd = zzcdVar;
        this.zze = zzagVar;
        this.zza = zzaaVar;
        zzck zzckVar = new zzck();
        this.zzb = zzckVar;
        HashMap map = new HashMap();
        this.zzc = map;
        zzckVar.zze(173, map);
    }

    public final zzaa zza() {
        return this.zza;
    }

    public final zzck zzb() {
        return this.zzb;
    }

    public final void zzc() {
        this.zzb.zzd();
        this.zzb.zze(173, this.zzc);
    }

    public final zzag zzd() {
        return this.zze;
    }

    public final zzcd zze() {
        return this.zzd;
    }

    public final void zzf(int i, Object obj) {
        this.zzc.put(Integer.valueOf(i - 2), obj);
    }
}
