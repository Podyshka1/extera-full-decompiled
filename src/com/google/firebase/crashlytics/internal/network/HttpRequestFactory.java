package com.google.firebase.crashlytics.internal.network;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpRequestFactory {
    public HttpGetRequest buildHttpGetRequest(String str, Map<String, String> map) {
        return new HttpGetRequest(str, map);
    }
}
