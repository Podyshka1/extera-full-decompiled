package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzgt {
    private Choreographer.FrameCallback zzb;

    public abstract void zza(long j);

    @TargetApi(16)
    public final Choreographer.FrameCallback zzb() {
        if (this.zzb == null) {
            this.zzb = new Choreographer.FrameCallback() { // from class: com.google.android.gms.internal.cast.zzgs
                @Override // android.view.Choreographer.FrameCallback
                public final /* synthetic */ void doFrame(long j) {
                    this.zza.zza(j);
                }
            };
        }
        return this.zzb;
    }
}
