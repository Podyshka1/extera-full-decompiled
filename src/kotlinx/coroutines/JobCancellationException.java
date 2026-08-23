package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class JobCancellationException extends CancellationException {
    private final transient Job _job;

    public JobCancellationException(String str, Throwable th, Job job) {
        super(str);
        this._job = job;
        if (th != null) {
            initCause(th);
        }
    }

    public final Job getJob$kotlinx_coroutines_core() {
        Job job = this._job;
        return job == null ? NonCancellable.INSTANCE : job;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + getJob$kotlinx_coroutines_core();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JobCancellationException)) {
            return false;
        }
        JobCancellationException jobCancellationException = (JobCancellationException) obj;
        return Intrinsics.areEqual(jobCancellationException.getMessage(), getMessage()) && Intrinsics.areEqual(jobCancellationException.getJob$kotlinx_coroutines_core(), getJob$kotlinx_coroutines_core()) && Intrinsics.areEqual(jobCancellationException.getCause(), getCause());
    }

    public int hashCode() {
        String message = getMessage();
        Intrinsics.checkNotNull(message);
        int iHashCode = message.hashCode() * 31;
        Job job$kotlinx_coroutines_core = getJob$kotlinx_coroutines_core();
        int iHashCode2 = (iHashCode + (job$kotlinx_coroutines_core != null ? job$kotlinx_coroutines_core.hashCode() : 0)) * 31;
        Throwable cause = getCause();
        return iHashCode2 + (cause != null ? cause.hashCode() : 0);
    }
}
