package org.chromium.net.impl;

import android.net.http.HttpException;
import android.net.http.UrlRequest$Callback;
import android.net.http.UrlResponseInfo;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.impl.CronetExceptionTranslationUtils;

/* JADX INFO: loaded from: classes5.dex */
class AndroidUrlRequestCallbackWrapper implements UrlRequest$Callback {
    private final UrlRequest.Callback mBackend;
    private AndroidUrlRequestWrapper mWrappedRequest;

    public AndroidUrlRequestCallbackWrapper(UrlRequest.Callback callback) {
        Objects.requireNonNull(callback, "Callback is required.");
        this.mBackend = callback;
    }

    public void onRedirectReceived(android.net.http.UrlRequest urlRequest, final UrlResponseInfo urlResponseInfo, final String str) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda2
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onRedirectReceived$0(urlResponseInfo, str);
            }
        }, Exception.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$onRedirectReceived$0(UrlResponseInfo urlResponseInfo, String str) {
        this.mBackend.onRedirectReceived(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo), str);
        return null;
    }

    public void onResponseStarted(android.net.http.UrlRequest urlRequest, final UrlResponseInfo urlResponseInfo) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda0
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onResponseStarted$1(urlResponseInfo);
            }
        }, Exception.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$onResponseStarted$1(UrlResponseInfo urlResponseInfo) {
        this.mBackend.onResponseStarted(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo));
        return null;
    }

    public void onReadCompleted(android.net.http.UrlRequest urlRequest, final UrlResponseInfo urlResponseInfo, final ByteBuffer byteBuffer) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda1
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onReadCompleted$2(urlResponseInfo, byteBuffer);
            }
        }, Exception.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$onReadCompleted$2(UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
        this.mBackend.onReadCompleted(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo), byteBuffer);
        return null;
    }

    public void onSucceeded(android.net.http.UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo);
        try {
            this.mBackend.onSucceeded(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(0, androidUrlResponseInfoWrapperCreateForUrlRequest, null);
        }
    }

    public void onFailed(android.net.http.UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, HttpException httpException) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo);
        CronetException cronetExceptionTranslateCheckedAndroidCronetException = CronetExceptionTranslationUtils.translateCheckedAndroidCronetException(httpException);
        try {
            this.mBackend.onFailed(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest, cronetExceptionTranslateCheckedAndroidCronetException);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(1, androidUrlResponseInfoWrapperCreateForUrlRequest, cronetExceptionTranslateCheckedAndroidCronetException);
        }
    }

    public void onCanceled(android.net.http.UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo);
        try {
            this.mBackend.onCanceled(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(2, androidUrlResponseInfoWrapperCreateForUrlRequest, null);
        }
    }

    public void setRequest(AndroidUrlRequestWrapper androidUrlRequestWrapper) {
        this.mWrappedRequest = androidUrlRequestWrapper;
    }
}
