package org.chromium.net.impl;

import java.nio.ByteBuffer;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class VersionSafeCallbacks$UrlRequestCallback extends UrlRequest.Callback {
    private final UrlRequest.Callback mWrappedCallback;

    public VersionSafeCallbacks$UrlRequestCallback(UrlRequest.Callback callback) {
        this.mWrappedCallback = callback;
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
        this.mWrappedCallback.onRedirectReceived(urlRequest, urlResponseInfo, str);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.mWrappedCallback.onResponseStarted(urlRequest, urlResponseInfo);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        this.mWrappedCallback.onReadCompleted(urlRequest, urlResponseInfo, byteBuffer);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.mWrappedCallback.onSucceeded(urlRequest, urlResponseInfo);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        this.mWrappedCallback.onFailed(urlRequest, urlResponseInfo, cronetException);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        this.mWrappedCallback.onCanceled(urlRequest, urlResponseInfo);
    }
}
