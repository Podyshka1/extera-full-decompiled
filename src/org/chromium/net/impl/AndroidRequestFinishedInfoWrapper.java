package org.chromium.net.impl;

import java.util.Collection;
import org.chromium.net.CronetException;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
class AndroidRequestFinishedInfoWrapper extends RequestFinishedInfoImpl {
    private static final String TAG = RequestFinishedInfoImpl.class.getSimpleName();

    private AndroidRequestFinishedInfoWrapper(String str, Collection<Object> collection, RequestFinishedInfo.Metrics metrics, int i, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        super(str, collection, metrics, i, urlResponseInfo, cronetException);
    }

    public static void reportFinished(AndroidHttpEngineWrapper androidHttpEngineWrapper, String str, Collection<Object> collection, VersionSafeCallbacks$RequestFinishedInfoListener versionSafeCallbacks$RequestFinishedInfoListener, int i, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
        androidHttpEngineWrapper.reportRequestFinished(new AndroidRequestFinishedInfoWrapper(str, collection, CronetMetrics.empty(), i, urlResponseInfo, cronetException), versionSafeCallbacks$RequestFinishedInfoListener);
    }
}
