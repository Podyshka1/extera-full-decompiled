package com.google.android.recaptcha.internal;

import android.view.Window;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbd {
    private final Window zza;
    private final String zzb;
    private final zzav zzc;

    public zzbd(Window window, String str, zzav zzavVar) {
        this.zza = window;
        this.zzb = str;
        this.zzc = zzavVar;
    }

    public final void zza() {
        Window window = this.zza;
        window.setCallback(new zzbc(window.getCallback(), this));
    }
}
