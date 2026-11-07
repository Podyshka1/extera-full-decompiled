package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.concurrent.locks.AbstractOwnableSynchronizer;

/* JADX INFO: loaded from: classes4.dex */
final class zzoy extends AbstractOwnableSynchronizer implements Runnable {
    private final zzpa zza;

    @Override // java.lang.Runnable
    public final void run() {
    }

    public final String toString() {
        return this.zza.toString();
    }

    public final /* synthetic */ void zza(Thread thread) {
        super.setExclusiveOwnerThread(thread);
    }
}
