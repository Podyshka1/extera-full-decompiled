package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
abstract class AbstractIterator implements Iterator {
    private Object next;
    private State state = State.NOT_READY;

    private enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected abstract Object computeNext();

    protected AbstractIterator() {
    }

    protected final Object endOfData() {
        this.state = State.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.state != State.FAILED);
        int iOrdinal = this.state.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            return tryToComputeNext();
        }
        return false;
    }

    private boolean tryToComputeNext() {
        this.state = State.FAILED;
        this.next = computeNext();
        if (this.state == State.DONE) {
            return false;
        }
        this.state = State.READY;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.state = State.NOT_READY;
        Object objUncheckedCastNullableTToT = NullnessCasts.uncheckedCastNullableTToT(this.next);
        this.next = null;
        return objUncheckedCastNullableTToT;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
