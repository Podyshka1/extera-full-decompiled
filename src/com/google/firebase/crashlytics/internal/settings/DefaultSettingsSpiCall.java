package com.google.firebase.crashlytics.internal.settings;

import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.network.HttpGetRequest;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.network.HttpResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class DefaultSettingsSpiCall implements SettingsSpiCall {
    private final Logger logger;
    private final HttpRequestFactory requestFactory;
    private final String url;

    boolean requestWasSuccessful(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    public DefaultSettingsSpiCall(String str, HttpRequestFactory httpRequestFactory) {
        this(str, httpRequestFactory, Logger.getLogger());
    }

    DefaultSettingsSpiCall(String str, HttpRequestFactory httpRequestFactory, Logger logger) {
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.logger = logger;
        this.requestFactory = httpRequestFactory;
        this.url = str;
    }

    protected HttpGetRequest createHttpGetRequest(Map map) {
        return this.requestFactory.buildHttpGetRequest(this.url, map).header("User-Agent", "Crashlytics Android SDK/" + CrashlyticsCore.getVersion()).header("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    @Override // com.google.firebase.crashlytics.internal.settings.SettingsSpiCall
    public JSONObject invoke(SettingsRequest settingsRequest, boolean z) {
        CrashlyticsWorkers.checkBlockingThread();
        if (!z) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        try {
            Map queryParamsFor = getQueryParamsFor(settingsRequest);
            HttpGetRequest httpGetRequestApplyHeadersTo = applyHeadersTo(createHttpGetRequest(queryParamsFor), settingsRequest);
            this.logger.m501d("Requesting settings from " + this.url);
            this.logger.m507v("Settings query params were: " + queryParamsFor);
            return handleResponse(httpGetRequestApplyHeadersTo.execute());
        } catch (IOException e) {
            this.logger.m504e("Settings request failed.", e);
            return null;
        }
    }

    JSONObject handleResponse(HttpResponse httpResponse) {
        int iCode = httpResponse.code();
        this.logger.m507v("Settings response code was: " + iCode);
        if (requestWasSuccessful(iCode)) {
            return getJsonObjectFrom(httpResponse.body());
        }
        this.logger.m503e("Settings request failed; (status: " + iCode + ") from " + this.url);
        return null;
    }

    private JSONObject getJsonObjectFrom(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            this.logger.m510w("Failed to parse settings JSON from " + this.url, e);
            this.logger.m509w("Settings response " + str);
            return null;
        }
    }

    private Map getQueryParamsFor(SettingsRequest settingsRequest) {
        HashMap map = new HashMap();
        map.put("build_version", settingsRequest.buildVersion);
        map.put("display_version", settingsRequest.displayVersion);
        map.put("source", Integer.toString(settingsRequest.source));
        String str = settingsRequest.instanceId;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    private HttpGetRequest applyHeadersTo(HttpGetRequest httpGetRequest, SettingsRequest settingsRequest) {
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-GOOGLE-APP-ID", settingsRequest.googleAppId);
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-API-CLIENT-VERSION", CrashlyticsCore.getVersion());
        applyNonNullHeader(httpGetRequest, "Accept", "application/json");
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-DEVICE-MODEL", settingsRequest.deviceModel);
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-OS-BUILD-VERSION", settingsRequest.osBuildVersion);
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-OS-DISPLAY-VERSION", settingsRequest.osDisplayVersion);
        applyNonNullHeader(httpGetRequest, "X-CRASHLYTICS-INSTALLATION-ID", settingsRequest.installIdProvider.getInstallIds().getCrashlyticsInstallId());
        return httpGetRequest;
    }

    private void applyNonNullHeader(HttpGetRequest httpGetRequest, String str, String str2) {
        if (str2 != null) {
            httpGetRequest.header(str, str2);
        }
    }
}
