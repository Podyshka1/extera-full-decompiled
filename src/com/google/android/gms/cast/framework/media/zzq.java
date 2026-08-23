package com.google.android.gms.cast.framework.media;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes4.dex */
final class zzq extends TimerTask {
    final /* synthetic */ MediaQueue zza;

    zzq(MediaQueue mediaQueue) {
        this.zza = mediaQueue;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        MediaQueue.zzj(this.zza);
    }
}
