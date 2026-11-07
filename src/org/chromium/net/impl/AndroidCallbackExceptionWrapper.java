package org.chromium.net.impl;

import org.chromium.net.CallbackException;

/* JADX INFO: loaded from: classes5.dex */
class AndroidCallbackExceptionWrapper extends CallbackException {
    public AndroidCallbackExceptionWrapper(android.net.http.CallbackException callbackException) {
        super(callbackException.getMessage(), callbackException.getCause());
    }
}
