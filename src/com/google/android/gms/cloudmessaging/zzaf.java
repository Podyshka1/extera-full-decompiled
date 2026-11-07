package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class zzaf implements Executor {
    static final /* synthetic */ zzaf zza = new zzaf();

    private /* synthetic */ zzaf() {
    }

    @Override // java.util.concurrent.Executor
    public final /* synthetic */ void execute(Runnable runnable) {
        runnable.run();
    }
}
