package com.google.common.util.concurrent;

import androidx.concurrent.futures.AbstractC0328xc40028dd;
import com.google.common.collect.Sets;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes5.dex */
abstract class AggregateFutureState<OutputT> extends AbstractFuture.TrustedFuture<OutputT> {
    volatile int remainingField;
    volatile Set<Throwable> seenExceptionsField = null;
    private static final AtomicReferenceFieldUpdater<? super AggregateFutureState<?>, ? super Set<Throwable>> SEEN_EXCEPTIONS_UPDATER = AtomicReferenceFieldUpdater.newUpdater(AggregateFutureState.class, Set.class, "seenExceptionsField");
    private static final AtomicIntegerFieldUpdater<? super AggregateFutureState<?>> REMAINING_COUNT_UPDATER = AtomicIntegerFieldUpdater.newUpdater(AggregateFutureState.class, "remainingField");

    public abstract void addInitialException(Set<Throwable> set);

    public AggregateFutureState(int i) {
        this.remainingField = i;
    }

    public final Set<Throwable> getOrInitSeenExceptions() {
        Set<Throwable> set = this.seenExceptionsField;
        if (set != null) {
            return set;
        }
        Set<Throwable> setNewConcurrentHashSet = Sets.newConcurrentHashSet();
        addInitialException(setNewConcurrentHashSet);
        AbstractC0328xc40028dd.m88m(SEEN_EXCEPTIONS_UPDATER, this, null, setNewConcurrentHashSet);
        Set<Throwable> set2 = this.seenExceptionsField;
        Objects.requireNonNull(set2);
        return set2;
    }

    public final int decrementRemainingAndGet() {
        return REMAINING_COUNT_UPDATER.decrementAndGet(this);
    }

    public final void clearSeenExceptions() {
        this.seenExceptionsField = null;
    }
}
