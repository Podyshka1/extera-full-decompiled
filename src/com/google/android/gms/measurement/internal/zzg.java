package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzg extends zzf {
    private boolean zza;

    zzg(zzic zzicVar) {
        super(zzicVar);
        this.zzu.zzF();
    }

    final boolean zza() {
        return this.zza;
    }

    protected final void zzb() {
        if (!zza()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzc() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zze()) {
            return;
        }
        this.zzu.zzG();
        this.zza = true;
    }

    public final void zzd() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzf();
        this.zzu.zzG();
        this.zza = true;
    }

    protected abstract boolean zze();

    protected void zzf() {
    }
}
