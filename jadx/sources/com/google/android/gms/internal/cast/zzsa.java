package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzrg;

/* JADX INFO: loaded from: classes4.dex */
final class zzsa extends zzrg.zzi implements Runnable {
    private final Runnable zzb;

    public zzsa(Runnable runnable) {
        runnable.getClass();
        this.zzb = runnable;
    }

    @Override // com.google.android.gms.internal.cast.zzrg
    protected final String zze() {
        return "task=[" + this.zzb.toString() + "]";
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.run();
        } catch (Error | RuntimeException e) {
            zzl(e);
            throw e;
        }
    }
}
