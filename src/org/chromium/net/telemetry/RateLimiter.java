package org.chromium.net.telemetry;

import android.os.SystemClock;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class RateLimiter {
    private int mSamplesLoggedDuringSecond;
    private final int mSamplesPerSeconds;
    private final Object mLock = new Object();
    private long mLastPermitMillis = Long.MIN_VALUE;

    public RateLimiter(int i) {
        if (i <= 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Expect sample rate to be > 0 sample(s) per second");
            throw null;
        }
        this.mSamplesPerSeconds = i;
    }

    public boolean tryAcquire() {
        synchronized (this.mLock) {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (this.mLastPermitMillis + 1000 <= jElapsedRealtime) {
                    this.mSamplesLoggedDuringSecond = 1;
                    this.mLastPermitMillis = jElapsedRealtime;
                    return true;
                }
                int i = this.mSamplesLoggedDuringSecond;
                if (i >= this.mSamplesPerSeconds) {
                    return false;
                }
                this.mSamplesLoggedDuringSecond = i + 1;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
