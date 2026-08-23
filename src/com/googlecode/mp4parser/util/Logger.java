package com.googlecode.mp4parser.util;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Logger {
    public abstract void logDebug(String str);

    public static Logger getLogger(Class cls) {
        if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
            return new AndroidLogger(cls.getSimpleName());
        }
        return new JuliLogger(cls.getSimpleName());
    }
}
