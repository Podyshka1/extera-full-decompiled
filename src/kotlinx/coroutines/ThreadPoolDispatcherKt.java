package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"kotlinx/coroutines/ThreadPoolDispatcherKt__MultithreadedDispatchers_commonKt", "kotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt"}, m754k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class ThreadPoolDispatcherKt {
    public static final ExecutorCoroutineDispatcher newFixedThreadPoolContext(int i, String str) {
        return ThreadPoolDispatcherKt__ThreadPoolDispatcherKt.newFixedThreadPoolContext(i, str);
    }

    public static final ExecutorCoroutineDispatcher newSingleThreadContext(String str) {
        return ThreadPoolDispatcherKt__MultithreadedDispatchers_commonKt.newSingleThreadContext(str);
    }
}
