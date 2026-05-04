package com.google.firebase.concurrent;

import androidx.concurrent.futures.AbstractResolvableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
class DelegatingScheduledFuture extends AbstractResolvableFuture implements ScheduledFuture {
    private final ScheduledFuture upstreamFuture;

    interface Completer {
        void set(Object obj);

        void setException(Throwable th);
    }

    interface Resolver {
        ScheduledFuture addCompleter(Completer completer);
    }

    DelegatingScheduledFuture(Resolver resolver) {
        this.upstreamFuture = resolver.addCompleter(new Completer() { // from class: com.google.firebase.concurrent.DelegatingScheduledFuture.1
            @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Completer
            public void set(Object obj) {
                DelegatingScheduledFuture.this.set(obj);
            }

            @Override // com.google.firebase.concurrent.DelegatingScheduledFuture.Completer
            public void setException(Throwable th) {
                DelegatingScheduledFuture.this.setException(th);
            }
        });
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    protected void afterDone() {
        this.upstreamFuture.cancel(wasInterrupted());
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return this.upstreamFuture.getDelay(timeUnit);
    }

    @Override // java.lang.Comparable
    public int compareTo(Delayed delayed) {
        return this.upstreamFuture.compareTo(delayed);
    }
}
