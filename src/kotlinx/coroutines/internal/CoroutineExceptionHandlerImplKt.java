package kotlinx.coroutines.internal;

import java.util.Collection;
import java.util.ServiceLoader;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CoroutineExceptionHandlerImplKt {
    private static final Collection platformExceptionHandlers = SequencesKt.toList(SequencesKt.asSequence(ServiceLoader.load(CoroutineExceptionHandler.class, CoroutineExceptionHandler.class.getClassLoader()).iterator()));

    public static final Collection getPlatformExceptionHandlers() {
        return platformExceptionHandlers;
    }

    public static final void propagateExceptionFinalResort(Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }
}
