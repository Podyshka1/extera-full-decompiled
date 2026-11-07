package com.google.android.recaptcha.internal;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
final class zzia implements Executor {
    public static final zzia zza = new zzia();

    private zzia() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
