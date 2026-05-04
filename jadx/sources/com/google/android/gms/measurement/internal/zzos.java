package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzos extends zzol {
    private boolean zza;

    zzos(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzg.zzae();
    }

    final boolean zzav() {
        return this.zza;
    }

    protected final void zzaw() {
        if (!zzav()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzax() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzbb();
        this.zzg.zzaf();
        this.zza = true;
    }

    protected abstract boolean zzbb();
}
