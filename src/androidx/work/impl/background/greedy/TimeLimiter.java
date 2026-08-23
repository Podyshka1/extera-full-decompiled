package androidx.work.impl.background.greedy;

import androidx.work.RunnableScheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkLauncher;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class TimeLimiter {
    private final WorkLauncher launcher;
    private final Object lock;
    private final RunnableScheduler runnableScheduler;
    private final long timeoutMs;
    private final Map tracked;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher launcher) {
        this(runnableScheduler, launcher, 0L, 4, null);
        Intrinsics.checkNotNullParameter(runnableScheduler, "runnableScheduler");
        Intrinsics.checkNotNullParameter(launcher, "launcher");
    }

    public TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher launcher, long j) {
        Intrinsics.checkNotNullParameter(runnableScheduler, "runnableScheduler");
        Intrinsics.checkNotNullParameter(launcher, "launcher");
        this.runnableScheduler = runnableScheduler;
        this.launcher = launcher;
        this.timeoutMs = j;
        this.lock = new Object();
        this.tracked = new LinkedHashMap();
    }

    public /* synthetic */ TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher workLauncher, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(runnableScheduler, workLauncher, (i & 4) != 0 ? TimeUnit.MINUTES.toMillis(90L) : j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void track$lambda$0(TimeLimiter timeLimiter, StartStopToken startStopToken) {
        timeLimiter.launcher.stopWork(startStopToken, 3);
    }

    public final void track(final StartStopToken token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Runnable runnable = new Runnable() { // from class: androidx.work.impl.background.greedy.TimeLimiter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TimeLimiter.track$lambda$0(this.f$0, token);
            }
        };
        synchronized (this.lock) {
        }
        this.runnableScheduler.scheduleWithDelay(this.timeoutMs, runnable);
    }

    public final void cancel(StartStopToken token) {
        Runnable runnable;
        Intrinsics.checkNotNullParameter(token, "token");
        synchronized (this.lock) {
            runnable = (Runnable) this.tracked.remove(token);
        }
        if (runnable != null) {
            this.runnableScheduler.cancel(runnable);
        }
    }
}
