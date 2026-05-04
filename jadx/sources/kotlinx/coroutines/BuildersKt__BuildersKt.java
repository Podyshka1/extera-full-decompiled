package kotlinx.coroutines;

import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class BuildersKt__BuildersKt {
    public static /* synthetic */ Object runBlocking$default(CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return BuildersKt.runBlocking(coroutineContext, function2);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object runBlocking(CoroutineContext coroutineContext, Function2 function2) {
        EventLoop eventLoopCurrentOrNull$kotlinx_coroutines_core;
        CoroutineContext coroutineContextNewCoroutineContext;
        Thread threadCurrentThread = Thread.currentThread();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
        if (continuationInterceptor == null) {
            eventLoopCurrentOrNull$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
            coroutineContextNewCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext.plus(eventLoopCurrentOrNull$kotlinx_coroutines_core));
        } else {
            EventLoop eventLoop = continuationInterceptor instanceof EventLoop ? (EventLoop) continuationInterceptor : null;
            if (eventLoop == null) {
                eventLoopCurrentOrNull$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.currentOrNull$kotlinx_coroutines_core();
                coroutineContextNewCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext);
            } else {
                EventLoop eventLoop2 = eventLoop.shouldBeProcessedFromContext() ? eventLoop : null;
                if (eventLoop2 != null) {
                    eventLoopCurrentOrNull$kotlinx_coroutines_core = eventLoop2;
                }
                coroutineContextNewCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext);
            }
        }
        BlockingCoroutine blockingCoroutine = new BlockingCoroutine(coroutineContextNewCoroutineContext, threadCurrentThread, eventLoopCurrentOrNull$kotlinx_coroutines_core);
        blockingCoroutine.start(CoroutineStart.DEFAULT, blockingCoroutine, function2);
        return blockingCoroutine.joinBlocking();
    }
}
