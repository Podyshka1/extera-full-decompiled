package org.chromium.net.impl;

import android.net.http.HttpException;
import org.chromium.net.CronetException;

/* JADX INFO: loaded from: classes5.dex */
class AndroidHttpExceptionWrapper extends CronetException {
    public AndroidHttpExceptionWrapper(HttpException httpException) {
        super(httpException.getMessage(), httpException);
    }
}
