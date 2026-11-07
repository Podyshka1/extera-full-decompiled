package org.telegram.tgnet;

import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public interface ResultCallback<T> {
    void onComplete(T t);

    default void onError(Throwable th) {
    }

    default void onError(TLRPC.TL_error tL_error) {
    }
}
