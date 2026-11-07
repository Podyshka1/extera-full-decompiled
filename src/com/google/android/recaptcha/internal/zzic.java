package com.google.android.recaptcha.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzic {
    public static final Deferred zza(Task task) {
        final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        task.addOnCompleteListener(zzia.zza, new OnCompleteListener() { // from class: com.google.android.recaptcha.internal.zzib
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void onComplete(Task task2) {
                CompletableDeferred completableDeferred = completableDeferredCompletableDeferred$default;
                Exception exception = task2.getException();
                if (exception != null) {
                    completableDeferred.completeExceptionally(exception);
                } else if (task2.isCanceled()) {
                    Job.cancel$default(completableDeferred, null, 1, null);
                } else {
                    completableDeferred.complete(task2.getResult());
                }
            }
        });
        return completableDeferredCompletableDeferred$default;
    }
}
