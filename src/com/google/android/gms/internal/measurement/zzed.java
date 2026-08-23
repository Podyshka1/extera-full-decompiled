package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzed implements ThreadFactory {
    private final ThreadFactory zza;

    zzed(zzfb zzfbVar) {
        Objects.requireNonNull(zzfbVar);
        this.zza = Executors.defaultThreadFactory();
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zza.newThread(runnable);
        threadNewThread.setName("ScionFrontendApi");
        return threadNewThread;
    }
}
