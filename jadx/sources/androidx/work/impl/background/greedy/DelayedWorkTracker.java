package androidx.work.impl.background.greedy;

import androidx.work.Clock;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DelayedWorkTracker {
    static final String TAG = Logger.tagWithPrefix("DelayedWorkTracker");
    private final Clock mClock;
    final Scheduler mImmediateScheduler;
    private final RunnableScheduler mRunnableScheduler;
    private final Map mRunnables = new HashMap();

    public DelayedWorkTracker(Scheduler scheduler, RunnableScheduler runnableScheduler, Clock clock) {
        this.mImmediateScheduler = scheduler;
        this.mRunnableScheduler = runnableScheduler;
        this.mClock = clock;
    }

    public void schedule(final WorkSpec workSpec, long j) {
        Runnable runnable = (Runnable) this.mRunnables.remove(workSpec.f76id);
        if (runnable != null) {
            this.mRunnableScheduler.cancel(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: androidx.work.impl.background.greedy.DelayedWorkTracker.1
            @Override // java.lang.Runnable
            public void run() {
                Logger.get().debug(DelayedWorkTracker.TAG, "Scheduling work " + workSpec.f76id);
                DelayedWorkTracker.this.mImmediateScheduler.schedule(workSpec);
            }
        };
        this.mRunnables.put(workSpec.f76id, runnable2);
        this.mRunnableScheduler.scheduleWithDelay(j - this.mClock.currentTimeMillis(), runnable2);
    }

    public void unschedule(String str) {
        Runnable runnable = (Runnable) this.mRunnables.remove(str);
        if (runnable != null) {
            this.mRunnableScheduler.cancel(runnable);
        }
    }
}
