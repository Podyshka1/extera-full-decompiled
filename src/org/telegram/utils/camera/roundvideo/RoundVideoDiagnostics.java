package org.telegram.utils.camera.roundvideo;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicLong;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes6.dex */
final class RoundVideoDiagnostics {
    private static final AtomicLong NEXT_SESSION_ID = new AtomicLong(1);
    private final long sessionId = NEXT_SESSION_ID.getAndIncrement();
    private final long startedAtMs = SystemClock.elapsedRealtime();

    public void log(String str) {
        FileLog.m989d(prefix() + str);
    }

    public void error(String str, Throwable th) {
        FileLog.m990e(prefix() + str + ": " + th);
        FileLog.m992e(th);
    }

    private String prefix() {
        return "RoundVideo[" + this.sessionId + "] t+" + (SystemClock.elapsedRealtime() - this.startedAtMs) + "ms [" + Thread.currentThread().getName() + "] ";
    }
}
