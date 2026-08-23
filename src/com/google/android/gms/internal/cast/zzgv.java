package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes4.dex */
@TargetApi(16)
final class zzgv extends zzgw {
    private final Choreographer zza = Choreographer.getInstance();

    @Override // com.google.android.gms.internal.cast.zzgw
    public final void zza(zzgt zzgtVar) {
        this.zza.postFrameCallback(zzgtVar.zzb());
    }
}
