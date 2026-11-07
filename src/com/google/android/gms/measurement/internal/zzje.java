package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzje implements zzjg {
    protected final zzic zzu;

    public zzje(zzic zzicVar) {
        Preconditions.checkNotNull(zzicVar);
        this.zzu = zzicVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final zzae zzaV() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final zzgu zzaW() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final zzhz zzaX() {
        throw null;
    }

    public void zzaY() {
        this.zzu.zzaX().zzaY();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final Context zzaZ() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    @Pure
    public final Clock zzba() {
        throw null;
    }

    public void zzg() {
        this.zzu.zzaX().zzg();
    }
}
