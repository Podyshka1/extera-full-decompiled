package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzmz implements Runnable {
    final /* synthetic */ ComponentName zza;
    final /* synthetic */ zznf zzb;

    zzmz(zznf zznfVar, ComponentName componentName) {
        this.zza = componentName;
        Objects.requireNonNull(zznfVar);
        this.zzb = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza.zzW(this.zza);
    }
}
