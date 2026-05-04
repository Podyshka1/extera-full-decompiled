package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class AsyncTimeout extends Timeout {
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int STATE_CANCELED = 3;
    private static final int STATE_IDLE = 0;
    private static final int STATE_IN_QUEUE = 1;
    private static final int STATE_TIMED_OUT = 2;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static final Condition condition;
    private static AsyncTimeout idleSentinel;
    private static final ReentrantLock lock;
    public int index = -1;
    private int state;
    private long timeoutAt;
    private static final Companion Companion = new Companion(null);
    private static final PriorityQueue queue = new PriorityQueue();

    protected void timedOut() {
    }

    public final long getTimeoutAt$okio() {
        return this.timeoutAt;
    }

    public final void enter() {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            ReentrantLock reentrantLock = lock;
            reentrantLock.lock();
            try {
                if (this.state != 0) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.state = 1;
                Companion.insertIntoQueue(this);
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final boolean exit() {
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            int i = this.state;
            this.state = 0;
            if (i != 1) {
                return i == 2;
            }
            queue.remove(this);
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // okio.Timeout
    public void cancel() {
        super.cancel();
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            if (this.state == 1) {
                queue.remove(this);
                this.state = 3;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final long remainingNanos$okio(long j) {
        return this.timeoutAt - j;
    }

    public static /* synthetic */ void setTimeoutAt$okio$default(AsyncTimeout asyncTimeout, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setTimeoutAt");
        }
        if ((i & 1) != 0) {
            j = System.nanoTime();
        }
        asyncTimeout.setTimeoutAt$okio(j);
    }

    public final void setTimeoutAt$okio(long j) {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (timeoutNanos() != 0 && hasDeadline()) {
            this.timeoutAt = j + Math.min(jTimeoutNanos, deadlineNanoTime() - j);
        } else if (jTimeoutNanos != 0) {
            this.timeoutAt = j + jTimeoutNanos;
        } else {
            if (zHasDeadline) {
                this.timeoutAt = deadlineNanoTime();
                return;
            }
            throw new AssertionError();
        }
    }

    public final Sink sink(final Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return new Sink() { // from class: okio.AsyncTimeout.sink.1
            @Override // okio.Sink
            public void write(Buffer source, long j) throws IOException {
                Intrinsics.checkNotNullParameter(source, "source");
                SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j);
                while (true) {
                    long j2 = 0;
                    if (j <= 0) {
                        return;
                    }
                    Segment segment = source.head;
                    Intrinsics.checkNotNull(segment);
                    while (true) {
                        if (j2 >= 65536) {
                            break;
                        }
                        j2 += (long) (segment.limit - segment.pos);
                        if (j2 >= j) {
                            j2 = j;
                            break;
                        } else {
                            segment = segment.next;
                            Intrinsics.checkNotNull(segment);
                        }
                    }
                    AsyncTimeout asyncTimeout = AsyncTimeout.this;
                    Sink sink2 = sink;
                    asyncTimeout.enter();
                    try {
                        try {
                            sink2.write(source, j2);
                            Unit unit = Unit.INSTANCE;
                            if (asyncTimeout.exit()) {
                                throw asyncTimeout.access$newTimeoutException(null);
                            }
                            j -= j2;
                        } catch (IOException e) {
                            if (!asyncTimeout.exit()) {
                                throw e;
                            }
                            throw asyncTimeout.access$newTimeoutException(e);
                        }
                    } catch (Throwable th) {
                        asyncTimeout.exit();
                        throw th;
                    }
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() throws IOException {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                Sink sink2 = sink;
                asyncTimeout.enter();
                try {
                    sink2.flush();
                    Unit unit = Unit.INSTANCE;
                    if (asyncTimeout.exit()) {
                        throw asyncTimeout.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    if (!asyncTimeout.exit()) {
                        throw e;
                    }
                    throw asyncTimeout.access$newTimeoutException(e);
                } finally {
                    asyncTimeout.exit();
                }
            }

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                Sink sink2 = sink;
                asyncTimeout.enter();
                try {
                    sink2.close();
                    Unit unit = Unit.INSTANCE;
                    if (asyncTimeout.exit()) {
                        throw asyncTimeout.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    if (!asyncTimeout.exit()) {
                        throw e;
                    }
                    throw asyncTimeout.access$newTimeoutException(e);
                } finally {
                    asyncTimeout.exit();
                }
            }

            @Override // okio.Sink
            public AsyncTimeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + sink + ')';
            }
        };
    }

    public final Source source(final Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new Source() { // from class: okio.AsyncTimeout.source.1
            @Override // okio.Source
            public long read(Buffer sink, long j) throws IOException {
                Intrinsics.checkNotNullParameter(sink, "sink");
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                Source source2 = source;
                asyncTimeout.enter();
                try {
                    long j2 = source2.read(sink, j);
                    if (asyncTimeout.exit()) {
                        throw asyncTimeout.access$newTimeoutException(null);
                    }
                    return j2;
                } catch (IOException e) {
                    if (asyncTimeout.exit()) {
                        throw asyncTimeout.access$newTimeoutException(e);
                    }
                    throw e;
                } finally {
                    asyncTimeout.exit();
                }
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout asyncTimeout = AsyncTimeout.this;
                Source source2 = source;
                asyncTimeout.enter();
                try {
                    source2.close();
                    Unit unit = Unit.INSTANCE;
                    if (asyncTimeout.exit()) {
                        throw asyncTimeout.access$newTimeoutException(null);
                    }
                } catch (IOException e) {
                    if (!asyncTimeout.exit()) {
                        throw e;
                    }
                    throw asyncTimeout.access$newTimeoutException(e);
                } finally {
                    asyncTimeout.exit();
                }
            }

            @Override // okio.Source
            public AsyncTimeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + source + ')';
            }
        };
    }

    public final <T> T withTimeout(Function0<? extends T> block) throws IOException {
        Intrinsics.checkNotNullParameter(block, "block");
        enter();
        try {
            try {
                T tInvoke = block.invoke();
                InlineMarker.finallyStart(1);
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                InlineMarker.finallyEnd(1);
                return tInvoke;
            } catch (IOException e) {
                if (exit()) {
                    throw access$newTimeoutException(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            InlineMarker.finallyStart(1);
            exit();
            InlineMarker.finallyEnd(1);
            throw th;
        }
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    protected IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    private static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReentrantLock lock;
            AsyncTimeout asyncTimeoutAwaitTimeout;
            while (true) {
                try {
                    lock = AsyncTimeout.Companion.getLock();
                    lock.lock();
                    try {
                        asyncTimeoutAwaitTimeout = AsyncTimeout.Companion.awaitTimeout();
                    } finally {
                        lock.unlock();
                    }
                } catch (InterruptedException unused) {
                }
                if (asyncTimeoutAwaitTimeout == AsyncTimeout.Companion.getIdleSentinel()) {
                    AsyncTimeout.Companion.setIdleSentinel(null);
                    return;
                }
                Unit unit = Unit.INSTANCE;
                lock.unlock();
                if (asyncTimeoutAwaitTimeout != null) {
                    asyncTimeoutAwaitTimeout.timedOut();
                }
            }
        }
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PriorityQueue getQueue() {
            return AsyncTimeout.queue;
        }

        public final AsyncTimeout getIdleSentinel() {
            return AsyncTimeout.idleSentinel;
        }

        public final void setIdleSentinel(AsyncTimeout asyncTimeout) {
            AsyncTimeout.idleSentinel = asyncTimeout;
        }

        public final ReentrantLock getLock() {
            return AsyncTimeout.lock;
        }

        public final Condition getCondition() {
            return AsyncTimeout.condition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void insertIntoQueue(AsyncTimeout asyncTimeout) {
            if (getIdleSentinel() == null) {
                setIdleSentinel(new AsyncTimeout());
                new Watchdog().start();
            }
            AsyncTimeout.setTimeoutAt$okio$default(asyncTimeout, 0L, 1, null);
            getQueue().add(asyncTimeout);
            if (asyncTimeout.index == 1) {
                getCondition().signal();
            }
        }

        public final AsyncTimeout awaitTimeout() throws InterruptedException {
            AsyncTimeout asyncTimeoutFirst = getQueue().first();
            if (asyncTimeoutFirst == null) {
                long jNanoTime = System.nanoTime();
                getCondition().await(AsyncTimeout.IDLE_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
                if (getQueue().first() != null || System.nanoTime() - jNanoTime < AsyncTimeout.IDLE_TIMEOUT_NANOS) {
                    return null;
                }
                return getIdleSentinel();
            }
            long jRemainingNanos$okio = asyncTimeoutFirst.remainingNanos$okio(System.nanoTime());
            if (jRemainingNanos$okio > 0) {
                getCondition().await(jRemainingNanos$okio, TimeUnit.NANOSECONDS);
                return null;
            }
            getQueue().remove(asyncTimeoutFirst);
            asyncTimeoutFirst.state = 2;
            return asyncTimeoutFirst;
        }
    }

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        Intrinsics.checkNotNullExpressionValue(conditionNewCondition, "newCondition(...)");
        condition = conditionNewCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }
}
