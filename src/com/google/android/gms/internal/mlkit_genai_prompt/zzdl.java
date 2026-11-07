package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdl implements Executor {
    public static final zzdl zza = new zzdl();
    private final Handler zzb = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.zzb.post(runnable);
    }
}
