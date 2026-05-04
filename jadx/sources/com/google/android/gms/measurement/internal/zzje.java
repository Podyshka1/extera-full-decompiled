package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzje implements zzjg {
    protected final zzic zzu;

    zzje(zzic zzicVar) {
        Preconditions.checkNotNull(zzicVar);
        this.zzu = zzicVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzae zzaU() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzgu zzaV() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzhz zzaW() {
        throw null;
    }

    public void zzaX() {
        this.zzu.zzaW().zzaX();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Context zzaY() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Clock zzaZ() {
        throw null;
    }

    public void zzg() {
        this.zzu.zzaW().zzg();
    }
}
