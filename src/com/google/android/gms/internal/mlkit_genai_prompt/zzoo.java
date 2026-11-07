package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzoo extends zzmc implements Future {
    @Override // java.util.concurrent.Future
    public final Object get() {
        return zzb().get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return zzb().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return zzb().isDone();
    }

    public abstract Future zzb();

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return zzb().get(j, timeUnit);
    }
}
