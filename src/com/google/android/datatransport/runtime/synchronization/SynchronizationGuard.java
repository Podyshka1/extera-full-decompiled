package com.google.android.datatransport.runtime.synchronization;

/* JADX INFO: loaded from: classes.dex */
public interface SynchronizationGuard {

    public interface CriticalSection {
        Object execute();
    }

    Object runCriticalSection(CriticalSection criticalSection);
}
