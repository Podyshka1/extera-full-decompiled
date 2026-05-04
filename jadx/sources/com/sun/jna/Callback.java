package com.sun.jna;

import java.util.Arrays;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes5.dex */
public interface Callback {
    public static final List<String> FORBIDDEN_NAMES = DesugarCollections.unmodifiableList(Arrays.asList("hashCode", "equals", "toString"));
    public static final String METHOD_NAME = "callback";

    public interface UncaughtExceptionHandler {
        void uncaughtException(Callback callback, Throwable th);
    }
}
