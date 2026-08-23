package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzae extends Exception {
    private final Throwable zza;
    private final zzpg zzb;
    private final int zzc;
    private final int zzd;

    public zzae(int i, int i2, Throwable th) {
        this.zzc = i;
        this.zzd = i2;
        this.zza = th;
        zzpg zzpgVarZzf = zzph.zzf();
        zzpgVarZzf.zze(i2);
        zzpgVarZzf.zzp(i);
        this.zzb = zzpgVarZzf;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.zza;
    }

    public final zzpg zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzd;
    }
}
