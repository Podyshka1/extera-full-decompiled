package androidx.work;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class WorkerExceptionInfo {
    private final Throwable throwable;
    private final String workerClassName;
    private final WorkerParameters workerParameters;

    public WorkerExceptionInfo(String workerClassName, WorkerParameters workerParameters, Throwable throwable) {
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        this.workerClassName = workerClassName;
        this.workerParameters = workerParameters;
        this.throwable = throwable;
    }
}
