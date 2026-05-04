package androidx.camera.camera2.pipe.core;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class HandlerExecutor implements Executor {
    private final Handler handler;

    public HandlerExecutor(Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handler = handler;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        Intrinsics.checkNotNullParameter(command, "command");
        if (this.handler.post(command)) {
            return;
        }
        throw new RejectedExecutionException(this.handler + " is shutting down");
    }
}
