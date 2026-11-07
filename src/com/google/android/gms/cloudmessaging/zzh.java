package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzh implements Executor {
    static final /* synthetic */ zzh zza = new zzh();

    private /* synthetic */ zzh() {
    }

    @Override // java.util.concurrent.Executor
    public final /* synthetic */ void execute(Runnable runnable) {
        runnable.run();
    }
}
