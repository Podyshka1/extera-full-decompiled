package org.telegram.messenger;

import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseIntArray;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.LinkedList;
import org.telegram.ui.Components.Reactions.HwEmojis;

/* JADX INFO: loaded from: classes.dex */
public class DispatchQueuePool {
    private boolean cleanupScheduled;
    private int createdCount;
    private final int maxCount;
    private int totalTasksCount;
    private final LinkedList<DispatchQueue> queues = new LinkedList<>();
    private final SparseIntArray busyQueuesMap = new SparseIntArray();
    private final LinkedList<DispatchQueue> busyQueues = new LinkedList<>();
    private final Runnable cleanupRunnable = new Runnable() { // from class: org.telegram.messenger.DispatchQueuePool.1
        @Override // java.lang.Runnable
        public void run() {
            if (!DispatchQueuePool.this.queues.isEmpty()) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int size = DispatchQueuePool.this.queues.size();
                int i = 0;
                while (i < size) {
                    DispatchQueue dispatchQueue = (DispatchQueue) DispatchQueuePool.this.queues.get(i);
                    if (dispatchQueue.getLastTaskTime() < jElapsedRealtime - NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                        dispatchQueue.recycle();
                        DispatchQueuePool.this.queues.remove(i);
                        DispatchQueuePool.this.createdCount--;
                        i--;
                        size--;
                    }
                    i++;
                }
            }
            if (!DispatchQueuePool.this.queues.isEmpty() || !DispatchQueuePool.this.busyQueues.isEmpty()) {
                AndroidUtilities.runOnUIThread(this, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
                DispatchQueuePool.this.cleanupScheduled = true;
            } else {
                DispatchQueuePool.this.cleanupScheduled = false;
            }
        }
    };
    private final int guid = Utilities.random.nextInt();

    public DispatchQueuePool(int i) {
        this.maxCount = i;
    }

    /* JADX INFO: renamed from: execute, reason: merged with bridge method [inline-methods] */
    public void lambda$execute$0(final Runnable runnable) {
        final DispatchQueue dispatchQueueRemove;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.DispatchQueuePool$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$execute$0(runnable);
                }
            });
            return;
        }
        if (!this.busyQueues.isEmpty() && (this.totalTasksCount / 2 <= this.busyQueues.size() || (this.queues.isEmpty() && this.createdCount >= this.maxCount))) {
            dispatchQueueRemove = this.busyQueues.remove(0);
        } else if (this.queues.isEmpty()) {
            dispatchQueueRemove = new DispatchQueue("DispatchQueuePool" + this.guid + "_" + Utilities.random.nextInt());
            dispatchQueueRemove.setPriority(10);
            this.createdCount = this.createdCount + 1;
        } else {
            dispatchQueueRemove = this.queues.remove(0);
        }
        if (!this.cleanupScheduled) {
            AndroidUtilities.runOnUIThread(this.cleanupRunnable, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            this.cleanupScheduled = true;
        }
        this.totalTasksCount++;
        this.busyQueues.add(dispatchQueueRemove);
        this.busyQueuesMap.put(dispatchQueueRemove.index, this.busyQueuesMap.get(dispatchQueueRemove.index, 0) + 1);
        if (HwEmojis.isHwEnabled()) {
            dispatchQueueRemove.setPriority(1);
        } else if (dispatchQueueRemove.getPriority() != 10) {
            dispatchQueueRemove.setPriority(10);
        }
        dispatchQueueRemove.postRunnable(new Runnable() { // from class: org.telegram.messenger.DispatchQueuePool$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$execute$2(runnable, dispatchQueueRemove);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$2(Runnable runnable, final DispatchQueue dispatchQueue) {
        runnable.run();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.DispatchQueuePool$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$execute$1(dispatchQueue);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$1(DispatchQueue dispatchQueue) {
        this.totalTasksCount--;
        int i = this.busyQueuesMap.get(dispatchQueue.index) - 1;
        SparseIntArray sparseIntArray = this.busyQueuesMap;
        if (i == 0) {
            sparseIntArray.delete(dispatchQueue.index);
            this.busyQueues.remove(dispatchQueue);
            this.queues.add(dispatchQueue);
            return;
        }
        sparseIntArray.put(dispatchQueue.index, i);
    }
}
