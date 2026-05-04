package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class WorkInitializer {
    private final Executor executor;
    private final SynchronizationGuard guard;
    private final WorkScheduler scheduler;
    private final EventStore store;

    WorkInitializer(Executor executor, EventStore eventStore, WorkScheduler workScheduler, SynchronizationGuard synchronizationGuard) {
        this.executor = executor;
        this.store = eventStore;
        this.scheduler = workScheduler;
        this.guard = synchronizationGuard;
    }

    public void ensureContextsScheduled() {
        this.executor.execute(new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WorkInitializer workInitializer = this.f$0;
                workInitializer.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer$$ExternalSyntheticLambda1
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        return WorkInitializer.m2818$r8$lambda$ZllettEmXhg2KekoGpGM9ilHcY(workInitializer);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-ZllettEmXhg2KekoGpGM9ilHcY, reason: not valid java name */
    public static /* synthetic */ Object m2818$r8$lambda$ZllettEmXhg2KekoGpGM9ilHcY(WorkInitializer workInitializer) {
        Iterator it = workInitializer.store.loadActiveContexts().iterator();
        while (it.hasNext()) {
            workInitializer.scheduler.schedule((TransportContext) it.next(), 1);
        }
        return null;
    }
}
