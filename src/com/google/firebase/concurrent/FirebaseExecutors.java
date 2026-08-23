package com.google.firebase.concurrent;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class FirebaseExecutors {
    public static Executor newSequentialExecutor(Executor executor) {
        return new SequentialExecutor(executor);
    }

    public static Executor directExecutor() {
        return DirectExecutor.INSTANCE;
    }

    /* JADX INFO: loaded from: classes5.dex */
    private enum DirectExecutor implements Executor {
        INSTANCE;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }
}
