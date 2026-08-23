package androidx.work;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class WorkerFactory {
    public abstract ListenableWorker createWorker(Context context, String str, WorkerParameters workerParameters);

    private static final Class createWorkerWithDefaultFallback$getWorkerClass(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str).asSubclass(ListenableWorker.class);
            Intrinsics.checkNotNull(clsAsSubclass);
            return clsAsSubclass;
        } catch (Throwable th) {
            Logger.get().error(WorkerFactoryKt.TAG, "Invalid class: " + str, th);
            throw th;
        }
    }

    private static final ListenableWorker createWorkerWithDefaultFallback$fallbackToReflection(Context context, String str, WorkerParameters workerParameters) {
        try {
            Object objNewInstance = createWorkerWithDefaultFallback$getWorkerClass(str).getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            Intrinsics.checkNotNull(objNewInstance);
            return (ListenableWorker) objNewInstance;
        } catch (Throwable th) {
            Logger.get().error(WorkerFactoryKt.TAG, "Could not instantiate " + str, th);
            throw th;
        }
    }

    public final ListenableWorker createWorkerWithDefaultFallback(Context appContext, String workerClassName, WorkerParameters workerParameters) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        ListenableWorker listenableWorkerCreateWorker = createWorker(appContext, workerClassName, workerParameters);
        if (listenableWorkerCreateWorker == null) {
            listenableWorkerCreateWorker = createWorkerWithDefaultFallback$fallbackToReflection(appContext, workerClassName, workerParameters);
        }
        if (!listenableWorkerCreateWorker.isUsed()) {
            return listenableWorkerCreateWorker;
        }
        throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + workerClassName + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
    }
}
