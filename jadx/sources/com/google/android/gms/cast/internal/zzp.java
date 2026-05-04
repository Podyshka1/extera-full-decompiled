package com.google.android.gms.cast.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzp {
    protected final Logger zza;
    private final String zzb;
    private zzar zzc;

    protected zzp(String str, String str2, String str3) {
        CastUtils.throwIfInvalidNamespace(str);
        this.zzb = str;
        this.zza = new Logger("MediaControlChannel", null);
    }

    protected final long zzd() {
        zzar zzarVar = this.zzc;
        if (zzarVar != null) {
            return zzarVar.zza();
        }
        this.zza.m338e("Attempt to generate requestId without a sink", new Object[0]);
        return 0L;
    }

    public final String zze() {
        return this.zzb;
    }

    public abstract void zzf();

    protected final void zzg(String str, long j, String str2) {
        zzar zzarVar = this.zzc;
        if (zzarVar == null) {
            this.zza.m338e("Attempt to send text message without a sink", new Object[0]);
        } else {
            zzarVar.zzb(this.zzb, str, j, null);
        }
    }

    public final void zzh(zzar zzarVar) {
        this.zzc = zzarVar;
        if (zzarVar == null) {
            zzf();
        }
    }
}
