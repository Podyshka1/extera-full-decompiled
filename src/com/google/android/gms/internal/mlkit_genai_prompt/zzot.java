package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzot extends zzov {
    public static ListenableFuture zza(Object obj) {
        return obj == null ? zzox.zza : new zzox(obj);
    }

    public static ListenableFuture zzb() {
        return zzox.zza;
    }

    public static ListenableFuture zzd(Callable callable, Executor executor) {
        zzpm zzpmVar = new zzpm(callable);
        executor.execute(zzpmVar);
        return zzpmVar;
    }

    public static ListenableFuture zze(ListenableFuture listenableFuture, Class cls, zzoj zzojVar, Executor executor) {
        int i = zzob.$r8$clinit;
        zzoa zzoaVar = new zzoa(listenableFuture, cls, zzojVar);
        listenableFuture.addListener(zzoaVar, zzpi.zzc(executor, zzoaVar));
        return zzoaVar;
    }

    public static ListenableFuture zzf(ListenableFuture listenableFuture, zzoj zzojVar, Executor executor) {
        int i = zzoi.$r8$clinit;
        zzog zzogVar = new zzog(listenableFuture, zzojVar);
        listenableFuture.addListener(zzogVar, zzpi.zzc(executor, zzogVar));
        return zzogVar;
    }

    public static ListenableFuture zzg(ListenableFuture listenableFuture, zzks zzksVar, Executor executor) {
        int i = zzoi.$r8$clinit;
        zzoh zzohVar = new zzoh(listenableFuture, zzksVar);
        listenableFuture.addListener(zzohVar, zzpi.zzc(executor, zzohVar));
        return zzohVar;
    }

    public static void zzh(ListenableFuture listenableFuture, zzor zzorVar, Executor executor) {
        listenableFuture.addListener(new zzos(listenableFuture, zzorVar), executor);
    }

    public static Object zzi(Future future) {
        Object obj;
        if (!future.isDone()) {
            Segment$$ExternalSyntheticBUOutline1.m973m(zzlb.zzd("Future was expected to be done: %s", future));
            return null;
        }
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static ListenableFuture zzc(Throwable th) {
        th.getClass();
        return new zzow(th);
    }
}
