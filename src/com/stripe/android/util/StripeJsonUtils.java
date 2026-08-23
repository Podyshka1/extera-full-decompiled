package com.stripe.android.util;

import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class StripeJsonUtils {
    public static String getString(JSONObject jSONObject, String str) {
        return nullIfNullOrEmpty(jSONObject.getString(str));
    }

    public static String optString(JSONObject jSONObject, String str) {
        return nullIfNullOrEmpty(jSONObject.optString(str));
    }

    public static String nullIfNullOrEmpty(String str) {
        if ("null".equals(str) || _UrlKt.FRAGMENT_ENCODE_SET.equals(str)) {
            return null;
        }
        return str;
    }
}
