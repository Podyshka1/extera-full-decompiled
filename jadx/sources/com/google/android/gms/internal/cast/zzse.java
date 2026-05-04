package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: loaded from: classes4.dex */
final class zzse extends zzrm implements RunnableFuture {
    private volatile zzrw zzb;

    zzse(Callable callable) {
        this.zzb = new zzsd(this, callable);
    }

    static zzse zzn(Runnable runnable, Object obj) {
        return new zzse(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzrw zzrwVar = this.zzb;
        if (zzrwVar != null) {
            zzrwVar.run();
        }
        this.zzb = null;
    }

    @Override // com.google.android.gms.internal.cast.zzrg
    protected final String zze() {
        zzrw zzrwVar = this.zzb;
        if (zzrwVar == null) {
            return super.zze();
        }
        return "task=[" + zzrwVar.toString() + "]";
    }

    @Override // com.google.android.gms.internal.cast.zzrg
    protected final void zzj() {
        zzrw zzrwVar;
        if (zzm() && (zzrwVar = this.zzb) != null) {
            zzrwVar.zze();
        }
        this.zzb = null;
    }
}
