package com.google.android.gms.internal.mlkit_genai_prompt;

import android.app.ActivityManager;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzed {
    public static final ListenableFuture zza(final int i, Executor executor) {
        return zzot.zzd(new Callable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzec
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                ActivityManager.getMyMemoryState(runningAppProcessInfo);
                return Boolean.valueOf(runningAppProcessInfo.importance <= i);
            }
        }, executor);
    }
}
