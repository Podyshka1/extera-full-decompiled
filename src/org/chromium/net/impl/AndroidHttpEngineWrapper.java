package org.chromium.net.impl;

import android.net.Network;
import android.net.http.HttpEngine;
import android.net.http.UrlRequest;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
class AndroidHttpEngineWrapper extends CronetEngineBase {
    private final HttpEngine mBackend;
    private final Map<RequestFinishedInfo.Listener, VersionSafeCallbacks$RequestFinishedInfoListener> mFinishedListenerMap = Collections.synchronizedMap(new HashMap());

    @Override // org.chromium.net.CronetEngine
    public /* bridge */ /* synthetic */ UrlRequest.Builder newUrlRequestBuilder(String str, UrlRequest.Callback callback, Executor executor) {
        return super.newUrlRequestBuilder(str, callback, executor);
    }

    public AndroidHttpEngineWrapper(HttpEngine httpEngine) {
        this.mBackend = httpEngine;
    }

    public void reportRequestFinished(final RequestFinishedInfo requestFinishedInfo, VersionSafeCallbacks$RequestFinishedInfoListener versionSafeCallbacks$RequestFinishedInfoListener) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mFinishedListenerMap) {
            arrayList.addAll(this.mFinishedListenerMap.values());
        }
        if (versionSafeCallbacks$RequestFinishedInfoListener != null) {
            arrayList.add(versionSafeCallbacks$RequestFinishedInfoListener);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            final VersionSafeCallbacks$RequestFinishedInfoListener versionSafeCallbacks$RequestFinishedInfoListener2 = (VersionSafeCallbacks$RequestFinishedInfoListener) obj;
            try {
                versionSafeCallbacks$RequestFinishedInfoListener2.getExecutor().execute(new Runnable() { // from class: org.chromium.net.impl.AndroidHttpEngineWrapper$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        AndroidHttpEngineWrapper.m5393$r8$lambda$hyJ0rO7Vu1T5Vvo3JjtbhYpM4(versionSafeCallbacks$RequestFinishedInfoListener2, requestFinishedInfo);
                    }
                });
            } catch (RejectedExecutionException e) {
                Log.e("HttpEngineWrapper", "Exception posting task to executor", e);
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$hyJ0rO7V-u1T5-Vvo3JjtbhYpM4, reason: not valid java name */
    public static /* synthetic */ void m5393$r8$lambda$hyJ0rO7Vu1T5Vvo3JjtbhYpM4(VersionSafeCallbacks$RequestFinishedInfoListener versionSafeCallbacks$RequestFinishedInfoListener, RequestFinishedInfo requestFinishedInfo) {
        try {
            versionSafeCallbacks$RequestFinishedInfoListener.onRequestFinished(requestFinishedInfo);
        } catch (Exception e) {
            Log.e("HttpEngineWrapper", "Exception thrown from observation task", e);
        }
    }

    @Override // org.chromium.net.impl.CronetEngineBase
    public ExperimentalUrlRequest createRequest(String str, UrlRequest.Callback callback, Executor executor, int i, Collection<Object> collection, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, RequestFinishedInfo.Listener listener, int i4, long j, String str2, ArrayList<Map.Entry<String, String>> arrayList, UploadDataProvider uploadDataProvider, Executor executor2, byte[] bArr, ByteBuffer byteBuffer, String str3) {
        AndroidUrlRequestCallbackWrapper androidUrlRequestCallbackWrapper = new AndroidUrlRequestCallbackWrapper(callback);
        UrlRequest.Builder builderNewUrlRequestBuilder = this.mBackend.newUrlRequestBuilder(str, executor, androidUrlRequestCallbackWrapper);
        builderNewUrlRequestBuilder.setPriority(i);
        if (z) {
            builderNewUrlRequestBuilder.setCacheDisabled(z);
        }
        if (z3) {
            builderNewUrlRequestBuilder.setDirectExecutorAllowed(z3);
        }
        if (z4) {
            builderNewUrlRequestBuilder.setTrafficStatsTag(i2);
        }
        if (z5) {
            builderNewUrlRequestBuilder.setTrafficStatsTag(i3);
        }
        builderNewUrlRequestBuilder.bindToNetwork(getNetwork(j));
        builderNewUrlRequestBuilder.setHttpMethod(str2);
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            Map.Entry<String, String> entry = arrayList.get(i5);
            i5++;
            Map.Entry<String, String> entry2 = entry;
            builderNewUrlRequestBuilder.addHeader(entry2.getKey(), entry2.getValue());
        }
        if (uploadDataProvider != null) {
            builderNewUrlRequestBuilder.setUploadDataProvider(new AndroidUploadDataProviderWrapper(uploadDataProvider), executor2);
        }
        return AndroidUrlRequestWrapper.createAndAddToCallback(builderNewUrlRequestBuilder.build(), androidUrlRequestCallbackWrapper, this, str, collection, listener);
    }

    private Network getNetwork(long j) {
        if (j == -1) {
            return null;
        }
        return Network.fromNetworkHandle(j);
    }
}
