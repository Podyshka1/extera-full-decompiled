package com.google.android.gms.tasks;

/* JADX INFO: loaded from: classes.dex */
public abstract class CancellationToken {
    public abstract boolean isCancellationRequested();

    public abstract CancellationToken onCanceledRequested(OnTokenCanceledListener onTokenCanceledListener);
}
