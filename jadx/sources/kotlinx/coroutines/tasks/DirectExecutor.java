package kotlinx.coroutines.tasks;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
final class DirectExecutor implements Executor {
    public static final DirectExecutor INSTANCE = new DirectExecutor();

    private DirectExecutor() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
