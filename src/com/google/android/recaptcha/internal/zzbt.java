package com.google.android.recaptcha.internal;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

/* JADX INFO: loaded from: classes5.dex */
final class zzbt implements ComponentCallbacks2 {
    final /* synthetic */ zzby zza;

    public zzbt(zzby zzbyVar) {
        this.zza = zzbyVar;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        zzby zzbyVar = this.zza;
        if (zzbyVar.zzc.zzc()) {
            return;
        }
        zzbyVar.zzd();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        zzby zzbyVar = this.zza;
        if (zzbyVar.zzc.zzc()) {
            return;
        }
        zzbyVar.zzd();
    }
}
