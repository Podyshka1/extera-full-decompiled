package com.google.android.gms.internal.cloudmessaging;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class zzf extends Handler {
    private final Looper zza;

    public zzf(Looper looper) {
        super(looper);
        this.zza = Looper.getMainLooper();
    }

    public zzf(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.zza = Looper.getMainLooper();
    }
}
