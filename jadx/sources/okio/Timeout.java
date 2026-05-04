package okio;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class Timeout {
    public static final Companion Companion = new Companion(null);
    public static final Timeout NONE = new Timeout() { // from class: okio.Timeout$Companion$NONE$1
        @Override // okio.Timeout
        public Timeout deadlineNanoTime(long j) {
            return this;
        }

        @Override // okio.Timeout
        public void throwIfReached() {
        }

        @Override // okio.Timeout
        public Timeout timeout(long j, TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            return this;
        }
    };
    private volatile Object cancelMark;
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public Timeout timeout(long j, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j < 0) {
            throw new IllegalArgumentException(("timeout < 0: " + j).toString());
        }
        this.timeoutNanos = unit.toNanos(j);
        return this;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public long deadlineNanoTime() {
        if (!this.hasDeadline) {
            throw new IllegalStateException("No deadline");
        }
        return this.deadlineNanoTime;
    }

    public Timeout deadlineNanoTime(long j) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j;
        return this;
    }

    public final Timeout deadline(long j, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j <= 0) {
            throw new IllegalArgumentException(("duration <= 0: " + j).toString());
        }
        return deadlineNanoTime(System.nanoTime() + unit.toNanos(j));
    }

    public Timeout clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public Timeout clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public void throwIfReached() throws InterruptedIOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public void cancel() {
        this.cancelMark = new Object();
    }

    public void awaitSignal(Condition condition) throws InterruptedIOException {
        Intrinsics.checkNotNullParameter(condition, "condition");
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            if (!zHasDeadline && jTimeoutNanos == 0) {
                condition.await();
                return;
            }
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - System.nanoTime());
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - System.nanoTime();
            }
            if (jTimeoutNanos <= 0) {
                throw new InterruptedIOException("timeout");
            }
            Object obj = this.cancelMark;
            if (condition.awaitNanos(jTimeoutNanos) <= 0 && this.cancelMark == obj) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public void waitUntilNotified(Object monitor) throws InterruptedIOException {
        Intrinsics.checkNotNullParameter(monitor, "monitor");
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            if (!zHasDeadline && jTimeoutNanos == 0) {
                monitor.wait();
                return;
            }
            long jNanoTime = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime;
            }
            if (jTimeoutNanos <= 0) {
                throw new InterruptedIOException("timeout");
            }
            Object obj = this.cancelMark;
            long j = jTimeoutNanos / 1000000;
            Long.signum(j);
            monitor.wait(j, (int) (jTimeoutNanos - (1000000 * j)));
            if (System.nanoTime() - jNanoTime >= jTimeoutNanos && this.cancelMark == obj) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public final <T> T intersectWith(Timeout other, Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(block, "block");
        long jTimeoutNanos = timeoutNanos();
        long jMinTimeout = Companion.minTimeout(other.timeoutNanos(), timeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout(jMinTimeout, timeUnit);
        if (hasDeadline()) {
            long jDeadlineNanoTime = deadlineNanoTime();
            if (other.hasDeadline()) {
                deadlineNanoTime(Math.min(deadlineNanoTime(), other.deadlineNanoTime()));
            }
            try {
                T tInvoke = block.invoke();
                InlineMarker.finallyStart(1);
                timeout(jTimeoutNanos, timeUnit);
                if (other.hasDeadline()) {
                    deadlineNanoTime(jDeadlineNanoTime);
                }
                InlineMarker.finallyEnd(1);
                return tInvoke;
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (other.hasDeadline()) {
                    deadlineNanoTime(jDeadlineNanoTime);
                }
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        if (other.hasDeadline()) {
            deadlineNanoTime(other.deadlineNanoTime());
        }
        try {
            T tInvoke2 = block.invoke();
            InlineMarker.finallyStart(1);
            timeout(jTimeoutNanos, timeUnit);
            if (other.hasDeadline()) {
                clearDeadline();
            }
            InlineMarker.finallyEnd(1);
            return tInvoke2;
        } catch (Throwable th2) {
            InlineMarker.finallyStart(1);
            timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (other.hasDeadline()) {
                clearDeadline();
            }
            InlineMarker.finallyEnd(1);
            throw th2;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long minTimeout(long j, long j2) {
            return (j != 0 && (j2 == 0 || j < j2)) ? j : j2;
        }

        private Companion() {
        }
    }
}
