package com.google.android.gms.internal.play_billing;

import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
final class zzfd extends TimeoutException {
    /* synthetic */ zzfd(String str, zzfe zzfeVar) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
