package org.chromium.net.impl;

import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
class AndroidUrlResponseInfoWrapper extends UrlResponseInfo {
    private final android.net.http.UrlResponseInfo mBackend;
    private final String mProxyServerCompat;

    private AndroidUrlResponseInfoWrapper(android.net.http.UrlResponseInfo urlResponseInfo, String str) {
        this.mBackend = urlResponseInfo;
        this.mProxyServerCompat = str;
    }

    public static AndroidUrlResponseInfoWrapper createForUrlRequest(android.net.http.UrlResponseInfo urlResponseInfo) {
        if (isResponseInfoNull(urlResponseInfo)) {
            return null;
        }
        return new AndroidUrlResponseInfoWrapper(urlResponseInfo, ":0");
    }

    private static boolean isResponseInfoNull(android.net.http.UrlResponseInfo urlResponseInfo) {
        if (urlResponseInfo == null) {
            return true;
        }
        try {
            urlResponseInfo.getUrl();
            return false;
        } catch (NullPointerException unused) {
            return true;
        }
    }

    @Override // org.chromium.net.UrlResponseInfo
    public String getUrl() {
        return this.mBackend.getUrl();
    }

    @Override // org.chromium.net.UrlResponseInfo
    public int getHttpStatusCode() {
        return this.mBackend.getHttpStatusCode();
    }
}
