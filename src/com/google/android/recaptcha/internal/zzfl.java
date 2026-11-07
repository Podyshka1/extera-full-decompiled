package com.google.android.recaptcha.internal;

import java.util.TimerTask;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfl extends TimerTask {
    final /* synthetic */ zzfp zza;
    final /* synthetic */ zzmg zzb;

    public zzfl(zzfp zzfpVar, zzmg zzmgVar) {
        this.zza = zzfpVar;
        this.zzb = zzmgVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        zzfp zzfpVar = this.zza;
        BuildersKt__Builders_commonKt.launch$default(zzfpVar.zzg.zzd(), null, null, new zzfk(zzfpVar, this.zzb, null), 3, null);
    }
}
