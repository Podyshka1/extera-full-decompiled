package org.chromium.net.impl;

import android.net.http.UrlRequest;
import java.nio.ByteBuffer;
import java.util.Collection;
import org.chromium.net.CronetException;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.RequestFinishedInfo;

/* JADX INFO: loaded from: classes5.dex */
class AndroidUrlRequestWrapper extends ExperimentalUrlRequest {
    private final Collection<Object> mAnnotations;
    private final UrlRequest mBackend;
    private final AndroidHttpEngineWrapper mEngine;
    private final String mInitialUrl;
    private final VersionSafeCallbacks$RequestFinishedInfoListener mRequestFinishedInfoListener;

    public AndroidUrlRequestWrapper(UrlRequest urlRequest, AndroidHttpEngineWrapper androidHttpEngineWrapper, String str, Collection<Object> collection, RequestFinishedInfo.Listener listener) {
        this.mBackend = urlRequest;
        this.mEngine = androidHttpEngineWrapper;
        this.mInitialUrl = str;
        this.mAnnotations = collection;
        this.mRequestFinishedInfoListener = listener == null ? null : new VersionSafeCallbacks$RequestFinishedInfoListener(listener);
    }

    @Override // org.chromium.net.UrlRequest
    public void start() {
        this.mBackend.start();
    }

    @Override // org.chromium.net.UrlRequest
    public void followRedirect() {
        this.mBackend.followRedirect();
    }

    @Override // org.chromium.net.UrlRequest
    public void read(ByteBuffer byteBuffer) {
        this.mBackend.read(byteBuffer);
    }

    @Override // org.chromium.net.UrlRequest
    public void cancel() {
        this.mBackend.cancel();
    }

    public static AndroidUrlRequestWrapper createAndAddToCallback(UrlRequest urlRequest, AndroidUrlRequestCallbackWrapper androidUrlRequestCallbackWrapper, AndroidHttpEngineWrapper androidHttpEngineWrapper, String str, Collection<Object> collection, RequestFinishedInfo.Listener listener) {
        AndroidUrlRequestWrapper androidUrlRequestWrapper = new AndroidUrlRequestWrapper(urlRequest, androidHttpEngineWrapper, str, collection, listener);
        androidUrlRequestCallbackWrapper.setRequest(androidUrlRequestWrapper);
        return androidUrlRequestWrapper;
    }

    public void maybeReportMetrics(int i, AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapper, CronetException cronetException) {
        AndroidRequestFinishedInfoWrapper.reportFinished(this.mEngine, this.mInitialUrl, this.mAnnotations, this.mRequestFinishedInfoListener, i, androidUrlResponseInfoWrapper, cronetException);
    }
}
