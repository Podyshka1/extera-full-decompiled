package com.google.android.recaptcha.internal;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlu extends TimerTask {
    final /* synthetic */ zzlx zza;

    public zzlu(zzlx zzlxVar) {
        this.zza = zzlxVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        try {
            this.zza.zzg(0);
        } catch (Exception unused) {
        }
    }
}
