package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import com.google.firebase.crashlytics.internal.Logger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class BlockingAnalyticsEventLogger implements AnalyticsEventReceiver, AnalyticsEventLogger {
    private final CrashlyticsOriginAnalyticsEventLogger baseAnalyticsEventLogger;
    private CountDownLatch eventLatch;
    private final TimeUnit timeUnit;
    private final int timeout;
    private final Object latchLock = new Object();
    private boolean callbackReceived = false;

    public BlockingAnalyticsEventLogger(CrashlyticsOriginAnalyticsEventLogger crashlyticsOriginAnalyticsEventLogger, int i, TimeUnit timeUnit) {
        this.baseAnalyticsEventLogger = crashlyticsOriginAnalyticsEventLogger;
        this.timeout = i;
        this.timeUnit = timeUnit;
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger
    public void logEvent(String str, Bundle bundle) {
        synchronized (this.latchLock) {
            try {
                Logger.getLogger().m507v("Logging event " + str + " to Firebase Analytics with params " + bundle);
                this.eventLatch = new CountDownLatch(1);
                this.callbackReceived = false;
                this.baseAnalyticsEventLogger.logEvent(str, bundle);
                Logger.getLogger().m507v("Awaiting app exception callback from Analytics...");
                try {
                    if (this.eventLatch.await(this.timeout, this.timeUnit)) {
                        this.callbackReceived = true;
                        Logger.getLogger().m507v("App exception callback received from Analytics listener.");
                    } else {
                        Logger.getLogger().m509w("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                    }
                } catch (InterruptedException unused) {
                    Logger.getLogger().m503e("Interrupted while awaiting app exception callback from Analytics listener.");
                }
                this.eventLatch = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventReceiver
    public void onEvent(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.eventLatch;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
