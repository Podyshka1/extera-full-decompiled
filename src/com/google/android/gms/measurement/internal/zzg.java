package com.google.android.gms.measurement.internal;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzg extends zzf {
    private boolean zza;

    public zzg(zzic zzicVar) {
        super(zzicVar);
        this.zzu.zzF();
    }

    public final boolean zza() {
        return this.zza;
    }

    public final void zzb() {
        if (zza()) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Not initialized");
    }

    public final void zzc() {
        if (this.zza) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Can't initialize twice");
        } else {
            if (zze()) {
                return;
            }
            this.zzu.zzG();
            this.zza = true;
        }
    }

    public final void zzd() {
        if (this.zza) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Can't initialize twice");
            return;
        }
        zzf();
        this.zzu.zzG();
        this.zza = true;
    }

    public abstract boolean zze();

    public void zzf() {
    }
}
