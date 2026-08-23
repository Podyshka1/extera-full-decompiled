package com.google.android.gms.measurement.internal;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzos extends zzol {
    private boolean zza;

    public zzos(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzg.zzaf();
    }

    public final boolean zzax() {
        return this.zza;
    }

    public final void zzay() {
        if (zzax()) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Not initialized");
    }

    public final void zzaz() {
        if (this.zza) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Can't initialize twice");
            return;
        }
        zzbc();
        this.zzg.zzag();
        this.zza = true;
    }

    public abstract boolean zzbc();
}
