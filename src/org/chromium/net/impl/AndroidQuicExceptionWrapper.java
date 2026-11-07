package org.chromium.net.impl;

import org.chromium.net.QuicException;

/* JADX INFO: loaded from: classes5.dex */
class AndroidQuicExceptionWrapper extends QuicException {
    private final AndroidNetworkExceptionWrapper mBackend;

    public AndroidQuicExceptionWrapper(android.net.http.QuicException quicException) {
        super(quicException.getMessage(), quicException);
        this.mBackend = new AndroidNetworkExceptionWrapper(quicException, true);
    }
}
