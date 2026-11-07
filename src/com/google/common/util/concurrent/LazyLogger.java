package com.google.common.util.concurrent;

import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
final class LazyLogger {
    private final Object lock = new Object();
    private volatile Logger logger;
    private final String loggerName;

    public LazyLogger(Class<?> cls) {
        this.loggerName = cls.getName();
    }

    public Logger get() {
        Logger logger = this.logger;
        if (logger != null) {
            return logger;
        }
        synchronized (this.lock) {
            try {
                Logger logger2 = this.logger;
                if (logger2 != null) {
                    return logger2;
                }
                this.logger = Logger.getLogger(this.loggerName);
                return this.logger;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
