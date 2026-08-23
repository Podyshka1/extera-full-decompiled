package androidx.work.impl.utils.taskexecutor;

import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes.dex */
public interface TaskExecutor {
    void executeOnTaskThread(Runnable runnable);

    Executor getMainThreadExecutor();

    SerialExecutor getSerialTaskExecutor();

    CoroutineDispatcher getTaskCoroutineDispatcher();

    /* JADX INFO: renamed from: androidx.work.impl.utils.taskexecutor.TaskExecutor$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}
