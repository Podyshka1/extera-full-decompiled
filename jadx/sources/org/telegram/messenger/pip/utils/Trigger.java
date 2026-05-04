package org.telegram.messenger.pip.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;
import org.telegram.messenger.ApplicationLoader;

/* JADX INFO: loaded from: classes5.dex */
public class Trigger implements Runnable {
    private final Callback action;
    private final Handler handler;
    private final Runnable timeoutRunnable;
    private final AtomicBoolean triggered = new AtomicBoolean(false);

    public interface Callback {
        void run(boolean z);
    }

    private Trigger(Handler handler, final Callback callback, long j) {
        this.handler = handler;
        this.action = callback;
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.pip.utils.Trigger$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(callback);
            }
        };
        this.timeoutRunnable = runnable;
        if (j > 0) {
            handler.postDelayed(runnable, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Callback callback) {
        if (this.triggered.compareAndSet(false, true)) {
            callback.run(true);
        }
    }

    public static Trigger run(Callback callback, long j) {
        return new Trigger(ApplicationLoader.applicationHandler, callback, j);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.triggered.compareAndSet(false, true)) {
            this.handler.removeCallbacks(this.timeoutRunnable);
            if (Looper.myLooper() == this.handler.getLooper()) {
                this.action.run(false);
            } else {
                this.handler.post(new Runnable() { // from class: org.telegram.messenger.pip.utils.Trigger$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$run$1();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$run$1() {
        this.action.run(false);
    }
}
