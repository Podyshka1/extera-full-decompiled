package com.google.android.gms.tasks;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
final class zzo implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzp zzb;

    public zzo(zzp zzpVar, Task task) {
        this.zza = task;
        Objects.requireNonNull(zzpVar);
        this.zzb = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task taskThen = this.zzb.zzc().then(this.zza.getResult());
            zzp zzpVar = this.zzb;
            if (taskThen == null) {
                zzpVar.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.zza;
            taskThen.addOnSuccessListener(executor, zzpVar);
            taskThen.addOnFailureListener(executor, zzpVar);
            taskThen.addOnCanceledListener(executor, zzpVar);
        } catch (RuntimeExecutionException e) {
            boolean z = e.getCause() instanceof Exception;
            zzp zzpVar2 = this.zzb;
            if (z) {
                zzpVar2.onFailure((Exception) e.getCause());
            } else {
                zzpVar2.onFailure(e);
            }
        } catch (CancellationException unused) {
            this.zzb.onCanceled();
        } catch (Exception e2) {
            this.zzb.onFailure(e2);
        }
    }
}
