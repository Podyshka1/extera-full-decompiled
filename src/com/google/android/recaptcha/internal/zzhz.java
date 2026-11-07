package com.google.android.recaptcha.internal;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzhz {
    public static final Task zza(final Deferred deferred) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(new CancellationTokenSource().getToken());
        deferred.invokeOnCompletion(new Function1() { // from class: com.google.android.recaptcha.internal.zzhy
            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Object invoke(Object obj) {
                Throwable th = (Throwable) obj;
                boolean z = th instanceof CancellationException;
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                if (z) {
                    taskCompletionSource2.setException((Exception) th);
                } else {
                    Deferred deferred2 = deferred;
                    Throwable completionExceptionOrNull = deferred2.getCompletionExceptionOrNull();
                    if (completionExceptionOrNull == null) {
                        taskCompletionSource2.setResult(deferred2.getCompleted());
                    } else {
                        Exception runtimeExecutionException = completionExceptionOrNull instanceof Exception ? (Exception) completionExceptionOrNull : null;
                        if (runtimeExecutionException == null) {
                            runtimeExecutionException = new RuntimeExecutionException(completionExceptionOrNull);
                        }
                        taskCompletionSource2.setException(runtimeExecutionException);
                    }
                }
                return Unit.INSTANCE;
            }
        });
        return taskCompletionSource.getTask();
    }
}
