package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zznb implements Runnable {
    final /* synthetic */ zznf zza;

    zznb(zznf zznfVar) {
        Objects.requireNonNull(zznfVar);
        this.zza = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zza.zza;
        zzic zzicVar = zznlVar.zzu;
        Context contextZzaY = zzicVar.zzaY();
        zzicVar.zzaU();
        zznlVar.zzW(new ComponentName(contextZzaY, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
