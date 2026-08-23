package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.util.FlagSet;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes4.dex */
public final class ListenerSet<T> {
    private final Clock clock;
    private final ArrayDeque<Runnable> flushingEvents;
    private final HandlerWrapper handler;
    private final IterationFinishedEvent<T> iterationFinishedEvent;
    private final CopyOnWriteArraySet<ListenerHolder<T>> listeners;
    private final ArrayDeque<Runnable> queuedEvents;
    private boolean released;
    private final Object releasedLock;
    private boolean throwsWhenUsingWrongThread;

    public interface Event<T> {
        void invoke(T t);
    }

    public interface IterationFinishedEvent<T> {
        void invoke(T t, FlagSet flagSet);
    }

    public ListenerSet(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        this(new CopyOnWriteArraySet(), looper, clock, iterationFinishedEvent);
    }

    private ListenerSet(CopyOnWriteArraySet<ListenerHolder<T>> copyOnWriteArraySet, Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        this.clock = clock;
        this.listeners = copyOnWriteArraySet;
        this.iterationFinishedEvent = iterationFinishedEvent;
        this.releasedLock = new Object();
        this.flushingEvents = new ArrayDeque<>();
        this.queuedEvents = new ArrayDeque<>();
        this.handler = clock.createHandler(looper, new Handler.Callback() { // from class: com.google.android.exoplayer2.util.ListenerSet$$ExternalSyntheticLambda1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f$0.handleMessage(message);
            }
        });
        this.throwsWhenUsingWrongThread = true;
    }

    public ListenerSet<T> copy(Looper looper, IterationFinishedEvent<T> iterationFinishedEvent) {
        return copy(looper, this.clock, iterationFinishedEvent);
    }

    public ListenerSet<T> copy(Looper looper, Clock clock, IterationFinishedEvent<T> iterationFinishedEvent) {
        return new ListenerSet<>(this.listeners, looper, clock, iterationFinishedEvent);
    }

    public void add(T t) {
        Assertions.checkNotNull(t);
        synchronized (this.releasedLock) {
            try {
                if (this.released) {
                    return;
                }
                this.listeners.add(new ListenerHolder<>(t));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void remove(T t) {
        verifyCurrentThread();
        for (ListenerHolder<T> listenerHolder : this.listeners) {
            if (listenerHolder.listener.equals(t)) {
                listenerHolder.release(this.iterationFinishedEvent);
                this.listeners.remove(listenerHolder);
            }
        }
    }

    public void queueEvent(final int i, final Event<T> event) {
        verifyCurrentThread();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.listeners);
        this.queuedEvents.add(new Runnable() { // from class: com.google.android.exoplayer2.util.ListenerSet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ListenerSet.$r8$lambda$AHn9s3qXpdWTkpx2n1DyAlVZ5wI(copyOnWriteArraySet, i, event);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$AHn9s3qXpdWTkpx2n1DyAlVZ5wI(CopyOnWriteArraySet copyOnWriteArraySet, int i, Event event) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((ListenerHolder) it.next()).invoke(i, event);
        }
    }

    public void flushEvents() {
        verifyCurrentThread();
        if (this.queuedEvents.isEmpty()) {
            return;
        }
        if (!this.handler.hasMessages(0)) {
            HandlerWrapper handlerWrapper = this.handler;
            handlerWrapper.sendMessageAtFrontOfQueue(handlerWrapper.obtainMessage(0));
        }
        boolean zIsEmpty = this.flushingEvents.isEmpty();
        this.flushingEvents.addAll(this.queuedEvents);
        this.queuedEvents.clear();
        if (zIsEmpty) {
            while (!this.flushingEvents.isEmpty()) {
                this.flushingEvents.peekFirst().run();
                this.flushingEvents.removeFirst();
            }
        }
    }

    public void sendEvent(int i, Event<T> event) {
        queueEvent(i, event);
        flushEvents();
    }

    public void release() {
        verifyCurrentThread();
        synchronized (this.releasedLock) {
            this.released = true;
        }
        Iterator<ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().release(this.iterationFinishedEvent);
        }
        this.listeners.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        Iterator<ListenerHolder<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().iterationFinished(this.iterationFinishedEvent);
            if (this.handler.hasMessages(0)) {
                return true;
            }
        }
        return true;
    }

    private void verifyCurrentThread() {
        if (this.throwsWhenUsingWrongThread) {
            Assertions.checkState(Thread.currentThread() == this.handler.getLooper().getThread());
        }
    }

    public static final class ListenerHolder<T> {
        private FlagSet.Builder flagsBuilder = new FlagSet.Builder();
        public final T listener;
        private boolean needsIterationFinishedEvent;
        private boolean released;

        public ListenerHolder(T t) {
            this.listener = t;
        }

        public void release(IterationFinishedEvent<T> iterationFinishedEvent) {
            this.released = true;
            if (this.needsIterationFinishedEvent) {
                this.needsIterationFinishedEvent = false;
                iterationFinishedEvent.invoke(this.listener, this.flagsBuilder.build());
            }
        }

        public void invoke(int i, Event<T> event) {
            if (this.released) {
                return;
            }
            if (i != -1) {
                this.flagsBuilder.add(i);
            }
            this.needsIterationFinishedEvent = true;
            event.invoke(this.listener);
        }

        public void iterationFinished(IterationFinishedEvent<T> iterationFinishedEvent) {
            if (this.released || !this.needsIterationFinishedEvent) {
                return;
            }
            FlagSet flagSetBuild = this.flagsBuilder.build();
            this.flagsBuilder = new FlagSet.Builder();
            this.needsIterationFinishedEvent = false;
            iterationFinishedEvent.invoke(this.listener, flagSetBuild);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ListenerHolder.class != obj.getClass()) {
                return false;
            }
            return this.listener.equals(((ListenerHolder) obj).listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }
    }
}
