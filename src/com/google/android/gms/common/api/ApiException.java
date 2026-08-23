package com.google.android.gms.common.api;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public class ApiException extends Exception {

    @Deprecated
    protected final Status mStatus;

    public ApiException(Status status) {
        super(status.getStatusCode() + ": " + (status.getStatusMessage() != null ? status.getStatusMessage() : _UrlKt.FRAGMENT_ENCODE_SET));
        this.mStatus = status;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public int getStatusCode() {
        return this.mStatus.getStatusCode();
    }

    @Deprecated
    public String getStatusMessage() {
        return this.mStatus.getStatusMessage();
    }
}
