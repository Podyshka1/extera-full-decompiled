package org.chromium.net.impl;

import org.chromium.net.NetworkException;

/* JADX INFO: loaded from: classes5.dex */
class AndroidNetworkExceptionWrapper extends NetworkException {
    private final android.net.http.NetworkException mBackend;

    public AndroidNetworkExceptionWrapper(android.net.http.NetworkException networkException) {
        this(networkException, false);
    }

    public AndroidNetworkExceptionWrapper(android.net.http.NetworkException networkException, boolean z) {
        super(networkException.getMessage(), networkException);
        this.mBackend = networkException;
        if (!z && C2588xc8ada294.m990m(networkException)) {
            throw new IllegalArgumentException("Translating QuicException as NetworkException results in loss of information. Make sure you handle QuicException first. See the stacktrace for where the translation is being performed, and the cause for the exception being translated.", networkException);
        }
    }
}
