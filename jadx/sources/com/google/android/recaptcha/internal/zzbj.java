package com.google.android.recaptcha.internal;

import java.util.TimerTask;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbj extends TimerTask {
    final /* synthetic */ zzbm zza;

    public zzbj(zzbm zzbmVar) {
        this.zza = zzbmVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        zzbm zzbmVar = this.zza;
        BuildersKt__Builders_commonKt.launch$default(zzbmVar.zzd, null, null, new zzbk(zzbmVar, null), 3, null);
    }
}
