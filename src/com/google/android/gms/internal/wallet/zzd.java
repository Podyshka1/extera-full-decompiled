package com.google.android.gms.internal.wallet;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd extends Handler {
    private final Looper zza;

    public zzd(Looper looper) {
        super(looper);
        this.zza = Looper.getMainLooper();
    }
}
