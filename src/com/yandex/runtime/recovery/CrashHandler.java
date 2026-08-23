package com.yandex.runtime.recovery;

import java.lang.Thread;

/* JADX INFO: loaded from: classes.dex */
public class CrashHandler {
    private static Thread.UncaughtExceptionHandler defaultHandler;

    /* JADX INFO: Access modifiers changed from: private */
    public static native void crashDetected();

    public static void init() {
        defaultHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.yandex.runtime.recovery.CrashHandler.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                CrashHandler.crashDetected();
                if (CrashHandler.defaultHandler != null) {
                    CrashHandler.defaultHandler.uncaughtException(thread, th);
                }
            }
        });
    }
}
