package androidx.camera.core.impl.utils.executor;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CameraXExecutors {
    public static ScheduledExecutorService mainThreadExecutor() {
        return MainThreadExecutor.getInstance();
    }

    public static Executor ioExecutor() {
        return IoExecutor.getInstance();
    }

    public static Executor directExecutor() {
        return DirectExecutor.getInstance();
    }

    public static Executor newSequentialExecutor(Executor executor) {
        return new SequentialExecutor(executor);
    }

    public static ScheduledExecutorService newHandlerExecutor(Handler handler) {
        return new HandlerScheduledExecutorService(handler);
    }
}
