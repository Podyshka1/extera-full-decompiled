package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzjf extends zzje {
    private boolean zza;

    zzjf(zzic zzicVar) {
        super(zzicVar);
        this.zzu.zzF();
    }

    protected abstract boolean zza();

    protected void zzba() {
    }

    final boolean zzv() {
        return this.zza;
    }

    protected final void zzw() {
        if (!zzv()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzx() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zza()) {
            return;
        }
        this.zzu.zzG();
        this.zza = true;
    }

    public final void zzy() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzba();
        this.zzu.zzG();
        this.zza = true;
    }
}
