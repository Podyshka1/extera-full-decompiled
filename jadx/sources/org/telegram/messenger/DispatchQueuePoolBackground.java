package org.telegram.messenger;

import android.os.SystemClock;
import android.util.SparseIntArray;
import java.util.ArrayList;
import org.telegram.p029ui.Components.Reactions.HwEmojis;

/* JADX INFO: loaded from: classes.dex */
public class DispatchQueuePoolBackground {
    public static final String THREAD_PREFIX = "DispatchQueuePoolThreadSafety_";
    private static DispatchQueuePoolBackground backgroundQueue;
    static ArrayList<Runnable> updateTaskCollection;
    private boolean cleanupScheduled;
    private int createdCount;
    private final int maxCount;
    private int totalTasksCount;
    private static final ArrayList<ArrayList<Runnable>> freeCollections = new ArrayList<>();
    private static final Runnable finishCollectUpdateRunnable = new Runnable() { // from class: org.telegram.messenger.DispatchQueuePoolBackground$$ExternalSyntheticLambda4
        @Override // java.lang.Runnable
        public final void run() {
            DispatchQueuePoolBackground.finishCollectUpdateRunnables();
        }
    };
    private final ArrayList<DispatchQueue> queues = new ArrayList<>(10);
    private final SparseIntArray busyQueuesMap = new SparseIntArray();
    private final ArrayList<DispatchQueue> busyQueues = new ArrayList<>(10);
    private final Runnable cleanupRunnable = new Runnable() { // from class: org.telegram.messenger.DispatchQueuePoolBackground.1
        @Override // java.lang.Runnable
        public void run() {
            if (!DispatchQueuePoolBackground.this.queues.isEmpty()) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int i = 0;
                while (i < DispatchQueuePoolBackground.this.queues.size()) {
                    DispatchQueue dispatchQueue = (DispatchQueue) DispatchQueuePoolBackground.this.queues.get(i);
                    if (dispatchQueue.getLastTaskTime() < jElapsedRealtime - 30000) {
                        dispatchQueue.recycle();
                        DispatchQueuePoolBackground.this.queues.remove(i);
                        DispatchQueuePoolBackground.this.createdCount--;
                        i--;
                    }
                    i++;
                }
            }
            if (!DispatchQueuePoolBackground.this.queues.isEmpty() || !DispatchQueuePoolBackground.this.busyQueues.isEmpty()) {
                Utilities.globalQueue.postRunnable(this, 30000L);
                DispatchQueuePoolBackground.this.cleanupScheduled = true;
            } else {
                DispatchQueuePoolBackground.this.cleanupScheduled = false;
            }
        }
    };
    private final int guid = Utilities.random.nextInt();

    private DispatchQueuePoolBackground(int i) {
        this.maxCount = i;
    }

    private void execute(ArrayList<Runnable> arrayList) {
        final DispatchQueue dispatchQueueRemove;
        for (int i = 0; i < arrayList.size(); i++) {
            final Runnable runnable = arrayList.get(i);
            if (runnable != null) {
                if (!this.busyQueues.isEmpty() && (this.totalTasksCount / 2 <= this.busyQueues.size() || (this.queues.isEmpty() && this.createdCount >= this.maxCount))) {
                    dispatchQueueRemove = this.busyQueues.remove(0);
                } else if (this.queues.isEmpty()) {
                    dispatchQueueRemove = new DispatchQueue(THREAD_PREFIX + this.guid + "_" + Utilities.random.nextInt());
                    dispatchQueueRemove.setPriority(10);
                    this.createdCount = this.createdCount + 1;
                } else {
                    dispatchQueueRemove = this.queues.remove(0);
                }
                if (!this.cleanupScheduled) {
                    Utilities.globalQueue.postRunnable(this.cleanupRunnable, 30000L);
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
                dispatchQueueRemove.postRunnable(new Runnable() { // from class: org.telegram.messenger.DispatchQueuePoolBackground$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$execute$1(runnable, dispatchQueueRemove);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$1(Runnable runnable, final DispatchQueue dispatchQueue) {
        runnable.run();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.DispatchQueuePoolBackground$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$execute$0(dispatchQueue);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execute$0(DispatchQueue dispatchQueue) {
        this.totalTasksCount--;
        int i = this.busyQueuesMap.get(dispatchQueue.index) - 1;
        if (i == 0) {
            this.busyQueuesMap.delete(dispatchQueue.index);
            this.busyQueues.remove(dispatchQueue);
            this.queues.add(dispatchQueue);
            return;
        }
        this.busyQueuesMap.put(dispatchQueue.index, i);
    }

    public static void execute(Runnable runnable) {
        execute(runnable, false);
    }

    public static void execute(Runnable runnable, boolean z) {
        if (Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m1136e(new RuntimeException("wrong thread"));
                return;
            }
            return;
        }
        if (updateTaskCollection == null) {
            ArrayList<ArrayList<Runnable>> arrayList = freeCollections;
            if (!arrayList.isEmpty()) {
                updateTaskCollection = arrayList.remove(arrayList.size() - 1);
            } else {
                updateTaskCollection = new ArrayList<>(100);
            }
            if (!z) {
                AndroidUtilities.runOnUIThread(finishCollectUpdateRunnable);
            }
        }
        updateTaskCollection.add(runnable);
        if (z) {
            Runnable runnable2 = finishCollectUpdateRunnable;
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            runnable2.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void finishCollectUpdateRunnables() {
        ArrayList<Runnable> arrayList = updateTaskCollection;
        if (arrayList == null || arrayList.isEmpty()) {
            updateTaskCollection = null;
            return;
        }
        final ArrayList<Runnable> arrayList2 = updateTaskCollection;
        updateTaskCollection = null;
        if (backgroundQueue == null) {
            backgroundQueue = new DispatchQueuePoolBackground(Math.max(1, Runtime.getRuntime().availableProcessors()));
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.DispatchQueuePoolBackground$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DispatchQueuePoolBackground.m4009$r8$lambda$olCmqjv06XbZi7A_RYb7NkHJQA(arrayList2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$o-lCmqjv06XbZi7A_RYb7NkHJQA, reason: not valid java name */
    public static /* synthetic */ void m4009$r8$lambda$olCmqjv06XbZi7A_RYb7NkHJQA(final ArrayList arrayList) {
        backgroundQueue.execute((ArrayList<Runnable>) arrayList);
        arrayList.clear();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.DispatchQueuePoolBackground$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                DispatchQueuePoolBackground.freeCollections.add(arrayList);
            }
        });
    }
}
