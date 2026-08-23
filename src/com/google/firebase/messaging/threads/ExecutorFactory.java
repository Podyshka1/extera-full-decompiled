package com.google.firebase.messaging.threads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public interface ExecutorFactory {
    ExecutorService newSingleThreadExecutor(ThreadFactory threadFactory, ThreadPriority threadPriority);
}
