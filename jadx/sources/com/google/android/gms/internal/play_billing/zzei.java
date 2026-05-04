package com.google.android.gms.internal.play_billing;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzei extends zzeg implements zzeu {
    protected zzei() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzeu
    public final void zzb(Runnable runnable, Executor executor) {
        zzd().zzb(runnable, executor);
    }

    protected abstract zzeu zzd();
}
