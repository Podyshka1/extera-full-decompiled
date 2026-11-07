package com.google.android.gms.internal.play_billing;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
final class zzdb implements Runnable {
    zzde zza;

    public zzdb(zzde zzdeVar) {
        this.zza = zzdeVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcz zzczVar;
        zzde zzdeVar = this.zza;
        if (zzdeVar == null || (zzczVar = zzdeVar.zzd) == null) {
            return;
        }
        this.zza = null;
        if (zzczVar.isDone()) {
            zzdeVar.zzj(zzczVar);
            return;
        }
        try {
            ScheduledFuture scheduledFuture = zzdeVar.zze;
            zzdeVar.zze = null;
            String str = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                    }
                } catch (Throwable th) {
                    zzdeVar.zzi(new zzdc(str, null));
                    throw th;
                }
            }
            zzdeVar.zzi(new zzdc(str + ": " + zzczVar.toString(), null));
        } finally {
            zzczVar.cancel(true);
        }
    }
}
