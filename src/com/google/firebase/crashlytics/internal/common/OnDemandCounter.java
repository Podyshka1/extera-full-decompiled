package com.google.firebase.crashlytics.internal.common;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class OnDemandCounter {
    private final AtomicInteger recordedOnDemandExceptions = new AtomicInteger();
    private final AtomicInteger droppedOnDemandExceptions = new AtomicInteger();

    public void incrementRecordedOnDemandExceptions() {
        this.recordedOnDemandExceptions.getAndIncrement();
    }

    public void incrementDroppedOnDemandExceptions() {
        this.droppedOnDemandExceptions.getAndIncrement();
    }

    public void resetDroppedOnDemandExceptions() {
        this.droppedOnDemandExceptions.set(0);
    }
}
