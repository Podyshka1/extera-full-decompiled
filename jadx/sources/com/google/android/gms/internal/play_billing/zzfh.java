package com.google.android.gms.internal.play_billing;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: loaded from: classes4.dex */
final class zzfh extends zzee implements RunnableFuture {
    private volatile zzes zzc;

    zzfh(Callable callable) {
        this.zzc = new zzfg(this, callable);
    }

    static zzfh zzr(Runnable runnable, Object obj) {
        return new zzfh(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzes zzesVar = this.zzc;
        if (zzesVar != null) {
            zzesVar.run();
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdy
    protected final String zzg() {
        zzes zzesVar = this.zzc;
        if (zzesVar == null) {
            return super.zzg();
        }
        return "task=[" + zzesVar.toString() + "]";
    }

    @Override // com.google.android.gms.internal.play_billing.zzdy
    protected final void zzm() {
        zzes zzesVar;
        if (zzq() && (zzesVar = this.zzc) != null) {
            zzesVar.zze();
        }
        this.zzc = null;
    }
}
