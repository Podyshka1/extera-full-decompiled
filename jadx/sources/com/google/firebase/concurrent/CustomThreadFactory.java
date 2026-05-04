package com.google.firebase.concurrent;

import android.os.Process;
import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
class CustomThreadFactory implements ThreadFactory {
    private static final ThreadFactory DEFAULT = Executors.defaultThreadFactory();
    private final String namePrefix;
    private final StrictMode.ThreadPolicy policy;
    private final int priority;
    private final AtomicLong threadCount = new AtomicLong();

    CustomThreadFactory(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        this.namePrefix = str;
        this.priority = i;
        this.policy = threadPolicy;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(final Runnable runnable) {
        Thread threadNewThread = DEFAULT.newThread(new Runnable() { // from class: com.google.firebase.concurrent.CustomThreadFactory$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CustomThreadFactory.$r8$lambda$XB8AY3Hcio74byWuTzgVEC3Hiek(this.f$0, runnable);
            }
        });
        threadNewThread.setName(String.format(Locale.ROOT, "%s Thread #%d", this.namePrefix, Long.valueOf(this.threadCount.getAndIncrement())));
        return threadNewThread;
    }

    public static /* synthetic */ void $r8$lambda$XB8AY3Hcio74byWuTzgVEC3Hiek(CustomThreadFactory customThreadFactory, Runnable runnable) {
        Process.setThreadPriority(customThreadFactory.priority);
        StrictMode.ThreadPolicy threadPolicy = customThreadFactory.policy;
        if (threadPolicy != null) {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        runnable.run();
    }
}
