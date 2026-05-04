package androidx.work.impl.utils;

import androidx.work.Logger;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class StopWorkRunnable implements Runnable {
    private final Processor processor;
    private final int reason;
    private final boolean stopInForeground;
    private final StartStopToken token;

    public StopWorkRunnable(Processor processor, StartStopToken token, boolean z, int i) {
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(token, "token");
        this.processor = processor;
        this.token = token;
        this.stopInForeground = z;
        this.reason = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zStopWork;
        if (this.stopInForeground) {
            zStopWork = this.processor.stopForegroundWork(this.token, this.reason);
        } else {
            zStopWork = this.processor.stopWork(this.token, this.reason);
        }
        Logger.get().debug(Logger.tagWithPrefix("StopWorkRunnable"), "StopWorkRunnable for " + this.token.getId().getWorkSpecId() + "; Processor.stopWork = " + zStopWork);
    }
}
