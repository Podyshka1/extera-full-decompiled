package com.yandex.runtime.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
public final class Scheduler extends Handler {
    private static native void run(long j);

    public Scheduler() {
        super(Looper.getMainLooper());
        post(new Runnable() { // from class: com.yandex.runtime.internal.Scheduler.1
            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(-8);
            }
        });
    }

    public void schedule(long j, long j2) {
        sendMessageDelayed(Message.obtain(this, 0, new Long(j)), j2);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        run(((Long) message.obj).longValue());
    }
}
