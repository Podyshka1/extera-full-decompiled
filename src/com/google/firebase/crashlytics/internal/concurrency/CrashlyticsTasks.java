package com.google.firebase.crashlytics.internal.concurrency;

import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CrashlyticsTasks {
    private static final Executor DIRECT = new CredentialManager$$ExternalSyntheticLambda0();

    public static <T> Task<T> race(Task<T> task, Task<T> task2) {
        final CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationTokenSource.getToken());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Continuation<T, Task<TContinuationResult>> continuation = new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.CrashlyticsTasks$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task3) {
                return CrashlyticsTasks.$r8$lambda$OOY_G5nBeAuFGnnaztKKy0tKXb0(taskCompletionSource, atomicBoolean, cancellationTokenSource, task3);
            }
        };
        Executor executor = DIRECT;
        task.continueWithTask(executor, continuation);
        task2.continueWithTask(executor, continuation);
        return taskCompletionSource.getTask();
    }

    public static /* synthetic */ Task $r8$lambda$OOY_G5nBeAuFGnnaztKKy0tKXb0(TaskCompletionSource taskCompletionSource, AtomicBoolean atomicBoolean, CancellationTokenSource cancellationTokenSource, Task task) {
        if (task.isSuccessful()) {
            taskCompletionSource.trySetResult(task.getResult());
        } else if (task.getException() != null) {
            taskCompletionSource.trySetException(task.getException());
        } else if (atomicBoolean.getAndSet(true)) {
            cancellationTokenSource.cancel();
        }
        return Tasks.forResult(null);
    }
}
