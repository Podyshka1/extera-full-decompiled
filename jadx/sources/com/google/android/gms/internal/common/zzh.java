package com.google.android.gms.internal.common;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class zzh extends Handler {
    private final Looper zza;

    public zzh(Looper looper) {
        super(looper);
        this.zza = Looper.getMainLooper();
    }

    public zzh(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.zza = Looper.getMainLooper();
    }
}
