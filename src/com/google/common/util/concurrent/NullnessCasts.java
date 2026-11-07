package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes5.dex */
abstract class NullnessCasts {
    public static <T> T uncheckedCastNullableTToT(T t) {
        return t;
    }

    public static <T> T uncheckedNull() {
        return null;
    }
}
