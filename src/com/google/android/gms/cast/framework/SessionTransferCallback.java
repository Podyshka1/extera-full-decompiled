package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.SessionState;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SessionTransferCallback {
    public abstract void onTransferFailed(int i, int i2);

    public abstract void onTransferred(int i, SessionState sessionState);

    public abstract void onTransferring(int i);
}
