package com.google.common.util.concurrent;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Callables {
    public static /* synthetic */ Object $r8$lambda$igoGSsmydPxoPHWhodWU_i0bGEk(Object obj) {
        return obj;
    }

    public static <T> Callable<T> returning(final T t) {
        return new Callable() { // from class: com.google.common.util.concurrent.Callables$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Callables.$r8$lambda$igoGSsmydPxoPHWhodWU_i0bGEk(t);
            }
        };
    }
}
