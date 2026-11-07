package com.google.android.gms.internal.cloudmessaging;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public class zzv extends Handler {
    public zzv(Looper looper) {
        super(looper);
        Looper.getMainLooper();
    }

    public zzv(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        Looper.getMainLooper();
    }
}
