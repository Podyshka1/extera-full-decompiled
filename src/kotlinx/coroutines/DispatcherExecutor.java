package kotlinx.coroutines;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0014\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/DispatcherExecutor;", "Ljava/util/concurrent/Executor;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;)V", "execute", _UrlKt.FRAGMENT_ENCODE_SET, "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "kotlinx-coroutines-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
final class DispatcherExecutor implements Executor {

    @JvmField
    public final CoroutineDispatcher dispatcher;

    public DispatcherExecutor(CoroutineDispatcher coroutineDispatcher) {
        this.dispatcher = coroutineDispatcher;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable block) {
        CoroutineDispatcher coroutineDispatcher = this.dispatcher;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if (DispatchedContinuationKt.safeIsDispatchNeeded(coroutineDispatcher, emptyCoroutineContext)) {
            DispatchedContinuationKt.safeDispatch(this.dispatcher, emptyCoroutineContext, block);
        } else {
            block.run();
        }
    }

    public String toString() {
        return this.dispatcher.getName();
    }
}
