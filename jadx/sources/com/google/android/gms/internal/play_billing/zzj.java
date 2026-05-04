package com.google.android.gms.internal.play_billing;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
final class zzj {
    static final zzj zza = new zzj(null, null);
    final Runnable zzb;
    final Executor zzc;
    zzj zzd;

    zzj(Runnable runnable, Executor executor) {
        this.zzb = runnable;
        this.zzc = executor;
    }
}
